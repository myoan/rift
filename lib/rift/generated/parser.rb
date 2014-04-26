#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.11
# from Racc grammer file "".
#

require 'racc/parser.rb'


require "rift/generated/tokenizer"

module Rift
  module Generated
    class Parser < Rift::Generated::Tokenizer

module_eval(<<'...end parser.racc/module_eval...', 'parser.racc', 409)

def clear_doc_text_candidate
  @doc_text = nil
end

def gen_field_identifier_value()
  @identifier_value -= 1
  @identifier_value
end

def reset_field_identifier_value()
  @identifier_value = 0
end
...end parser.racc/module_eval...
##### State transition tables begin ###

racc_action_table = [
    35,   131,    90,    19,    22,    23,   118,   118,   118,   150,
    24,   119,   119,   119,    35,    25,    26,    63,    78,   118,
    -3,    28,    29,    -3,   119,    -3,   118,   118,    35,    88,
    79,   119,   119,    39,    40,    41,    42,    43,    44,    45,
    46,    51,    35,    30,    31,    52,    53,    39,    40,    41,
    42,    43,    44,    45,    46,    51,    35,   139,   140,    52,
    53,    39,    40,    41,    42,    43,    44,    45,    46,    51,
    35,    80,    81,    52,    53,    39,    40,    41,    42,    43,
    44,    45,    46,    51,    83,    35,    84,    52,    53,    39,
    40,    41,    42,    43,    44,    45,    46,    51,    86,    35,
    87,    52,    53,    39,    40,    41,    42,    43,    44,    45,
    46,    51,    75,    73,    72,    52,    53,   154,    39,    40,
    41,    42,    43,    44,    45,    46,    51,    70,    94,    69,
    52,    53,    39,    40,    41,    42,    43,    44,    45,    46,
    51,   107,   118,   101,    52,    53,   100,   119,   118,   111,
   112,   105,   101,   119,    98,   100,    99,   104,   133,   101,
   105,   113,   100,    98,   114,    99,   104,   105,   101,    63,
    98,   100,    99,   104,   116,   101,   105,    66,   100,    98,
   122,    99,   104,   105,   135,    63,    98,    10,    99,   104,
    11,   125,    12,   126,   129,    66,    66,    63,    63,    63,
    61,   141,    63,   144,    60,   146,   147,    59,    58,    63,
    57,    56,    63,    54,   157,   158,    33,    32,   162,   163,
   164,    -1,   168,   170,   171,   174,   175,    63,    63,   178,
     6,     3,   183,   184 ]

racc_action_check = [
    22,   116,    77,     7,     7,     7,   134,   132,   129,   136,
     7,   134,   132,   129,    78,     7,     7,   116,    65,   155,
     2,     7,     7,     2,   155,     2,   156,   176,    80,    77,
    66,   156,   176,    22,    22,    22,    22,    22,    22,    22,
    22,    22,   138,    10,    10,    22,    22,    78,    78,    78,
    78,    78,    78,    78,    78,    78,    81,   124,   124,    78,
    78,    80,    80,    80,    80,    80,    80,    80,    80,    80,
    24,    67,    68,    80,    80,   138,   138,   138,   138,   138,
   138,   138,   138,   138,    70,   143,    71,   138,   138,    81,
    81,    81,    81,    81,    81,    81,    81,    81,    74,   112,
    75,    81,    81,    24,    24,    24,    24,    24,    24,    24,
    24,    24,    58,    57,    56,    24,    24,   143,   143,   143,
   143,   143,   143,   143,   143,   143,   143,    55,    82,    54,
   143,   143,   112,   112,   112,   112,   112,   112,   112,   112,
   112,    85,   177,   120,   112,   112,   120,   177,    97,    90,
    91,   120,   162,    97,   120,   162,   120,   120,   120,    83,
   162,    92,    83,   162,    93,   162,   162,    83,   150,    94,
    83,   150,    83,    83,    96,   121,   150,    53,   121,   150,
   106,   150,   150,   121,   121,   107,   121,     5,   121,   121,
     5,   109,     5,   110,   111,    52,    51,    47,    38,   122,
    34,   125,   126,   128,    31,   130,   131,    30,    29,    61,
    28,    27,   147,    23,   151,   152,    12,    11,   157,   158,
   161,     4,   165,   167,   169,   170,   171,   172,   173,   174,
     3,     1,   179,   182 ]

racc_action_pointer = [
   nil,   231,    18,   230,   221,   185,   nil,    -5,   nil,   nil,
    40,   211,   210,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    -3,   210,    67,   nil,   nil,   208,   207,   205,
   204,   201,   nil,   nil,   197,   nil,   nil,   nil,   169,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   168,   nil,   nil,
   nil,   146,   145,   127,   118,   124,    92,   102,    84,   nil,
   nil,   180,   nil,   nil,   nil,   -27,    24,    26,    27,   nil,
    71,    75,   nil,   nil,    87,    97,   nil,    -1,    11,   nil,
    25,    53,   116,   156,   nil,   129,   nil,   nil,   nil,   nil,
   136,   104,   114,   117,   140,   nil,   171,   102,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   168,   156,   nil,   177,
   181,   188,    96,   nil,   nil,   nil,   -12,   nil,   nil,   nil,
   140,   172,   170,   nil,    24,   182,   173,   nil,   172,   -38,
   158,   192,   -39,   nil,   -40,   nil,   -10,   nil,    39,   nil,
   nil,   nil,   nil,    82,   nil,   nil,   nil,   183,   nil,   nil,
   165,   211,   212,   nil,   nil,   -27,   -20,   205,   190,   nil,
   nil,   197,   149,   nil,   nil,   198,   nil,   193,   nil,   199,
   193,   215,   198,   199,   200,   nil,   -19,    96,   nil,   220,
   nil,   nil,   203,   nil,   nil ]

racc_action_default = [
    -5,  -103,   -12,  -103,    -2,  -103,   185,  -103,    -4,    -6,
  -103,  -103,  -103,   -11,   -13,   -14,   -15,   -16,   -17,   -18,
   -19,   -20,  -103,  -103,  -103,   -40,   -41,  -103,  -103,  -103,
  -103,  -103,    -9,   -10,  -103,   -74,   -75,   -76,   -96,   -78,
   -79,   -80,   -81,   -82,   -83,   -84,   -85,   -96,   -87,   -88,
   -89,   -94,   -94,   -94,  -103,  -103,   -44,  -103,   -54,    -7,
    -8,   -96,   -77,   -98,   -86,  -103,  -103,  -103,  -103,   -24,
  -103,  -103,   -43,   -63,  -103,  -103,   -21,  -103,  -103,   -93,
  -103,  -103,    -2,  -103,   -63,    -2,   -56,   -53,   -95,   -97,
  -103,  -103,  -103,  -103,   -96,   -23,  -103,  -102,   -28,   -29,
   -30,   -31,   -32,   -33,   -36,   -39,    -2,   -96,   -62,   -66,
    -2,  -103,  -103,   -91,   -92,   -22,   -96,   -27,  -100,  -101,
  -103,  -103,   -96,   -51,   -69,  -103,   -96,   -55,   -59,  -102,
  -103,  -103,  -102,   -34,  -102,   -37,  -103,   -42,  -103,   -67,
   -68,   -65,   -52,  -103,   -58,   -99,   -90,   -96,   -26,   -35,
  -103,  -103,  -103,   -72,   -73,  -102,  -102,   -71,  -103,   -25,
   -38,   -46,  -103,   -63,   -45,   -48,   -70,    -2,   -47,   -50,
   -61,  -103,   -96,   -96,  -103,   -63,  -102,  -102,   -63,    -2,
   -64,   -57,    -2,   -49,   -60 ]

racc_goto_table = [
    62,    34,     7,    55,     1,    85,   117,    14,    97,    64,
    65,    67,    68,    15,    16,    17,   106,    18,    20,    21,
     9,     8,    82,    76,    95,     5,    13,   120,   121,    27,
    71,     4,   165,   169,   172,    74,   110,   127,   145,   143,
   152,   148,   173,   149,   124,   134,   136,   138,   161,     2,
    77,    89,   nil,   nil,   nil,   nil,   115,    91,   nil,    92,
    93,   nil,   nil,   nil,   159,   160,   nil,   nil,   nil,   123,
   nil,   nil,   nil,   nil,   nil,   156,   nil,   nil,   132,   nil,
    96,   nil,   nil,   nil,   137,   180,   181,   166,   142,   nil,
   nil,   130,   nil,   nil,   nil,   167,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   179,   128,   155,
   182,   nil,   nil,   nil,   nil,   nil,   nil,   151,   nil,   nil,
   nil,   nil,   153,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   176,   177 ]

racc_goto_check = [
    17,    16,     4,    16,     1,    28,    20,     9,    21,    17,
    49,    49,    49,    10,    11,    12,    28,    13,    14,    15,
     7,     6,    18,    17,    19,     5,     8,    24,    25,    26,
    27,     3,    29,    30,    31,    32,    33,    34,    20,    35,
    36,    20,    37,    20,    39,    21,    21,    40,    41,     2,
    50,    51,   nil,   nil,   nil,   nil,    17,    16,   nil,    16,
    16,   nil,   nil,   nil,    20,    20,   nil,   nil,   nil,    17,
   nil,   nil,   nil,   nil,   nil,    21,   nil,   nil,    17,   nil,
     4,   nil,   nil,   nil,    17,    20,    20,    21,    17,   nil,
   nil,    16,   nil,   nil,   nil,    28,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    28,     4,    17,
    28,   nil,   nil,   nil,   nil,   nil,   nil,    16,   nil,   nil,
   nil,   nil,    16,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    17,    17 ]

racc_goto_pointer = [
   nil,     4,    49,    29,    -2,    23,    16,    15,    19,     0,
     6,     7,     8,    10,    11,    12,   -21,   -38,   -47,   -58,
   -91,   -75,   nil,   nil,   -77,   -77,    22,   -26,   -68,  -129,
  -132,  -135,   -23,   -50,   -73,   -89,  -103,  -128,   nil,   -65,
   -77,  -109,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   -41,
   -13,   -26 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   109,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   102,   103,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   108,   nil,
   nil,   nil,    36,    37,    38,    47,    48,    49,    50,   nil,
   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  2, 53, :_reduce_none,
  0, 56, :_reduce_2,
  0, 57, :_reduce_3,
  3, 54, :_reduce_4,
  0, 54, :_reduce_none,
  1, 58, :_reduce_none,
  3, 58, :_reduce_7,
  3, 58, :_reduce_8,
  2, 58, :_reduce_9,
  2, 59, :_reduce_10,
  3, 55, :_reduce_11,
  0, 55, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  4, 64, :_reduce_21,
  6, 65, :_reduce_22,
  2, 70, :_reduce_23,
  0, 70, :_reduce_24,
  6, 71, :_reduce_25,
  4, 71, :_reduce_26,
  6, 61, :_reduce_27,
  1, 73, :_reduce_28,
  1, 73, :_reduce_29,
  1, 73, :_reduce_30,
  1, 73, :_reduce_31,
  1, 73, :_reduce_none,
  1, 73, :_reduce_none,
  3, 74, :_reduce_34,
  3, 76, :_reduce_35,
  0, 76, :_reduce_36,
  3, 75, :_reduce_37,
  5, 77, :_reduce_38,
  0, 77, :_reduce_39,
  1, 78, :_reduce_40,
  1, 78, :_reduce_41,
  7, 66, :_reduce_42,
  1, 79, :_reduce_43,
  0, 79, :_reduce_44,
  1, 81, :_reduce_45,
  0, 81, :_reduce_46,
  1, 82, :_reduce_47,
  0, 82, :_reduce_48,
  4, 83, :_reduce_49,
  0, 83, :_reduce_50,
  6, 67, :_reduce_51,
  7, 63, :_reduce_52,
  2, 84, :_reduce_53,
  0, 84, :_reduce_54,
  2, 85, :_reduce_55,
  0, 85, :_reduce_56,
  10, 86, :_reduce_57,
  1, 87, :_reduce_58,
  0, 87, :_reduce_59,
  4, 89, :_reduce_60,
  0, 89, :_reduce_61,
  2, 80, :_reduce_62,
  0, 80, :_reduce_63,
  11, 90, :_reduce_64,
  2, 91, :_reduce_65,
  0, 91, :_reduce_66,
  1, 92, :_reduce_67,
  1, 92, :_reduce_68,
  0, 92, :_reduce_69,
  2, 93, :_reduce_70,
  0, 93, :_reduce_71,
  1, 88, :_reduce_none,
  1, 88, :_reduce_none,
  1, 68, :_reduce_74,
  1, 68, :_reduce_75,
  1, 68, :_reduce_76,
  2, 94, :_reduce_77,
  1, 96, :_reduce_78,
  1, 96, :_reduce_79,
  1, 96, :_reduce_80,
  1, 96, :_reduce_81,
  1, 96, :_reduce_82,
  1, 96, :_reduce_83,
  1, 96, :_reduce_84,
  1, 96, :_reduce_85,
  2, 95, :_reduce_86,
  1, 97, :_reduce_none,
  1, 97, :_reduce_none,
  1, 97, :_reduce_none,
  7, 98, :_reduce_90,
  5, 99, :_reduce_91,
  5, 100, :_reduce_92,
  2, 101, :_reduce_93,
  0, 101, :_reduce_94,
  3, 69, :_reduce_95,
  0, 69, :_reduce_96,
  2, 102, :_reduce_97,
  0, 102, :_reduce_98,
  4, 103, :_reduce_99,
  1, 72, :_reduce_100,
  1, 72, :_reduce_101,
  0, 72, :_reduce_102 ]

racc_reduce_n = 103

racc_shift_n = 185

racc_token_table = {
  false => 0,
  :error => 1,
  :NAMESPACE => 2,
  :IDENTIFIER => 3,
  "*" => 4,
  :CPP_INCLUDE => 5,
  :LITERAL => 6,
  :INCLUDE => 7,
  :senum => 8,
  :TYPEDEF => 9,
  :ENUM => 10,
  "{" => 11,
  "}" => 12,
  "=" => 13,
  :CONSTANT_INT => 14,
  :CONST => 15,
  :CONSTANT_DOUBLE => 16,
  "[" => 17,
  "]" => 18,
  ":" => 19,
  :STRUCT => 20,
  :UNION => 21,
  :XSD_ALL => 22,
  :XSD_OPTIONAL => 23,
  :XSD_NILLABLE => 24,
  :XSD_ATTRIBUTES => 25,
  :EXCEPTION => 26,
  :SERVICE => 27,
  :EXTENDS => 28,
  "(" => 29,
  ")" => 30,
  :ONEWAY => 31,
  :THROWS => 32,
  :REQUIRED => 33,
  :OPTIONAL => 34,
  :VOID => 35,
  :STRING => 36,
  :BINARY => 37,
  :BOOL => 38,
  :BYTE => 39,
  :I16 => 40,
  :I32 => 41,
  :I64 => 42,
  :DOUBLE => 43,
  :MAP => 44,
  "<" => 45,
  "," => 46,
  ">" => 47,
  :SET => 48,
  :LIST => 49,
  :CPP_TYPE => 50,
  ";" => 51 }

racc_nt_base = 52

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "NAMESPACE",
  "IDENTIFIER",
  "\"*\"",
  "CPP_INCLUDE",
  "LITERAL",
  "INCLUDE",
  "senum",
  "TYPEDEF",
  "ENUM",
  "\"{\"",
  "\"}\"",
  "\"=\"",
  "CONSTANT_INT",
  "CONST",
  "CONSTANT_DOUBLE",
  "\"[\"",
  "\"]\"",
  "\":\"",
  "STRUCT",
  "UNION",
  "XSD_ALL",
  "XSD_OPTIONAL",
  "XSD_NILLABLE",
  "XSD_ATTRIBUTES",
  "EXCEPTION",
  "SERVICE",
  "EXTENDS",
  "\"(\"",
  "\")\"",
  "ONEWAY",
  "THROWS",
  "REQUIRED",
  "OPTIONAL",
  "VOID",
  "STRING",
  "BINARY",
  "BOOL",
  "BYTE",
  "I16",
  "I32",
  "I64",
  "DOUBLE",
  "MAP",
  "\"<\"",
  "\",\"",
  "\">\"",
  "SET",
  "LIST",
  "CPP_TYPE",
  "\";\"",
  "$start",
  "program",
  "header_list",
  "definition_list",
  "capture_doc_text",
  "destroy_doc_text",
  "header",
  "include",
  "definition",
  "const",
  "type_definition",
  "service",
  "typedef",
  "enum",
  "struct",
  "exception",
  "field_type",
  "type_annotations",
  "enum_def_list",
  "enum_def",
  "comma_or_semicolon_optional",
  "const_value",
  "const_list",
  "const_map",
  "const_list_contents",
  "const_map_contents",
  "struct_head",
  "xsd_all",
  "field_list",
  "xsd_optional",
  "xsd_nillable",
  "xsd_attributes",
  "extends",
  "function_list",
  "function",
  "oneway",
  "function_type",
  "throws",
  "field",
  "field_identifier",
  "field_requiredness",
  "field_value",
  "base_type",
  "container_type",
  "simple_base_type",
  "simple_container_type",
  "map_type",
  "set_type",
  "list_type",
  "cpp_type",
  "type_annotations_list",
  "type_annotation" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'parser.racc', 13)
  def _reduce_2(val, _values, result)
          unless @doc_text.nil?
        result = @doc_text
        clear_doc_text_candidate
      end
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 21)
  def _reduce_3(val, _values, result)
          clear_doc_text_candidate
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 26)
  def _reduce_4(val, _values, result)
          @nodes.push(val[2])
    
    result
  end
.,.,

# reduce 5 omitted

# reduce 6 omitted

module_eval(<<'.,.,', 'parser.racc', 33)
  def _reduce_7(val, _values, result)
          result = Rift::Nodes::Namespace.new(val[1], val[2])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 36)
  def _reduce_8(val, _values, result)
          result = Rift::Nodes::Namespace.new("*", val[2])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 39)
  def _reduce_9(val, _values, result)
          result = Rift::Nodes::CppInclude.new(val[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 44)
  def _reduce_10(val, _values, result)
          result = Rift::Nodes::Include.new(val[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 49)
  def _reduce_11(val, _values, result)
          @nodes.push(val[2])
    
    result
  end
.,.,

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

# reduce 20 omitted

module_eval(<<'.,.,', 'parser.racc', 61)
  def _reduce_21(val, _values, result)
          result = Rift::Nodes::Typedef.new(val[1], val[2])
      result.annotations = val[3]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 67)
  def _reduce_22(val, _values, result)
          result = val[3]
      result.name = val[1]
      result.annotations = val[5]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 74)
  def _reduce_23(val, _values, result)
          result = val[0]
      result.values.push(val[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 78)
  def _reduce_24(val, _values, result)
          result = Rift::Nodes::Enum.new
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 83)
  def _reduce_25(val, _values, result)
          result = Rift::Nodes::EnumValue.new(val[1], val[3])
      result.annotations = val[4]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 87)
  def _reduce_26(val, _values, result)
          result = Rift::Nodes::EnumValue.new(val[1])
      result.annotations = val[2]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 93)
  def _reduce_27(val, _values, result)
          result = Rift::Nodes::Const.new(val[1], val[2], val[4])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 98)
  def _reduce_28(val, _values, result)
          result = Rift::Nodes::ConstValue.new(val[0])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 101)
  def _reduce_29(val, _values, result)
          result = Rift::Nodes::ConstValue.new(val[0])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 104)
  def _reduce_30(val, _values, result)
          result = Rift::Nodes::ConstValue.new(val[0])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 107)
  def _reduce_31(val, _values, result)
          result = Rift::Nodes::ConstValue.new(val[0], true)
    
    result
  end
.,.,

# reduce 32 omitted

# reduce 33 omitted

module_eval(<<'.,.,', 'parser.racc', 114)
  def _reduce_34(val, _values, result)
          result = Rift::Nodes::ConstValue.new(val[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 119)
  def _reduce_35(val, _values, result)
          result = val[0]
      result.push(val[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 123)
  def _reduce_36(val, _values, result)
          result = []
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 128)
  def _reduce_37(val, _values, result)
          result = Rift::Nodes::ConstValue.new(val[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 133)
  def _reduce_38(val, _values, result)
          result = val[0]
      result.store(val[1], val[3])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 137)
  def _reduce_39(val, _values, result)
          result = {}
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 142)
  def _reduce_40(val, _values, result)
          result = Rift::Nodes::Struct::TYPE_STRUCT
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 145)
  def _reduce_41(val, _values, result)
          result = Rift::Nodes::Struct::TYPE_UNION
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 150)
  def _reduce_42(val, _values, result)
          result = Rift::Nodes::Struct.new
      result.type = val[0]
      result.name = val[1]
      result.xsd_all = val[2]
      result.members = val[4]
      result.annotations = val[6]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 160)
  def _reduce_43(val, _values, result)
          result = true
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 163)
  def _reduce_44(val, _values, result)
          result = false
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 168)
  def _reduce_45(val, _values, result)
          result = true
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 171)
  def _reduce_46(val, _values, result)
          result = false
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 176)
  def _reduce_47(val, _values, result)
          result = true
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 179)
  def _reduce_48(val, _values, result)
          result = false
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 184)
  def _reduce_49(val, _values, result)
          result = val[2]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 187)
  def _reduce_50(val, _values, result)
          result = nil
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 192)
  def _reduce_51(val, _values, result)
          result = Rift::Nodes::Exception.new(val[1], val[3])
      result.annotations = val[5]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 198)
  def _reduce_52(val, _values, result)
          result = Rift::Nodes::Service.new(val[1], val[2], val[4])
      result.annotations = val[6]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 204)
  def _reduce_53(val, _values, result)
          result = val[1]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 207)
  def _reduce_54(val, _values, result)
          result = nil
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 212)
  def _reduce_55(val, _values, result)
          result = val[0]
      result.push(val[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 216)
  def _reduce_56(val, _values, result)
          result = []
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 222)
  def _reduce_57(val, _values, result)
            result = Rift::Nodes::Function.new(val[2], val[3], val[5], val[1])
        result.exceptions = val[7]
        result.annotations = val[8]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 229)
  def _reduce_58(val, _values, result)
          result = true
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 232)
  def _reduce_59(val, _values, result)
          result = false
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 237)
  def _reduce_60(val, _values, result)
          result = val[2]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 240)
  def _reduce_61(val, _values, result)
          result = []
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 245)
  def _reduce_62(val, _values, result)
          result = val[0]
      result.push(val[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 249)
  def _reduce_63(val, _values, result)
          reset_field_identifier_value
      result = []
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 256)
  def _reduce_64(val, _values, result)
            result = Rift::Nodes::Field.new(val[3], val[4], val[1], val[5])
        result.requiredness = val[2]
        result.xsd_optional = val[6]
        result.xsd_nillable = val[7]
        result.xsd_attributes = val[8]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 265)
  def _reduce_65(val, _values, result)
          result = Rift::Nodes::FieldIdentifier.new(val[0])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 268)
  def _reduce_66(val, _values, result)
          value = gen_field_identifier_value
      result = Rift::Nodes::FieldIdentifier.new(value, true)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 274)
  def _reduce_67(val, _values, result)
          result = Rift::Nodes::Field::REQUIREDNESS_REQUIRED
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 277)
  def _reduce_68(val, _values, result)
          result = Rift::Nodes::Field::REQUIREDNESS_OPTIONAL
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 280)
  def _reduce_69(val, _values, result)
          result = Rift::Nodes::Field::REQUIREDNESS_OPT_IN_REQ_OUT
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 285)
  def _reduce_70(val, _values, result)
          result = val[1]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 288)
  def _reduce_71(val, _values, result)
          result = nil
    
    result
  end
.,.,

# reduce 72 omitted

# reduce 73 omitted

module_eval(<<'.,.,', 'parser.racc', 296)
  def _reduce_74(val, _values, result)
          type = Rift::Nodes::FieldType::TYPE_USER_DEFINED
      result = Rift::Nodes::FieldType.new(type, val[0])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 300)
  def _reduce_75(val, _values, result)
          type = Rift::Nodes::FieldType::TYPE_PRIMITIVE
      result = Rift::Nodes::FieldType.new(type, val[0])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 304)
  def _reduce_76(val, _values, result)
          type = Rift::Nodes::FieldType::TYPE_PRIMITIVE
      result = Rift::Nodes::FieldType.new(type, val[0])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 310)
  def _reduce_77(val, _values, result)
          result = Rift::Nodes::BaseType.new(val[0])
      result.annotations = val[1]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 316)
  def _reduce_78(val, _values, result)
          result = Rift::Nodes::BaseType::TYPE_STRING
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 319)
  def _reduce_79(val, _values, result)
          result = Rift::Nodes::BaseType::TYPE_BINARY
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 322)
  def _reduce_80(val, _values, result)
          result = Rift::Nodes::BaseType::TYPE_BOOL
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 325)
  def _reduce_81(val, _values, result)
          result = Rift::Nodes::BaseType::TYPE_BYTE
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 328)
  def _reduce_82(val, _values, result)
          result = Rift::Nodes::BaseType::TYPE_I16
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 331)
  def _reduce_83(val, _values, result)
          result = Rift::Nodes::BaseType::TYPE_I32
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 334)
  def _reduce_84(val, _values, result)
          result = Rift::Nodes::BaseType::TYPE_I64
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 337)
  def _reduce_85(val, _values, result)
          result = Rift::Nodes::BaseType::TYPE_DOUBLE
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 342)
  def _reduce_86(val, _values, result)
          result = val[0]
      result.annotations = val[1]
    
    result
  end
.,.,

# reduce 87 omitted

# reduce 88 omitted

# reduce 89 omitted

module_eval(<<'.,.,', 'parser.racc', 351)
  def _reduce_90(val, _values, result)
          result = Rift::Nodes::MapType.new(val[3], val[5])
      result.cpp_name = val[1]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 357)
  def _reduce_91(val, _values, result)
          result = Rift::Nodes::SetType.new(val[3])
      result.cpp_name = val[1]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 363)
  def _reduce_92(val, _values, result)
          result = Rift::Nodes::ListType.new(val[3])
      result.cpp_name = val[1]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 369)
  def _reduce_93(val, _values, result)
          result = val[1]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 372)
  def _reduce_94(val, _values, result)
          result = nil
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 377)
  def _reduce_95(val, _values, result)
          result = val[1]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 380)
  def _reduce_96(val, _values, result)
          result = nil
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 385)
  def _reduce_97(val, _values, result)
          annotation = val[1]
      result.store(annotation[0], annotation[1])
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 389)
  def _reduce_98(val, _values, result)
          result = {}
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 394)
  def _reduce_99(val, _values, result)
          result = [val[0], val[2]]
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 398)
  def _reduce_100(val, _values, result)
     
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 399)
  def _reduce_101(val, _values, result)
     
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 400)
  def _reduce_102(val, _values, result)
     
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

    end   # class Parser
    end   # module Generated
  end   # module Rift
