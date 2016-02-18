#--
# DO NOT MODIFY!!!!
# This file is automatically generated by rex 1.0.5
# from lexical definition file "language/tokenizer.rex".
#++

require 'racc/parser'
# This has largely been adapted from:
# https://git-wip-us.apache.org/repos/asf?p=thrift.git;a=blob;f=compiler/cpp/src/thriftl.ll;hb=HEAD

module Rift
module Generated
class Tokenizer < Racc::Parser
  require 'strscan'

  class ScanError < StandardError ; end

  attr_reader   :lineno
  attr_reader   :filename
  attr_accessor :state

  def scan_setup(str)
    @ss = StringScanner.new(str)
    @lineno =  1
    @state  = nil
  end

  def action
    yield
  end

  def scan_str(str)
    scan_setup(str)
    do_parse
  end
  alias :scan :scan_str

  def load_file( filename )
    @filename = filename
    open(filename, "r") do |f|
      scan_setup(f.read)
    end
  end

  def scan_file( filename )
    load_file(filename)
    do_parse
  end


  def next_token
    return if @ss.eos?
    
    # skips empty actions
    until token = _next_token or @ss.eos?; end
    token
  end

  def _next_token
    text = @ss.peek(1)
    @lineno  +=  1  if text == "\n"
    token = case @state
    when nil
      case
      when (text = @ss.scan(/[\s]+/))
         action { next_token }

      when (text = @ss.scan(/\/\*\**\*\//))
         action { next_token }

      when (text = @ss.scan(/\/\*[^*]\/*([^*\/]|[^*]\/|\*[^\/])*\**\*\//))
         action { next_token }

      when (text = @ss.scan(/\/\*\*([^*\/]|[^*]\/|\*[^\/])*\**\*\//))
         action { register_doc_text_candidate(text) ; next_token }

      when (text = @ss.scan(/\/\/[^\n]*/))
         action { next_token }

      when (text = @ss.scan(/\#[^\n]*/))
         action { next_token }

      when (text = @ss.scan(/[:;\,\{\}\(\)\=<>\[\]]/))
         action { [text, text] }

      when (text = @ss.scan(/\*/))
         action { [text, text] }

      when (text = @ss.scan(/&/))
         action { [:REFERENCE, text] }

      when (text = @ss.scan(/true|false/))
         action { [:CONSTANT_INT, text == "true" ? 1 : 0] }

      when (text = @ss.scan(/\bnamespace\b/))
         action { [:NAMESPACE, text] }

      when (text = @ss.scan(/\bcpp_include\b/))
         action { [:CPP_INCLUDE, text] }

      when (text = @ss.scan(/\bcpp_type\b/))
         action { [:CPP_TYPE, text] }

      when (text = @ss.scan(/\bjava_package\b/))
         action { [:JAVA_PACKAGE, text] }

      when (text = @ss.scan(/\bcocoa_prefix\b/))
         action { [:COCOA_PREFIX, text] }

      when (text = @ss.scan(/\bpy_module\b/))
         action { [:PY_MODULE, text] }

      when (text = @ss.scan(/\bperl_package\b/))
         action { [:PERL_PACKAGE, text] }

      when (text = @ss.scan(/\bsmalltalk_category\b/))
         action { [:SMALLTALK_CATEGORY, text] }

      when (text = @ss.scan(/\bsmalltalk_prefix\b/))
         action { [:SMALLTALK_PREFIX, text] }

      when (text = @ss.scan(/\bxsd_all\b/))
         action { [:XSD_ALL, text] }

      when (text = @ss.scan(/\bxsd_optional\b/))
         action { [:XSD_OPTIONAL, text] }

      when (text = @ss.scan(/\bxsd_nillable\b/))
         action { [:XSD_NILLABLE, text] }

      when (text = @ss.scan(/\bxsd_attrs\b/))
         action { [:XSD_ATTRS, text] }

      when (text = @ss.scan(/\binclude\b/))
         action { [:INCLUDE, text] }

      when (text = @ss.scan(/\bvoid\b/))
         action { [:VOID, text] }

      when (text = @ss.scan(/\bbool\b/))
         action { [:BOOL, text] }

      when (text = @ss.scan(/\bbyte\b/))
         action { [:I8, text] }

      when (text = @ss.scan(/\bi8\b/))
         action { [:I8, text] }

      when (text = @ss.scan(/\bi16\b/))
         action { [:I16, text] }

      when (text = @ss.scan(/\bi32\b/))
         action { [:I32, text] }

      when (text = @ss.scan(/\bi64\b/))
         action { [:I64, text] }

      when (text = @ss.scan(/\bdouble\b/))
         action { [:DOUBLE, text] }

      when (text = @ss.scan(/\bstring\b/))
         action { [:STRING, text] }

      when (text = @ss.scan(/\bbinary\b/))
         action { [:BINARY, text] }

      when (text = @ss.scan(/\bmap\b/))
         action { [:MAP, text] }

      when (text = @ss.scan(/\blist\b/))
         action { [:LIST, text] }

      when (text = @ss.scan(/\bset\b/))
         action { [:SET, text] }

      when (text = @ss.scan(/\boneway\b/))
         action { [:ONEWAY, text] }

      when (text = @ss.scan(/\btypedef\b/))
         action { [:TYPEDEF, text] }

      when (text = @ss.scan(/\bstruct\b/))
         action { [:STRUCT, text] }

      when (text = @ss.scan(/\bunion\b/))
         action { [:UNION, text] }

      when (text = @ss.scan(/\bexception\b/))
         action { [:EXCEPTION, text] }

      when (text = @ss.scan(/\bextends\b/))
         action { [:EXTENDS, text] }

      when (text = @ss.scan(/\bthrows\b/))
         action { [:THROWS, text] }

      when (text = @ss.scan(/\bservice\b/))
         action { [:SERVICE, text] }

      when (text = @ss.scan(/\benum\b/))
         action { [:ENUM, text] }

      when (text = @ss.scan(/\bconst\b/))
         action { [:CONST, text] }

      when (text = @ss.scan(/\brequired\b/))
         action { [:REQUIRED, text] }

      when (text = @ss.scan(/\boptional\b/))
         action { [:OPTIONAL, text] }

      when (text = @ss.scan(/\bslist\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bsenum\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\basync\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bcpp_namespace\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bphp_namespace\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bpy_module\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bperl_package\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bruby_namespace\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bsmalltalk_category\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bsmalltalk_prefix\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bjava_package\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bcocoa_prefix\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bxsd_namespace\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bcsharp_namespace\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bdelphi_namespace\b/))
         action { deprecated_construct(text) }

      when (text = @ss.scan(/\bBEGIN\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bEND\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\b__CLASS__\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\b__DIR__\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\b__FILE__\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\b__FUNCTION__\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\b__LINE__\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\b__METHOD__\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\b__NAMESPACE__\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\babstract\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\balias\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\band\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bargs\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bas\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bassert\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bbegin\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bbreak\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bcase\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bcatch\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bclass\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bclone\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bcontinue\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bdeclare\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bdef\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bdefault\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bdel\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bdelete\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bdo\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bdynamic\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\belif\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\belse\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\belseif\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\belsif\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bend\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\benddeclare\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bendfor\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bendforeach\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bendif\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bendswitch\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bendwhile\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bensure\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bexcept\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bexec\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bfinally\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bfloat\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bfor\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bforeach\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bfrom\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bfunction\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bglobal\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bgoto\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bif\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bimplements\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bimport\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bin\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\binline\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\binstanceof\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\binterface\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bis\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\blambda\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bmodule\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bnative\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bnew\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bnext\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bnil\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bnot\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bor\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bpackage\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bpass\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bpublic\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bprint\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bprivate\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bprotected\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bpublic\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\braise\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bredo\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\brescue\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bretry\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bregister\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\breturn\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bself\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bsizeof\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bstatic\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bsuper\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bswitch\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bsynchronized\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bthen\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bthis\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bthrow\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\btransient\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\btry\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bundef\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bunion\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bunless\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bunsigned\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\buntil\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\buse\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bvar\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bvirtual\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bvolatile\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bwhen\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bwhile\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bwith\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\bxor\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/\byield\b/))
         action { reserved_keyword(text) }

      when (text = @ss.scan(/[+-]?0x[0-9A-Fa-f]+/))
         action { [:CONSTANT_INT, text.to_i(16)] }

      when (text = @ss.scan(/[a-zA-Z_](\.[a-zA-Z_0-9]|[a-zA-Z_0-9])*/))
         action { [:IDENTIFIER, text] }

      when (text = @ss.scan(/[+-]?([0-9]+\.([0-9]+)?|(\.[0-9]+))([eE][+-]?[0-9]+)?/))
         action { [:CONSTANT_DOUBLE, text.to_f] }

      when (text = @ss.scan(/[+-]?[0-9]+/))
         action { [:CONSTANT_INT, text.to_i] }

      when (text = @ss.scan(/("[^"\\]*(?:\\.[^"\\]*)*"|'[^'\\]*(?:\\.[^'\\]*)*')/))
         action { [:LITERAL, interpret_string_literal(text)] }

      when (text = @ss.scan(/./))
         action { unexpected_token(text) }

      else
        text = @ss.string[@ss.pos .. -1]
        raise  ScanError, "can not match: '" + text + "'"
      end  # if

    else
      raise  ScanError, "undefined state: '" + state.to_s + "'"
    end  # case state
    token
  end  # def _next_token

  def reserved_keyword(keyword)
    raise "Keyword #{keyword} is reserved"
  end
  def deprecated_construct(construct)
    raise "'#{construct}' has been deprecated"
  end
  def unexpected_token(value)
    raise Rift::ParseError, "Unexpected token in input: '#{value}'"
  end
  def interpret_string_literal(value)
    mark = value[0]
    value[1..-2].gsub(/\\[rnt\\]/, {
      '\r' => "\r", '\n' => "\n",
      '\t' => "\t", '\\\\' => '\\'
    }).gsub("\\#{mark}", mark)
  end
  def register_doc_text_candidate(text)
    @doc_text = text
  end
end # class
  end
  end
