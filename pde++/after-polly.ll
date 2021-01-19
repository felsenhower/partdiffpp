; ModuleID = 'askparams.cpp'
source_filename = "askparams.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.std::ios_base::Init" = type { i8 }
%"class.partdiff::askparams::argument_parser" = type { %"struct.partdiff::askparams::calculation_options", %"class.std::__cxx11::basic_string", %"class.std::vector", %"class.std::vector.3" }
%"struct.partdiff::askparams::calculation_options" = type { i64, i64, i64, i64, i64, i64, double }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>, std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char>>>>::_Vector_impl_data" = type { %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<partdiff::askparams::argument_parser::argument_description, std::allocator<partdiff::askparams::argument_parser::argument_description>>::_Vector_impl" }
%"struct.std::_Vector_base<partdiff::askparams::argument_parser::argument_description, std::allocator<partdiff::askparams::argument_parser::argument_description>>::_Vector_impl" = type { %"struct.std::_Vector_base<partdiff::askparams::argument_parser::argument_description, std::allocator<partdiff::askparams::argument_parser::argument_description>>::_Vector_impl_data" }
%"struct.std::_Vector_base<partdiff::askparams::argument_parser::argument_description, std::allocator<partdiff::askparams::argument_parser::argument_description>>::_Vector_impl_data" = type { %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"* }
%"struct.partdiff::askparams::argument_parser::argument_description" = type { %"class.std::any", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::function" }
%"class.std::any" = type { void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, %"union.std::any::_Storage" }
%"union.std::any::_Arg" = type { i8* }
%"union.std::any::_Storage" = type { i8* }
%"class.std::function" = type { %"class.std::_Function_base", i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* }
%"class.std::_Function_base" = type { %"union.std::_Any_data", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.fmt::v7::format_arg_store.25" = type { %"struct.fmt::v7::detail::arg_data.26" }
%"struct.fmt::v7::detail::arg_data.26" = type { [2 x %"class.fmt::v7::detail::value"] }
%"class.fmt::v7::detail::value" = type { %union.anon.19 }
%union.anon.19 = type { x86_fp80 }
%"class.fmt::v7::format_arg_store" = type { %"struct.fmt::v7::detail::arg_data" }
%"struct.fmt::v7::detail::arg_data" = type { [1 x %"class.fmt::v7::detail::value"] }
%"class.fmt::v7::format_arg_store.24" = type { %"struct.fmt::v7::detail::arg_data" }
%"class.fmt::v7::format_arg_store.28" = type { %"struct.fmt::v7::detail::arg_data" }
%"class.fmt::v7::format_arg_store.43" = type { %"struct.fmt::v7::detail::arg_data.38" }
%"struct.fmt::v7::detail::arg_data.38" = type { [4 x %"class.fmt::v7::detail::value"] }
%"class.fmt::v7::format_arg_store.41" = type { %"struct.fmt::v7::detail::arg_data.42" }
%"struct.fmt::v7::detail::arg_data.42" = type { [5 x %"class.fmt::v7::detail::value"] }
%"class.fmt::v7::format_arg_store.39" = type { %"struct.fmt::v7::detail::arg_data.32" }
%"struct.fmt::v7::detail::arg_data.32" = type { [3 x %"class.fmt::v7::detail::value"] }
%"class.fmt::v7::format_arg_store.37" = type { %"struct.fmt::v7::detail::arg_data.38" }
%"class.fmt::v7::format_arg_store.33" = type { %"struct.fmt::v7::detail::arg_data.26" }
%"class.fmt::v7::format_arg_store.31" = type { %"struct.fmt::v7::detail::arg_data.32" }
%"class.fmt::v7::format_arg_store.35" = type { %"struct.fmt::v7::detail::arg_data.26" }
%"class.fmt::v7::format_arg_store.27" = type { %"struct.fmt::v7::detail::arg_data.26" }
%"class.std::function.10" = type { %"class.std::_Function_base", i1 (%"union.std::_Any_data"*)* }
%class.anon.29 = type { %"class.std::any", %"class.std::function.10" }
%class.anon.34 = type { %"class.std::any", %"class.std::function.10" }
%class.anon.36 = type { %"class.std::any", %"class.std::function.10" }
%class.anon.40 = type { %"class.std::any", %"class.std::function.10" }
%"class.fmt::v7::format_arg_store.21" = type { %"struct.fmt::v7::detail::arg_data" }
%class.anon.44 = type { %"class.std::any", %"class.std::function.10" }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::bad_cast" = type { %"class.std::exception" }
%"class.std::exception" = type { i32 (...)** }
%"class.std::bad_any_cast" = type { %"class.std::bad_cast" }
%"class.std::allocator.5" = type { i8 }

$_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_ = comdat any

$_ZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEE = comdat any

$_ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEE = comdat any

$_ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEE = comdat any

$_ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEE = comdat any

$_ZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEE = comdat any

$__clang_call_terminate = comdat any

$_ZSt18uninitialized_copyIPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SB_SA_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE9_M_invokeERKSt9_Any_dataS7_ = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation = comdat any

$_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISF_E4typeESt15__invoke_resultIRSO_JS7_EEEE5valueERS9_E4typeEOSF_ = comdat any

$_ZNSt3any17_Manager_internalIPmE9_S_manageENS_3_OpEPKS_PNS_4_ArgE = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation = comdat any

$_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEENKUlRKS8_E_clESF_ = comdat any

$_ZSt20__throw_bad_any_castv = comdat any

$_ZNSt12bad_any_castD0Ev = comdat any

$_ZNKSt12bad_any_cast4whatEv = comdat any

$_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation = comdat any

$_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionINSC_19calculation_options18calculation_methodEEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISH_E4typeESt15__invoke_resultIRSQ_JS7_EEEE5valueERS9_E4typeEOSH_ = comdat any

$_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options18calculation_methodEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options18calculation_methodEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options18calculation_methodEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation = comdat any

$_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEENKUlRKSA_E_clESH_ = comdat any

$_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS2_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SC_SC_St8functionIFbvEEEUlRKSC_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation = comdat any

$_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionINSC_19calculation_options21interference_functionEEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISH_E4typeESt15__invoke_resultIRSQ_JS7_EEEE5valueERS9_E4typeEOSH_ = comdat any

$_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21interference_functionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21interference_functionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21interference_functionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation = comdat any

$_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEENKUlRKSA_E_clESH_ = comdat any

$_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS2_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SC_SC_St8functionIFbvEEEUlRKSC_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation = comdat any

$_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionINSC_19calculation_options21termination_conditionEEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISH_E4typeESt15__invoke_resultIRSQ_JS7_EEEE5valueERS9_E4typeEOSH_ = comdat any

$_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21termination_conditionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21termination_conditionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21termination_conditionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation = comdat any

$_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEENKUlRKSA_E_clESH_ = comdat any

$_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS2_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SC_SC_St8functionIFbvEEEUlRKSC_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation = comdat any

$_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISF_E4typeESt15__invoke_resultIRSO_JS7_EEEE5valueERS9_E4typeEOSF_ = comdat any

$_ZNSt3any17_Manager_internalIPdE9_S_manageENS_3_OpEPKS_PNS_4_ArgE = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ = comdat any

$_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation = comdat any

$_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEENKUlRKS8_E_clESF_ = comdat any

$_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt6vectorIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt16allocator_traitsISaIN8partdiff9askparams15argument_parser20argument_descriptionEEE7destroyIS3_EEvRS4_PT_ = comdat any

$_ZSt12construct_atIN8partdiff9askparams15argument_parser20argument_descriptionEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_ = comdat any

$_ZTSN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_E = comdat any

$_ZTIN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_E = comdat any

$_ZTSSt12bad_any_cast = comdat any

$_ZTISt12bad_any_cast = comdat any

$_ZTVSt12bad_any_cast = comdat any

$_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ = comdat any

$_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ = comdat any

$_ZTSPN8partdiff9askparams19calculation_options18calculation_methodE = comdat any

$_ZTSN8partdiff9askparams19calculation_options18calculation_methodE = comdat any

$_ZTIN8partdiff9askparams19calculation_options18calculation_methodE = comdat any

$_ZTIPN8partdiff9askparams19calculation_options18calculation_methodE = comdat any

$_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = comdat any

$_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = comdat any

$_ZTSPN8partdiff9askparams19calculation_options21interference_functionE = comdat any

$_ZTSN8partdiff9askparams19calculation_options21interference_functionE = comdat any

$_ZTIN8partdiff9askparams19calculation_options21interference_functionE = comdat any

$_ZTIPN8partdiff9askparams19calculation_options21interference_functionE = comdat any

$_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = comdat any

$_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = comdat any

$_ZTSPN8partdiff9askparams19calculation_options21termination_conditionE = comdat any

$_ZTSN8partdiff9askparams19calculation_options21termination_conditionE = comdat any

$_ZTIN8partdiff9askparams19calculation_options21termination_conditionE = comdat any

$_ZTIPN8partdiff9askparams19calculation_options21termination_conditionE = comdat any

$_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = comdat any

$_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = comdat any

$_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ = comdat any

$_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ = comdat any

@.str = private unnamed_addr constant [10 x i8] c"Usage: {}\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" [{}]\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"{}{}\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Example: {} 1 2 100 1 2 100 \0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"{:{}s}\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"acc\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"< invalid >\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"number of threads (1 .. {:d})\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Select number of threads:\0ANumber> \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"calculation method (1 .. 2)\0A{0}{1:d}: Gau\C3\9F-Seidel\0A{0}{2:d}: Jacobi\00", align 1
@.str.16 = private unnamed_addr constant [74 x i8] c"Select calculation method:\0A  {:d}: Gau\C3\9F-Seidel.\0A  {:d}: Jacobi.\0Amethod> \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"number of interlines (0 .. {1:d})\0A{0}matrixsize = (interlines * 8) + 9\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Matrixsize = Interlines*8+9\0AInterlines> \00", align 1
@.str.21 = private unnamed_addr constant [108 x i8] c"interference function (1 .. 2)\0A{0}{1:d}: f(x,y) = 0\0A{0}{2:d}: f(x,y) = 2 * pi^2 * sin(pi * x) * sin(pi * y)\00", align 1
@.str.22 = private unnamed_addr constant [111 x i8] c"Select interference function:\0A {:d}: f(x,y)=0.\0A {:d}: f(x,y)=2pi^2*sin(pi*x)sin(pi*y).\0Ainterference function> \00", align 1
@.str.24 = private unnamed_addr constant [89 x i8] c"termination condition ( 1.. 2)\0A{0}{1:d}: sufficient {2:s}\0A{0}{3:d}: number of iterations\00", align 1
@.str.25 = private unnamed_addr constant [85 x i8] c"Select termination:\0A {:d}: sufficient {}.\0A {:d}: number of iterations.\0Atermination> \00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"{}/iter\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"depending on term:\0A{0}{1:s}:  {2:s} .. {3:s}\0A{0}iterations:    1 .. {4:d}\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"Select {}:\0A  Range: {:s} .. {:s}.\0A{}> \00", align 1
@.str.30 = private unnamed_addr constant [62 x i8] c"Select number of iterations:\0A  Range: 1 .. {:d}.\0AIterations> \00", align 1
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str.31 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"  - {:11}\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"{:.0e}\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits.const = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_E = linkonce_odr dso_local constant [86 x i8] c"N8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_E\00", comdat, align 1
@_ZTIN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_E = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @_ZTSN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_E, i32 0, i32 0) }, comdat, align 8
@_ZTIPm = external dso_local constant i8*
@_ZTIv = external dso_local local_unnamed_addr constant i8*
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSSt12bad_any_cast = linkonce_odr dso_local constant [17 x i8] c"St12bad_any_cast\00", comdat, align 1
@_ZTISt8bad_cast = external dso_local constant i8*
@_ZTISt12bad_any_cast = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTSSt12bad_any_cast, i32 0, i32 0), i8* bitcast (i8** @_ZTISt8bad_cast to i8*) }, comdat, align 8
@_ZTVSt12bad_any_cast = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt12bad_any_cast to i8*), i8* bitcast (void (%"class.std::bad_cast"*)* @_ZNSt8bad_castD2Ev to i8*), i8* bitcast (void (%"class.std::bad_any_cast"*)* @_ZNSt12bad_any_castD0Ev to i8*), i8* bitcast (i8* (%"class.std::bad_any_cast"*)* @_ZNKSt12bad_any_cast4whatEv to i8*)] }, comdat, align 8, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5
@.str.45 = private unnamed_addr constant [13 x i8] c"bad any_cast\00", align 1
@_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant { [5 x i8*], [5 x i8*] }, align 8
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [4 x i8*] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ = linkonce_odr dso_local constant [158 x i8] c"ZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_\00", comdat, align 1
@_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([158 x i8], [158 x i8]* @_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_, i32 0, i32 0) }, comdat, align 8
@"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1" = internal constant [74 x i8] c"ZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1\00", align 1
@"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1", i32 0, i32 0) }, align 8
@_ZTVN10__cxxabiv119__pointer_type_infoE = external dso_local global i8*
@_ZTSPN8partdiff9askparams19calculation_options18calculation_methodE = linkonce_odr dso_local constant [64 x i8] c"PN8partdiff9askparams19calculation_options18calculation_methodE\00", comdat, align 1
@_ZTVN10__cxxabiv116__enum_type_infoE = external dso_local global i8*
@_ZTSN8partdiff9askparams19calculation_options18calculation_methodE = linkonce_odr dso_local constant [63 x i8] c"N8partdiff9askparams19calculation_options18calculation_methodE\00", comdat, align 1
@_ZTIN8partdiff9askparams19calculation_options18calculation_methodE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @_ZTSN8partdiff9askparams19calculation_options18calculation_methodE, i32 0, i32 0) }, comdat, align 8
@_ZTIPN8partdiff9askparams19calculation_options18calculation_methodE = linkonce_odr dso_local constant { i8*, i8*, i32, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @_ZTSPN8partdiff9askparams19calculation_options18calculation_methodE, i32 0, i32 0), i32 0, i8* bitcast ({ i8*, i8* }* @_ZTIN8partdiff9askparams19calculation_options18calculation_methodE to i8*) }, comdat, align 8
@_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = linkonce_odr dso_local constant [203 x i8] c"ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_\00", comdat, align 1
@_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([203 x i8], [203 x i8]* @_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_, i32 0, i32 0) }, comdat, align 8
@"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2" = internal constant [74 x i8] c"ZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2\00", align 1
@"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2", i32 0, i32 0) }, align 8
@"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3" = internal constant [74 x i8] c"ZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3\00", align 1
@"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3", i32 0, i32 0) }, align 8
@_ZTSPN8partdiff9askparams19calculation_options21interference_functionE = linkonce_odr dso_local constant [67 x i8] c"PN8partdiff9askparams19calculation_options21interference_functionE\00", comdat, align 1
@_ZTSN8partdiff9askparams19calculation_options21interference_functionE = linkonce_odr dso_local constant [66 x i8] c"N8partdiff9askparams19calculation_options21interference_functionE\00", comdat, align 1
@_ZTIN8partdiff9askparams19calculation_options21interference_functionE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @_ZTSN8partdiff9askparams19calculation_options21interference_functionE, i32 0, i32 0) }, comdat, align 8
@_ZTIPN8partdiff9askparams19calculation_options21interference_functionE = linkonce_odr dso_local constant { i8*, i8*, i32, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @_ZTSPN8partdiff9askparams19calculation_options21interference_functionE, i32 0, i32 0), i32 0, i8* bitcast ({ i8*, i8* }* @_ZTIN8partdiff9askparams19calculation_options21interference_functionE to i8*) }, comdat, align 8
@_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = linkonce_odr dso_local constant [206 x i8] c"ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_\00", comdat, align 1
@_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([206 x i8], [206 x i8]* @_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_, i32 0, i32 0) }, comdat, align 8
@"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4" = internal constant [74 x i8] c"ZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4\00", align 1
@"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4", i32 0, i32 0) }, align 8
@_ZTSPN8partdiff9askparams19calculation_options21termination_conditionE = linkonce_odr dso_local constant [67 x i8] c"PN8partdiff9askparams19calculation_options21termination_conditionE\00", comdat, align 1
@_ZTSN8partdiff9askparams19calculation_options21termination_conditionE = linkonce_odr dso_local constant [66 x i8] c"N8partdiff9askparams19calculation_options21termination_conditionE\00", comdat, align 1
@_ZTIN8partdiff9askparams19calculation_options21termination_conditionE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @_ZTSN8partdiff9askparams19calculation_options21termination_conditionE, i32 0, i32 0) }, comdat, align 8
@_ZTIPN8partdiff9askparams19calculation_options21termination_conditionE = linkonce_odr dso_local constant { i8*, i8*, i32, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @_ZTSPN8partdiff9askparams19calculation_options21termination_conditionE, i32 0, i32 0), i32 0, i8* bitcast ({ i8*, i8* }* @_ZTIN8partdiff9askparams19calculation_options21termination_conditionE to i8*) }, comdat, align 8
@_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = linkonce_odr dso_local constant [206 x i8] c"ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_\00", comdat, align 1
@_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([206 x i8], [206 x i8]* @_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_, i32 0, i32 0) }, comdat, align 8
@"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5" = internal constant [74 x i8] c"ZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5\00", align 1
@"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5", i32 0, i32 0) }, align 8
@_ZTIPd = external dso_local constant i8*
@_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ = linkonce_odr dso_local constant [158 x i8] c"ZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_\00", comdat, align 1
@_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([158 x i8], [158 x i8]* @_ZTSZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_, i32 0, i32 0) }, comdat, align 8
@"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7" = internal constant [74 x i8] c"ZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7\00", align 1
@"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7", i32 0, i32 0) }, align 8
@"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8" = internal constant [74 x i8] c"ZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8\00", align 1
@"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8", i32 0, i32 0) }, align 8
@.str.46 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_askparams.cpp, i8* null }]

@_ZN8partdiff9askparams15argument_parserC1EiPPKc = dso_local unnamed_addr alias void (%"class.partdiff::askparams::argument_parser"*, i32, i8**), void (%"class.partdiff::askparams::argument_parser"*, i32, i8**)* @_ZN8partdiff9askparams15argument_parserC2EiPPKc

; Function Attrs: uwtable
define dso_local void @_ZNK8partdiff9askparams15argument_parser15get_descriptionEm(%"struct.partdiff::askparams::argument_parser::argument_description"* noalias sret align 8 %0, %"class.partdiff::askparams::argument_parser"* nocapture readonly %1, i64 %2) local_unnamed_addr #0 align 2 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %1, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %6 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %5, align 8, !tbaa !10
  %7 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %6, i64 %2
  tail call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %0, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %7)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %0, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %1) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"union.std::any::_Arg", align 8
  br label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 0
  %6 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 0, i32 0
  %8 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %7, align 8, !tbaa !16
  %9 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %11, align 8, !tbaa !16
  br label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 0
  %14 = bitcast %"union.std::any::_Arg"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #22
  %15 = bitcast %"union.std::any::_Arg"* %3 to %"class.std::any"**
  store %"class.std::any"* %5, %"class.std::any"** %15, align 8, !tbaa !15
  call void %8(i32 2, %"class.std::any"* nonnull %13, %"union.std::any::_Arg"* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #22
  br label %16

16:                                               ; preds = %10, %12
  %17 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 1
  %18 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 1, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %17 to %union.anon**
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !18
  %20 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 1, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !20
  %22 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 1, i32 1
  %23 = load i64, i64* %22, align 8, !tbaa !23
  %24 = icmp ugt i64 %23, 15
  %25 = bitcast %union.anon* %18 to i8*
  br i1 %24, label %26, label %40

26:                                               ; preds = %16
  %27 = icmp slt i64 %23, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %29 unwind label %137

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %26
  %31 = add nuw i64 %23, 1
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %34 unwind label %137

34:                                               ; preds = %33
  unreachable

35:                                               ; preds = %30
  %36 = invoke noalias nonnull i8* @_Znwm(i64 %31) #24
          to label %37 unwind label %137

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 0, i32 0
  store i8* %36, i8** %38, align 8, !tbaa !20
  %39 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 1, i32 2, i32 0
  store i64 %23, i64* %39, align 8, !tbaa !15
  br label %40

40:                                               ; preds = %37, %16
  %41 = phi i8* [ %36, %37 ], [ %25, %16 ]
  switch i64 %23, label %44 [
    i64 1, label %42
    i64 0, label %45
  ]

42:                                               ; preds = %40
  %43 = load i8, i8* %21, align 1, !tbaa !15
  store i8 %43, i8* %41, align 1, !tbaa !15
  br label %45

44:                                               ; preds = %40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %41, i8* align 1 %21, i64 %23, i1 false) #22
  br label %45

45:                                               ; preds = %44, %42, %40
  %46 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 1, i32 1
  store i64 %23, i64* %46, align 8, !tbaa !23
  %47 = getelementptr inbounds i8, i8* %41, i64 %23
  store i8 0, i8* %47, align 1, !tbaa !15
  %48 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 2
  %49 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 2, i32 2
  %50 = bitcast %"class.std::__cxx11::basic_string"* %48 to %union.anon**
  store %union.anon* %49, %union.anon** %50, align 8, !tbaa !18
  %51 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 2, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8, !tbaa !20
  %53 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 2, i32 1
  %54 = load i64, i64* %53, align 8, !tbaa !23
  %55 = icmp ugt i64 %54, 15
  %56 = bitcast %union.anon* %49 to i8*
  br i1 %55, label %57, label %71

57:                                               ; preds = %45
  %58 = icmp slt i64 %54, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %60 unwind label %141

60:                                               ; preds = %59
  unreachable

61:                                               ; preds = %57
  %62 = add nuw i64 %54, 1
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %65 unwind label %141

65:                                               ; preds = %64
  unreachable

66:                                               ; preds = %61
  %67 = invoke noalias nonnull i8* @_Znwm(i64 %62) #24
          to label %68 unwind label %141

68:                                               ; preds = %66
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 0, i32 0
  store i8* %67, i8** %69, align 8, !tbaa !20
  %70 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 2, i32 2, i32 0
  store i64 %54, i64* %70, align 8, !tbaa !15
  br label %71

71:                                               ; preds = %68, %45
  %72 = phi i8* [ %67, %68 ], [ %56, %45 ]
  switch i64 %54, label %75 [
    i64 1, label %73
    i64 0, label %76
  ]

73:                                               ; preds = %71
  %74 = load i8, i8* %52, align 1, !tbaa !15
  store i8 %74, i8* %72, align 1, !tbaa !15
  br label %76

75:                                               ; preds = %71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %72, i8* align 1 %52, i64 %54, i1 false) #22
  br label %76

76:                                               ; preds = %75, %73, %71
  %77 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 2, i32 1
  store i64 %54, i64* %77, align 8, !tbaa !23
  %78 = getelementptr inbounds i8, i8* %72, i64 %54
  store i8 0, i8* %78, align 1, !tbaa !15
  %79 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 3
  %80 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 3, i32 2
  %81 = bitcast %"class.std::__cxx11::basic_string"* %79 to %union.anon**
  store %union.anon* %80, %union.anon** %81, align 8, !tbaa !18
  %82 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 3, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8, !tbaa !20
  %84 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 3, i32 1
  %85 = load i64, i64* %84, align 8, !tbaa !23
  %86 = icmp ugt i64 %85, 15
  %87 = bitcast %union.anon* %80 to i8*
  br i1 %86, label %88, label %102

88:                                               ; preds = %76
  %89 = icmp slt i64 %85, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %91 unwind label %145

91:                                               ; preds = %90
  unreachable

92:                                               ; preds = %88
  %93 = add nuw i64 %85, 1
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %96 unwind label %145

96:                                               ; preds = %95
  unreachable

97:                                               ; preds = %92
  %98 = invoke noalias nonnull i8* @_Znwm(i64 %93) #24
          to label %99 unwind label %145

99:                                               ; preds = %97
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %79, i64 0, i32 0, i32 0
  store i8* %98, i8** %100, align 8, !tbaa !20
  %101 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 3, i32 2, i32 0
  store i64 %85, i64* %101, align 8, !tbaa !15
  br label %102

102:                                              ; preds = %99, %76
  %103 = phi i8* [ %98, %99 ], [ %87, %76 ]
  switch i64 %85, label %106 [
    i64 1, label %104
    i64 0, label %107
  ]

104:                                              ; preds = %102
  %105 = load i8, i8* %83, align 1, !tbaa !15
  store i8 %105, i8* %103, align 1, !tbaa !15
  br label %107

106:                                              ; preds = %102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %103, i8* align 1 %83, i64 %85, i1 false) #22
  br label %107

107:                                              ; preds = %106, %104, %102
  %108 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 3, i32 1
  store i64 %85, i64* %108, align 8, !tbaa !23
  %109 = getelementptr inbounds i8, i8* %103, i64 %85
  store i8 0, i8* %109, align 1, !tbaa !15
  %110 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 4, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %110, align 8, !tbaa !24
  %111 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 4, i32 0, i32 1
  %112 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %111, align 8, !tbaa !24
  %113 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %112, null
  br i1 %113, label %136, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 4, i32 0, i32 0
  %116 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 4, i32 0, i32 0
  %117 = invoke zeroext i1 %112(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %115, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %116, i32 2)
          to label %118 unwind label %127

118:                                              ; preds = %114
  %119 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 4, i32 1
  %120 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %119 to i64*
  %121 = load i64, i64* %120, align 8, !tbaa !26
  %122 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 4, i32 1
  %123 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %122 to i64*
  store i64 %121, i64* %123, align 8, !tbaa !26
  %124 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %111 to i64*
  %125 = load i64, i64* %124, align 8, !tbaa !24
  %126 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %110 to i64*
  store i64 %125, i64* %126, align 8, !tbaa !24
  br label %136

127:                                              ; preds = %114
  %128 = landingpad { i8*, i32 }
          cleanup
  %129 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %110, align 8, !tbaa !24
  %130 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %129, null
  br i1 %130, label %149, label %131

131:                                              ; preds = %127
  %132 = invoke zeroext i1 %129(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %115, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %115, i32 3)
          to label %149 unwind label %133

133:                                              ; preds = %131
  %134 = landingpad { i8*, i32 }
          catch i8* null
  %135 = extractvalue { i8*, i32 } %134, 0
  call void @__clang_call_terminate(i8* %135) #25
  unreachable

136:                                              ; preds = %118, %107
  ret void

137:                                              ; preds = %35, %33, %28
  %138 = landingpad { i8*, i32 }
          cleanup
  %139 = extractvalue { i8*, i32 } %138, 0
  %140 = extractvalue { i8*, i32 } %138, 1
  br label %170

141:                                              ; preds = %66, %64, %59
  %142 = landingpad { i8*, i32 }
          cleanup
  %143 = extractvalue { i8*, i32 } %142, 0
  %144 = extractvalue { i8*, i32 } %142, 1
  br label %163

145:                                              ; preds = %97, %95, %90
  %146 = landingpad { i8*, i32 }
          cleanup
  %147 = extractvalue { i8*, i32 } %146, 0
  %148 = extractvalue { i8*, i32 } %146, 1
  br label %156

149:                                              ; preds = %127, %131
  %150 = extractvalue { i8*, i32 } %128, 0
  %151 = extractvalue { i8*, i32 } %128, 1
  %152 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %79, i64 0, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8, !tbaa !20
  %154 = icmp eq i8* %153, %87
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  call void @_ZdlPv(i8* %153) #22
  br label %156

156:                                              ; preds = %155, %149, %145
  %157 = phi i8* [ %147, %145 ], [ %150, %149 ], [ %150, %155 ]
  %158 = phi i32 [ %148, %145 ], [ %151, %149 ], [ %151, %155 ]
  %159 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8, !tbaa !20
  %161 = icmp eq i8* %160, %56
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  call void @_ZdlPv(i8* %160) #22
  br label %163

163:                                              ; preds = %162, %156, %141
  %164 = phi i8* [ %143, %141 ], [ %157, %156 ], [ %157, %162 ]
  %165 = phi i32 [ %144, %141 ], [ %158, %156 ], [ %158, %162 ]
  %166 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8, !tbaa !20
  %168 = icmp eq i8* %167, %25
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  call void @_ZdlPv(i8* %167) #22
  br label %170

170:                                              ; preds = %169, %163, %137
  %171 = phi i8* [ %139, %137 ], [ %164, %163 ], [ %164, %169 ]
  %172 = phi i32 [ %140, %137 ], [ %165, %163 ], [ %165, %169 ]
  %173 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 0, i32 0
  %174 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %173, align 8, !tbaa !16
  %175 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %174, null
  br i1 %175, label %181, label %176

176:                                              ; preds = %170
  invoke void %174(i32 3, %"class.std::any"* nonnull %5, %"union.std::any::_Arg"* null)
          to label %177 unwind label %178

177:                                              ; preds = %176
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %173, align 8, !tbaa !16
  br label %181

178:                                              ; preds = %176
  %179 = landingpad { i8*, i32 }
          catch i8* null
  %180 = extractvalue { i8*, i32 } %179, 0
  call void @__clang_call_terminate(i8* %180) #25
  unreachable

181:                                              ; preds = %170, %177
  %182 = insertvalue { i8*, i32 } undef, i8* %171, 0
  %183 = insertvalue { i8*, i32 } %182, i32 %172, 1
  resume { i8*, i32 } %183
}

; Function Attrs: uwtable
define dso_local void @_ZNK8partdiff9askparams15argument_parser5usageEv(%"class.partdiff::askparams::argument_parser"* nocapture readonly %0) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.fmt::v7::format_arg_store.25", align 16
  %3 = alloca %"class.fmt::v7::format_arg_store", align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.fmt::v7::format_arg_store.24", align 16
  %6 = alloca %"class.fmt::v7::format_arg_store", align 16
  %7 = alloca %"class.fmt::v7::format_arg_store.24", align 16
  %8 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  %11 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  br label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 1
  %14 = bitcast %"class.fmt::v7::format_arg_store.24"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #22
  %15 = bitcast %"class.std::__cxx11::basic_string"* %13 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !20
  %17 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 1, i32 1
  %18 = load i64, i64* %17, align 8, !tbaa !23
  %19 = bitcast %"class.fmt::v7::format_arg_store.24"* %7 to { i64, i64 }*
  %20 = bitcast %"class.fmt::v7::format_arg_store.24"* %7 to i64*
  store i64 %16, i64* %20, align 16
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i64 0, i32 1
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds %"class.fmt::v7::format_arg_store.24", %"class.fmt::v7::format_arg_store.24"* %7, i64 0, i32 0, i32 0, i64 0
  call void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9, i64 13, %"class.fmt::v7::detail::value"* nonnull %22)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #22
  %23 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %8 to i8*
  %24 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %25 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 1
  %26 = bitcast %"class.fmt::v7::format_arg_store"* %6 to i8*
  %27 = bitcast %"class.std::__cxx11::basic_string"* %25 to i64*
  %28 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 1, i32 1
  %29 = bitcast %"class.fmt::v7::format_arg_store"* %6 to { i64, i64 }*
  %30 = bitcast %"class.fmt::v7::format_arg_store"* %6 to i64*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i64 0, i32 1
  %32 = getelementptr inbounds %"class.fmt::v7::format_arg_store", %"class.fmt::v7::format_arg_store"* %6, i64 0, i32 0, i32 0, i64 0
  %33 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 4, i32 0, i32 1
  %34 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 4, i32 0, i32 0
  %35 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 3, i32 0, i32 0
  %36 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 3, i32 2
  %37 = bitcast %union.anon* %36 to i8*
  %38 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 2, i32 0, i32 0
  %39 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 2, i32 2
  %40 = bitcast %union.anon* %39 to i8*
  %41 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 1, i32 0, i32 0
  %42 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 1, i32 2
  %43 = bitcast %union.anon* %42 to i8*
  %44 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 0, i32 0
  %45 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %23) #22
  %46 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %24, align 8, !tbaa !10, !noalias !28
  call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %8, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %46)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #22
  %47 = load i64, i64* %27, align 8, !tbaa !20
  %48 = load i64, i64* %28, align 8, !tbaa !23
  store i64 %47, i64* %30, align 16
  store i64 %48, i64* %31, align 8
  invoke void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i64 13, %"class.fmt::v7::detail::value"* nonnull %32)
          to label %155 unwind label %188

49:                                               ; preds = %529
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

50:                                               ; preds = %529
  %51 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %537, i64 0, i32 8
  %52 = load i8, i8* %51, align 8, !tbaa !31
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %537, i64 0, i32 9, i64 10
  %56 = load i8, i8* %55, align 1, !tbaa !15
  br label %63

57:                                               ; preds = %50
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %537)
  %58 = bitcast %"class.std::ctype"* %537 to i8 (%"class.std::ctype"*, i8)***
  %59 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %58, align 8, !tbaa !34
  %60 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %59, i64 6
  %61 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %60, align 8
  %62 = call signext i8 %61(%"class.std::ctype"* nonnull %537, i8 signext 10)
  br label %63

63:                                               ; preds = %54, %57
  %64 = phi i8 [ %56, %54 ], [ %62, %57 ]
  %65 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i8 signext %64)
  %66 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %65)
  %67 = bitcast %"class.std::basic_ostream"* %66 to i8**
  %68 = load i8*, i8** %67, align 8, !tbaa !34
  %69 = getelementptr i8, i8* %68, i64 -24
  %70 = bitcast i8* %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %"class.std::basic_ostream"* %66 to i8*
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  %74 = getelementptr inbounds i8, i8* %73, i64 240
  %75 = bitcast i8* %74 to %"class.std::ctype"**
  %76 = load %"class.std::ctype"*, %"class.std::ctype"** %75, align 8, !tbaa !36
  %77 = icmp eq %"class.std::ctype"* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

79:                                               ; preds = %63
  %80 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %76, i64 0, i32 8
  %81 = load i8, i8* %80, align 8, !tbaa !31
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %76, i64 0, i32 9, i64 10
  %85 = load i8, i8* %84, align 1, !tbaa !15
  br label %92

86:                                               ; preds = %79
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %76)
  %87 = bitcast %"class.std::ctype"* %76 to i8 (%"class.std::ctype"*, i8)***
  %88 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %87, align 8, !tbaa !34
  %89 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %88, i64 6
  %90 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %89, align 8
  %91 = call signext i8 %90(%"class.std::ctype"* nonnull %76, i8 signext 10)
  br label %92

92:                                               ; preds = %83, %86
  %93 = phi i8 [ %85, %83 ], [ %91, %86 ]
  %94 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull %66, i8 signext %93)
  %95 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %94)
  %96 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  %97 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %10 to i8*
  %98 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1
  %99 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %100 = bitcast %"class.fmt::v7::format_arg_store"* %3 to i8*
  %101 = bitcast %"class.std::__cxx11::basic_string"* %4 to i64*
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %103 = bitcast %"class.fmt::v7::format_arg_store"* %3 to { i64, i64 }*
  %104 = bitcast %"class.fmt::v7::format_arg_store"* %3 to i64*
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i64 0, i32 1
  %106 = getelementptr inbounds %"class.fmt::v7::format_arg_store", %"class.fmt::v7::format_arg_store"* %3, i64 0, i32 0, i32 0, i64 0
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %109 = bitcast %union.anon* %108 to i8*
  %110 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %11 to i8*
  %111 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 2
  %112 = bitcast %"class.fmt::v7::format_arg_store.25"* %2 to i8*
  %113 = bitcast %"class.std::__cxx11::basic_string"* %9 to i64*
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  %115 = bitcast %"class.std::__cxx11::basic_string"* %111 to i64*
  %116 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 2, i32 1
  %117 = bitcast %"class.fmt::v7::format_arg_store.25"* %2 to i64*
  %118 = getelementptr inbounds i8, i8* %112, i64 8
  %119 = bitcast i8* %118 to i64*
  %120 = getelementptr inbounds %"class.fmt::v7::format_arg_store.25", %"class.fmt::v7::format_arg_store.25"* %2, i64 0, i32 0, i32 0, i64 1
  %121 = bitcast %"class.fmt::v7::detail::value"* %120 to i8*
  %122 = bitcast %"class.fmt::v7::detail::value"* %120 to i64*
  %123 = getelementptr inbounds i8, i8* %121, i64 8
  %124 = bitcast i8* %123 to i64*
  %125 = getelementptr inbounds %"class.fmt::v7::format_arg_store.25", %"class.fmt::v7::format_arg_store.25"* %2, i64 0, i32 0, i32 0, i64 0
  %126 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 4, i32 0, i32 1
  %127 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 4, i32 0, i32 0
  %128 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 3, i32 0, i32 0
  %129 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 3, i32 2
  %130 = bitcast %union.anon* %129 to i8*
  %131 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 2, i32 0, i32 0
  %132 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 2, i32 2
  %133 = bitcast %union.anon* %132 to i8*
  %134 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 1, i32 0, i32 0
  %135 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 1, i32 2
  %136 = bitcast %union.anon* %135 to i8*
  %137 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 0, i32 0
  %138 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %11, i64 0, i32 0
  %139 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %140 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %141 = bitcast %union.anon* %140 to i8*
  %142 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 1
  %143 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %144 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %145 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 2
  %146 = bitcast %union.anon* %145 to i8*
  %147 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %148 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 2
  %149 = bitcast %union.anon* %148 to i8*
  %150 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %151 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 2
  %152 = bitcast %union.anon* %151 to i8*
  %153 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %154 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  br label %228

155:                                              ; preds = %12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #22
  %156 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %33, align 8, !tbaa !24
  %157 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %155
  %159 = invoke zeroext i1 %156(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, i32 3)
          to label %163 unwind label %160

160:                                              ; preds = %510, %483, %456, %429, %402, %158
  %161 = landingpad { i8*, i32 }
          catch i8* null
  %162 = extractvalue { i8*, i32 } %161, 0
  call void @__clang_call_terminate(i8* %162) #25
  unreachable

163:                                              ; preds = %158, %155
  %164 = load i8*, i8** %35, align 8, !tbaa !20
  %165 = icmp eq i8* %164, %37
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  call void @_ZdlPv(i8* %164) #22
  br label %167

167:                                              ; preds = %166, %163
  %168 = load i8*, i8** %38, align 8, !tbaa !20
  %169 = icmp eq i8* %168, %40
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  call void @_ZdlPv(i8* %168) #22
  br label %171

171:                                              ; preds = %170, %167
  %172 = load i8*, i8** %41, align 8, !tbaa !20
  %173 = icmp eq i8* %172, %43
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  call void @_ZdlPv(i8* %172) #22
  br label %175

175:                                              ; preds = %174, %171
  %176 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  %177 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %176, null
  br i1 %177, label %183, label %178

178:                                              ; preds = %175
  invoke void %176(i32 3, %"class.std::any"* nonnull %45, %"union.std::any::_Arg"* null)
          to label %179 unwind label %180

179:                                              ; preds = %178
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  br label %183

180:                                              ; preds = %527, %500, %473, %446, %419, %178
  %181 = landingpad { i8*, i32 }
          catch i8* null
  %182 = extractvalue { i8*, i32 } %181, 0
  call void @__clang_call_terminate(i8* %182) #25
  unreachable

183:                                              ; preds = %175, %179
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %23) #22
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %23) #22
  %184 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %24, align 8, !tbaa !10, !noalias !28
  %185 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %184, i64 1
  call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %8, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %185)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #22
  %186 = load i64, i64* %27, align 8, !tbaa !20
  %187 = load i64, i64* %28, align 8, !tbaa !23
  store i64 %186, i64* %30, align 16
  store i64 %187, i64* %31, align 8
  invoke void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i64 13, %"class.fmt::v7::detail::value"* nonnull %32)
          to label %399 unwind label %188

188:                                              ; preds = %502, %475, %448, %421, %183, %12
  %189 = landingpad { i8*, i32 }
          cleanup
  %190 = extractvalue { i8*, i32 } %189, 0
  %191 = extractvalue { i8*, i32 } %189, 1
  %192 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %33, align 8, !tbaa !24
  %193 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %192, null
  br i1 %193, label %199, label %194

194:                                              ; preds = %188
  %195 = invoke zeroext i1 %192(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, i32 3)
          to label %199 unwind label %196

196:                                              ; preds = %194
  %197 = landingpad { i8*, i32 }
          catch i8* null
  %198 = extractvalue { i8*, i32 } %197, 0
  call void @__clang_call_terminate(i8* %198) #25
  unreachable

199:                                              ; preds = %194, %188
  %200 = load i8*, i8** %35, align 8, !tbaa !20
  %201 = icmp eq i8* %200, %37
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  call void @_ZdlPv(i8* %200) #22
  br label %203

203:                                              ; preds = %202, %199
  %204 = load i8*, i8** %38, align 8, !tbaa !20
  %205 = icmp eq i8* %204, %40
  br i1 %205, label %207, label %206

206:                                              ; preds = %203
  call void @_ZdlPv(i8* %204) #22
  br label %207

207:                                              ; preds = %206, %203
  %208 = load i8*, i8** %41, align 8, !tbaa !20
  %209 = icmp eq i8* %208, %43
  br i1 %209, label %211, label %210

210:                                              ; preds = %207
  call void @_ZdlPv(i8* %208) #22
  br label %211

211:                                              ; preds = %210, %207
  %212 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  %213 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %212, null
  br i1 %213, label %219, label %214

214:                                              ; preds = %211
  invoke void %212(i32 3, %"class.std::any"* nonnull %45, %"union.std::any::_Arg"* null)
          to label %215 unwind label %216

215:                                              ; preds = %214
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  br label %219

216:                                              ; preds = %214
  %217 = landingpad { i8*, i32 }
          catch i8* null
  %218 = extractvalue { i8*, i32 } %217, 0
  call void @__clang_call_terminate(i8* %218) #25
  unreachable

219:                                              ; preds = %211, %215
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %23) #22
  br label %394

220:                                              ; preds = %313
  %221 = bitcast %"class.fmt::v7::format_arg_store.24"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %221) #22
  %222 = load i64, i64* %15, align 8, !tbaa !20
  %223 = load i64, i64* %17, align 8, !tbaa !23
  %224 = bitcast %"class.fmt::v7::format_arg_store.24"* %5 to { i64, i64 }*
  %225 = bitcast %"class.fmt::v7::format_arg_store.24"* %5 to i64*
  store i64 %222, i64* %225, align 16
  %226 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %224, i64 0, i32 1
  store i64 %223, i64* %226, align 8
  %227 = getelementptr inbounds %"class.fmt::v7::format_arg_store.24", %"class.fmt::v7::format_arg_store.24"* %5, i64 0, i32 0, i32 0, i64 0
  call void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 29, i64 13, %"class.fmt::v7::detail::value"* nonnull %227)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %221) #22
  ret void

228:                                              ; preds = %92, %313
  %229 = phi i64 [ 0, %92 ], [ %314, %313 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %96) #22
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %97) #22
  %230 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %24, align 8, !tbaa !10, !noalias !38
  %231 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %230, i64 %229
  call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %10, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %231)
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %99) #22, !noalias !41
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %4, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
          to label %232 unwind label %316

232:                                              ; preds = %228
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %100) #22, !noalias !44
  %233 = load i64, i64* %101, align 8, !tbaa !20, !noalias !44
  %234 = load i64, i64* %102, align 8, !tbaa !23, !noalias !44
  store i64 %233, i64* %104, align 16, !noalias !44
  store i64 %234, i64* %105, align 8, !noalias !44
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %9, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i64 9, i64 13, %"class.fmt::v7::detail::value"* nonnull %106)
          to label %235 unwind label %239

235:                                              ; preds = %232
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %100) #22, !noalias !44
  %236 = load i8*, i8** %107, align 8, !tbaa !20, !noalias !41
  %237 = icmp eq i8* %236, %109
  br i1 %237, label %245, label %238

238:                                              ; preds = %235
  call void @_ZdlPv(i8* %236) #22
  br label %245

239:                                              ; preds = %232
  %240 = landingpad { i8*, i32 }
          cleanup
  %241 = load i8*, i8** %107, align 8, !tbaa !20, !noalias !41
  %242 = icmp eq i8* %241, %109
  br i1 %242, label %244, label %243

243:                                              ; preds = %239
  call void @_ZdlPv(i8* %241) #22
  br label %244

244:                                              ; preds = %243, %239
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %99) #22, !noalias !41
  br label %318

245:                                              ; preds = %238, %235
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %99) #22, !noalias !41
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %110) #22
  %246 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %24, align 8, !tbaa !10, !noalias !47
  %247 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %246, i64 %229
  invoke void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %11, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %247)
          to label %248 unwind label %322

248:                                              ; preds = %245
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %112) #22
  %249 = load i64, i64* %113, align 8, !tbaa !20, !noalias !50
  %250 = load i64, i64* %114, align 8, !tbaa !23, !noalias !50
  %251 = load i64, i64* %115, align 8, !tbaa !20, !noalias !50
  %252 = load i64, i64* %116, align 8, !tbaa !23, !noalias !50
  store i64 %249, i64* %117, align 16, !tbaa.struct !53, !alias.scope !50
  store i64 %250, i64* %119, align 8, !tbaa.struct !53, !alias.scope !50
  store i64 %251, i64* %122, align 16, !tbaa.struct !53, !alias.scope !50
  store i64 %252, i64* %124, align 8, !tbaa.struct !53, !alias.scope !50
  invoke void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 5, i64 221, %"class.fmt::v7::detail::value"* nonnull %125)
          to label %253 unwind label %326

253:                                              ; preds = %248
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %112) #22
  %254 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %126, align 8, !tbaa !24
  %255 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %254, null
  br i1 %255, label %261, label %256

256:                                              ; preds = %253
  %257 = invoke zeroext i1 %254(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %127, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %127, i32 3)
          to label %261 unwind label %258

258:                                              ; preds = %256
  %259 = landingpad { i8*, i32 }
          catch i8* null
  %260 = extractvalue { i8*, i32 } %259, 0
  call void @__clang_call_terminate(i8* %260) #25
  unreachable

261:                                              ; preds = %256, %253
  %262 = load i8*, i8** %128, align 8, !tbaa !20
  %263 = icmp eq i8* %262, %130
  br i1 %263, label %265, label %264

264:                                              ; preds = %261
  call void @_ZdlPv(i8* %262) #22
  br label %265

265:                                              ; preds = %264, %261
  %266 = load i8*, i8** %131, align 8, !tbaa !20
  %267 = icmp eq i8* %266, %133
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  call void @_ZdlPv(i8* %266) #22
  br label %269

269:                                              ; preds = %268, %265
  %270 = load i8*, i8** %134, align 8, !tbaa !20
  %271 = icmp eq i8* %270, %136
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  call void @_ZdlPv(i8* %270) #22
  br label %273

273:                                              ; preds = %272, %269
  %274 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %137, align 8, !tbaa !16
  %275 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %274, null
  br i1 %275, label %281, label %276

276:                                              ; preds = %273
  invoke void %274(i32 3, %"class.std::any"* nonnull %138, %"union.std::any::_Arg"* null)
          to label %277 unwind label %278

277:                                              ; preds = %276
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %137, align 8, !tbaa !16
  br label %281

278:                                              ; preds = %276
  %279 = landingpad { i8*, i32 }
          catch i8* null
  %280 = extractvalue { i8*, i32 } %279, 0
  call void @__clang_call_terminate(i8* %280) #25
  unreachable

281:                                              ; preds = %273, %277
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %110) #22
  %282 = load i8*, i8** %139, align 8, !tbaa !20
  %283 = icmp eq i8* %282, %141
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  call void @_ZdlPv(i8* %282) #22
  br label %285

285:                                              ; preds = %281, %284
  %286 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %142, align 8, !tbaa !24
  %287 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %286, null
  br i1 %287, label %293, label %288

288:                                              ; preds = %285
  %289 = invoke zeroext i1 %286(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %143, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %143, i32 3)
          to label %293 unwind label %290

290:                                              ; preds = %288
  %291 = landingpad { i8*, i32 }
          catch i8* null
  %292 = extractvalue { i8*, i32 } %291, 0
  call void @__clang_call_terminate(i8* %292) #25
  unreachable

293:                                              ; preds = %288, %285
  %294 = load i8*, i8** %144, align 8, !tbaa !20
  %295 = icmp eq i8* %294, %146
  br i1 %295, label %297, label %296

296:                                              ; preds = %293
  call void @_ZdlPv(i8* %294) #22
  br label %297

297:                                              ; preds = %296, %293
  %298 = load i8*, i8** %147, align 8, !tbaa !20
  %299 = icmp eq i8* %298, %149
  br i1 %299, label %301, label %300

300:                                              ; preds = %297
  call void @_ZdlPv(i8* %298) #22
  br label %301

301:                                              ; preds = %300, %297
  %302 = load i8*, i8** %150, align 8, !tbaa !20
  %303 = icmp eq i8* %302, %152
  br i1 %303, label %305, label %304

304:                                              ; preds = %301
  call void @_ZdlPv(i8* %302) #22
  br label %305

305:                                              ; preds = %304, %301
  %306 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %153, align 8, !tbaa !16
  %307 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %306, null
  br i1 %307, label %313, label %308

308:                                              ; preds = %305
  invoke void %306(i32 3, %"class.std::any"* nonnull %154, %"union.std::any::_Arg"* null)
          to label %309 unwind label %310

309:                                              ; preds = %308
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %153, align 8, !tbaa !16
  br label %313

310:                                              ; preds = %308
  %311 = landingpad { i8*, i32 }
          catch i8* null
  %312 = extractvalue { i8*, i32 } %311, 0
  call void @__clang_call_terminate(i8* %312) #25
  unreachable

313:                                              ; preds = %305, %309
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %97) #22
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %96) #22
  %314 = add nuw nsw i64 %229, 1
  %315 = icmp eq i64 %314, 6
  br i1 %315, label %220, label %228

316:                                              ; preds = %228
  %317 = landingpad { i8*, i32 }
          cleanup
  br label %318

318:                                              ; preds = %244, %316
  %319 = phi { i8*, i32 } [ %317, %316 ], [ %240, %244 ]
  %320 = extractvalue { i8*, i32 } %319, 0
  %321 = extractvalue { i8*, i32 } %319, 1
  br label %363

322:                                              ; preds = %245
  %323 = landingpad { i8*, i32 }
          cleanup
  %324 = extractvalue { i8*, i32 } %323, 0
  %325 = extractvalue { i8*, i32 } %323, 1
  br label %357

326:                                              ; preds = %248
  %327 = landingpad { i8*, i32 }
          cleanup
  %328 = extractvalue { i8*, i32 } %327, 0
  %329 = extractvalue { i8*, i32 } %327, 1
  %330 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %126, align 8, !tbaa !24
  %331 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %330, null
  br i1 %331, label %337, label %332

332:                                              ; preds = %326
  %333 = invoke zeroext i1 %330(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %127, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %127, i32 3)
          to label %337 unwind label %334

334:                                              ; preds = %332
  %335 = landingpad { i8*, i32 }
          catch i8* null
  %336 = extractvalue { i8*, i32 } %335, 0
  call void @__clang_call_terminate(i8* %336) #25
  unreachable

337:                                              ; preds = %332, %326
  %338 = load i8*, i8** %128, align 8, !tbaa !20
  %339 = icmp eq i8* %338, %130
  br i1 %339, label %341, label %340

340:                                              ; preds = %337
  call void @_ZdlPv(i8* %338) #22
  br label %341

341:                                              ; preds = %340, %337
  %342 = load i8*, i8** %131, align 8, !tbaa !20
  %343 = icmp eq i8* %342, %133
  br i1 %343, label %345, label %344

344:                                              ; preds = %341
  call void @_ZdlPv(i8* %342) #22
  br label %345

345:                                              ; preds = %344, %341
  %346 = load i8*, i8** %134, align 8, !tbaa !20
  %347 = icmp eq i8* %346, %136
  br i1 %347, label %349, label %348

348:                                              ; preds = %345
  call void @_ZdlPv(i8* %346) #22
  br label %349

349:                                              ; preds = %348, %345
  %350 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %137, align 8, !tbaa !16
  %351 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %350, null
  br i1 %351, label %357, label %352

352:                                              ; preds = %349
  invoke void %350(i32 3, %"class.std::any"* nonnull %138, %"union.std::any::_Arg"* null)
          to label %353 unwind label %354

353:                                              ; preds = %352
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %137, align 8, !tbaa !16
  br label %357

354:                                              ; preds = %352
  %355 = landingpad { i8*, i32 }
          catch i8* null
  %356 = extractvalue { i8*, i32 } %355, 0
  call void @__clang_call_terminate(i8* %356) #25
  unreachable

357:                                              ; preds = %353, %349, %322
  %358 = phi i8* [ %324, %322 ], [ %328, %349 ], [ %328, %353 ]
  %359 = phi i32 [ %325, %322 ], [ %329, %349 ], [ %329, %353 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %110) #22
  %360 = load i8*, i8** %139, align 8, !tbaa !20
  %361 = icmp eq i8* %360, %141
  br i1 %361, label %363, label %362

362:                                              ; preds = %357
  call void @_ZdlPv(i8* %360) #22
  br label %363

363:                                              ; preds = %362, %357, %318
  %364 = phi i8* [ %320, %318 ], [ %358, %357 ], [ %358, %362 ]
  %365 = phi i32 [ %321, %318 ], [ %359, %357 ], [ %359, %362 ]
  %366 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %142, align 8, !tbaa !24
  %367 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %366, null
  br i1 %367, label %373, label %368

368:                                              ; preds = %363
  %369 = invoke zeroext i1 %366(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %143, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %143, i32 3)
          to label %373 unwind label %370

370:                                              ; preds = %368
  %371 = landingpad { i8*, i32 }
          catch i8* null
  %372 = extractvalue { i8*, i32 } %371, 0
  call void @__clang_call_terminate(i8* %372) #25
  unreachable

373:                                              ; preds = %368, %363
  %374 = load i8*, i8** %144, align 8, !tbaa !20
  %375 = icmp eq i8* %374, %146
  br i1 %375, label %377, label %376

376:                                              ; preds = %373
  call void @_ZdlPv(i8* %374) #22
  br label %377

377:                                              ; preds = %376, %373
  %378 = load i8*, i8** %147, align 8, !tbaa !20
  %379 = icmp eq i8* %378, %149
  br i1 %379, label %381, label %380

380:                                              ; preds = %377
  call void @_ZdlPv(i8* %378) #22
  br label %381

381:                                              ; preds = %380, %377
  %382 = load i8*, i8** %150, align 8, !tbaa !20
  %383 = icmp eq i8* %382, %152
  br i1 %383, label %385, label %384

384:                                              ; preds = %381
  call void @_ZdlPv(i8* %382) #22
  br label %385

385:                                              ; preds = %384, %381
  %386 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %153, align 8, !tbaa !16
  %387 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %386, null
  br i1 %387, label %393, label %388

388:                                              ; preds = %385
  invoke void %386(i32 3, %"class.std::any"* nonnull %154, %"union.std::any::_Arg"* null)
          to label %389 unwind label %390

389:                                              ; preds = %388
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %153, align 8, !tbaa !16
  br label %393

390:                                              ; preds = %388
  %391 = landingpad { i8*, i32 }
          catch i8* null
  %392 = extractvalue { i8*, i32 } %391, 0
  call void @__clang_call_terminate(i8* %392) #25
  unreachable

393:                                              ; preds = %385, %389
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %97) #22
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %96) #22
  br label %394

394:                                              ; preds = %393, %219
  %395 = phi i8* [ %190, %219 ], [ %364, %393 ]
  %396 = phi i32 [ %191, %219 ], [ %365, %393 ]
  %397 = insertvalue { i8*, i32 } undef, i8* %395, 0
  %398 = insertvalue { i8*, i32 } %397, i32 %396, 1
  resume { i8*, i32 } %398

399:                                              ; preds = %183
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #22
  %400 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %33, align 8, !tbaa !24
  %401 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %400, null
  br i1 %401, label %404, label %402

402:                                              ; preds = %399
  %403 = invoke zeroext i1 %400(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, i32 3)
          to label %404 unwind label %160

404:                                              ; preds = %402, %399
  %405 = load i8*, i8** %35, align 8, !tbaa !20
  %406 = icmp eq i8* %405, %37
  br i1 %406, label %408, label %407

407:                                              ; preds = %404
  call void @_ZdlPv(i8* %405) #22
  br label %408

408:                                              ; preds = %407, %404
  %409 = load i8*, i8** %38, align 8, !tbaa !20
  %410 = icmp eq i8* %409, %40
  br i1 %410, label %412, label %411

411:                                              ; preds = %408
  call void @_ZdlPv(i8* %409) #22
  br label %412

412:                                              ; preds = %411, %408
  %413 = load i8*, i8** %41, align 8, !tbaa !20
  %414 = icmp eq i8* %413, %43
  br i1 %414, label %416, label %415

415:                                              ; preds = %412
  call void @_ZdlPv(i8* %413) #22
  br label %416

416:                                              ; preds = %415, %412
  %417 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  %418 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %416
  invoke void %417(i32 3, %"class.std::any"* nonnull %45, %"union.std::any::_Arg"* null)
          to label %420 unwind label %180

420:                                              ; preds = %419
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  br label %421

421:                                              ; preds = %420, %416
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %23) #22
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %23) #22
  %422 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %24, align 8, !tbaa !10, !noalias !28
  %423 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %422, i64 2
  call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %8, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %423)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #22
  %424 = load i64, i64* %27, align 8, !tbaa !20
  %425 = load i64, i64* %28, align 8, !tbaa !23
  store i64 %424, i64* %30, align 16
  store i64 %425, i64* %31, align 8
  invoke void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i64 13, %"class.fmt::v7::detail::value"* nonnull %32)
          to label %426 unwind label %188

426:                                              ; preds = %421
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #22
  %427 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %33, align 8, !tbaa !24
  %428 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %427, null
  br i1 %428, label %431, label %429

429:                                              ; preds = %426
  %430 = invoke zeroext i1 %427(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, i32 3)
          to label %431 unwind label %160

431:                                              ; preds = %429, %426
  %432 = load i8*, i8** %35, align 8, !tbaa !20
  %433 = icmp eq i8* %432, %37
  br i1 %433, label %435, label %434

434:                                              ; preds = %431
  call void @_ZdlPv(i8* %432) #22
  br label %435

435:                                              ; preds = %434, %431
  %436 = load i8*, i8** %38, align 8, !tbaa !20
  %437 = icmp eq i8* %436, %40
  br i1 %437, label %439, label %438

438:                                              ; preds = %435
  call void @_ZdlPv(i8* %436) #22
  br label %439

439:                                              ; preds = %438, %435
  %440 = load i8*, i8** %41, align 8, !tbaa !20
  %441 = icmp eq i8* %440, %43
  br i1 %441, label %443, label %442

442:                                              ; preds = %439
  call void @_ZdlPv(i8* %440) #22
  br label %443

443:                                              ; preds = %442, %439
  %444 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  %445 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %444, null
  br i1 %445, label %448, label %446

446:                                              ; preds = %443
  invoke void %444(i32 3, %"class.std::any"* nonnull %45, %"union.std::any::_Arg"* null)
          to label %447 unwind label %180

447:                                              ; preds = %446
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  br label %448

448:                                              ; preds = %447, %443
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %23) #22
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %23) #22
  %449 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %24, align 8, !tbaa !10, !noalias !28
  %450 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %449, i64 3
  call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %8, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %450)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #22
  %451 = load i64, i64* %27, align 8, !tbaa !20
  %452 = load i64, i64* %28, align 8, !tbaa !23
  store i64 %451, i64* %30, align 16
  store i64 %452, i64* %31, align 8
  invoke void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i64 13, %"class.fmt::v7::detail::value"* nonnull %32)
          to label %453 unwind label %188

453:                                              ; preds = %448
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #22
  %454 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %33, align 8, !tbaa !24
  %455 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %454, null
  br i1 %455, label %458, label %456

456:                                              ; preds = %453
  %457 = invoke zeroext i1 %454(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, i32 3)
          to label %458 unwind label %160

458:                                              ; preds = %456, %453
  %459 = load i8*, i8** %35, align 8, !tbaa !20
  %460 = icmp eq i8* %459, %37
  br i1 %460, label %462, label %461

461:                                              ; preds = %458
  call void @_ZdlPv(i8* %459) #22
  br label %462

462:                                              ; preds = %461, %458
  %463 = load i8*, i8** %38, align 8, !tbaa !20
  %464 = icmp eq i8* %463, %40
  br i1 %464, label %466, label %465

465:                                              ; preds = %462
  call void @_ZdlPv(i8* %463) #22
  br label %466

466:                                              ; preds = %465, %462
  %467 = load i8*, i8** %41, align 8, !tbaa !20
  %468 = icmp eq i8* %467, %43
  br i1 %468, label %470, label %469

469:                                              ; preds = %466
  call void @_ZdlPv(i8* %467) #22
  br label %470

470:                                              ; preds = %469, %466
  %471 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  %472 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %471, null
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  invoke void %471(i32 3, %"class.std::any"* nonnull %45, %"union.std::any::_Arg"* null)
          to label %474 unwind label %180

474:                                              ; preds = %473
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  br label %475

475:                                              ; preds = %474, %470
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %23) #22
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %23) #22
  %476 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %24, align 8, !tbaa !10, !noalias !28
  %477 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %476, i64 4
  call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %8, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %477)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #22
  %478 = load i64, i64* %27, align 8, !tbaa !20
  %479 = load i64, i64* %28, align 8, !tbaa !23
  store i64 %478, i64* %30, align 16
  store i64 %479, i64* %31, align 8
  invoke void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i64 13, %"class.fmt::v7::detail::value"* nonnull %32)
          to label %480 unwind label %188

480:                                              ; preds = %475
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #22
  %481 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %33, align 8, !tbaa !24
  %482 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %481, null
  br i1 %482, label %485, label %483

483:                                              ; preds = %480
  %484 = invoke zeroext i1 %481(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, i32 3)
          to label %485 unwind label %160

485:                                              ; preds = %483, %480
  %486 = load i8*, i8** %35, align 8, !tbaa !20
  %487 = icmp eq i8* %486, %37
  br i1 %487, label %489, label %488

488:                                              ; preds = %485
  call void @_ZdlPv(i8* %486) #22
  br label %489

489:                                              ; preds = %488, %485
  %490 = load i8*, i8** %38, align 8, !tbaa !20
  %491 = icmp eq i8* %490, %40
  br i1 %491, label %493, label %492

492:                                              ; preds = %489
  call void @_ZdlPv(i8* %490) #22
  br label %493

493:                                              ; preds = %492, %489
  %494 = load i8*, i8** %41, align 8, !tbaa !20
  %495 = icmp eq i8* %494, %43
  br i1 %495, label %497, label %496

496:                                              ; preds = %493
  call void @_ZdlPv(i8* %494) #22
  br label %497

497:                                              ; preds = %496, %493
  %498 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  %499 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %498, null
  br i1 %499, label %502, label %500

500:                                              ; preds = %497
  invoke void %498(i32 3, %"class.std::any"* nonnull %45, %"union.std::any::_Arg"* null)
          to label %501 unwind label %180

501:                                              ; preds = %500
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  br label %502

502:                                              ; preds = %501, %497
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %23) #22
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %23) #22
  %503 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %24, align 8, !tbaa !10, !noalias !28
  %504 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %503, i64 5
  call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %8, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %504)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #22
  %505 = load i64, i64* %27, align 8, !tbaa !20
  %506 = load i64, i64* %28, align 8, !tbaa !23
  store i64 %505, i64* %30, align 16
  store i64 %506, i64* %31, align 8
  invoke void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5, i64 13, %"class.fmt::v7::detail::value"* nonnull %32)
          to label %507 unwind label %188

507:                                              ; preds = %502
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #22
  %508 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %33, align 8, !tbaa !24
  %509 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %508, null
  br i1 %509, label %512, label %510

510:                                              ; preds = %507
  %511 = invoke zeroext i1 %508(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %34, i32 3)
          to label %512 unwind label %160

512:                                              ; preds = %510, %507
  %513 = load i8*, i8** %35, align 8, !tbaa !20
  %514 = icmp eq i8* %513, %37
  br i1 %514, label %516, label %515

515:                                              ; preds = %512
  call void @_ZdlPv(i8* %513) #22
  br label %516

516:                                              ; preds = %515, %512
  %517 = load i8*, i8** %38, align 8, !tbaa !20
  %518 = icmp eq i8* %517, %40
  br i1 %518, label %520, label %519

519:                                              ; preds = %516
  call void @_ZdlPv(i8* %517) #22
  br label %520

520:                                              ; preds = %519, %516
  %521 = load i8*, i8** %41, align 8, !tbaa !20
  %522 = icmp eq i8* %521, %43
  br i1 %522, label %524, label %523

523:                                              ; preds = %520
  call void @_ZdlPv(i8* %521) #22
  br label %524

524:                                              ; preds = %523, %520
  %525 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  %526 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %525, null
  br i1 %526, label %529, label %527

527:                                              ; preds = %524
  invoke void %525(i32 3, %"class.std::any"* nonnull %45, %"union.std::any::_Arg"* null)
          to label %528 unwind label %180

528:                                              ; preds = %527
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %44, align 8, !tbaa !16
  br label %529

529:                                              ; preds = %528, %524
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %23) #22
  %530 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !34
  %531 = getelementptr i8, i8* %530, i64 -24
  %532 = bitcast i8* %531 to i64*
  %533 = load i64, i64* %532, align 8
  %534 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %533
  %535 = getelementptr inbounds i8, i8* %534, i64 240
  %536 = bitcast i8* %535 to %"class.std::ctype"**
  %537 = load %"class.std::ctype"*, %"class.std::ctype"** %536, align 8, !tbaa !36
  %538 = icmp eq %"class.std::ctype"* %537, null
  br i1 %538, label %49, label %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: uwtable
define dso_local void @_ZN8partdiff9askparams15argument_parser10ask_paramsEv(%"class.partdiff::askparams::argument_parser"* nocapture %0) local_unnamed_addr #0 align 2 personality i32 (...)* @__gxx_personality_v0 {
  br label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %5 = bitcast %"class.std::__cxx11::basic_string"** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !69
  %7 = bitcast %"class.std::vector"* %3 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !71
  %9 = sub i64 %6, %8
  %10 = icmp eq i64 %9, 0
  %11 = inttoptr i64 %8 to %"class.std::__cxx11::basic_string"*
  br i1 %10, label %12, label %20

12:                                               ; preds = %2
  tail call void @_ZN8partdiff9askparams15argument_parser9ask_paramEm(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 0)
  tail call void @_ZN8partdiff9askparams15argument_parser9ask_paramEm(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 1)
  tail call void @_ZN8partdiff9askparams15argument_parser9ask_paramEm(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 2)
  tail call void @_ZN8partdiff9askparams15argument_parser9ask_paramEm(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 3)
  tail call void @_ZN8partdiff9askparams15argument_parser9ask_paramEm(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 4)
  %13 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 4
  %14 = load i64, i64* %13, align 8, !tbaa !72
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  tail call void @_ZN8partdiff9askparams15argument_parser9ask_paramEm(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 6)
  %17 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 5
  store i64 200000, i64* %17, align 8, !tbaa !80
  br label %76

18:                                               ; preds = %12
  tail call void @_ZN8partdiff9askparams15argument_parser9ask_paramEm(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 7)
  %19 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 6
  store double 0.000000e+00, double* %19, align 8, !tbaa !81
  br label %76

20:                                               ; preds = %2
  %21 = ashr exact i64 %9, 5
  %22 = icmp ult i64 %21, 6
  br i1 %22, label %71, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  %26 = load i64, i64* %25, align 8, !tbaa !23
  %27 = icmp ult i64 %26, 2
  %28 = select i1 %27, i64 %26, i64 2
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !20
  %33 = tail call i32 @bcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %28)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30, %23
  %36 = add i64 %26, -2
  %37 = icmp sgt i64 %36, 2147483647
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = icmp sgt i64 %36, -2147483648
  %40 = select i1 %39, i64 %36, i64 -2147483648
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %71, label %43

43:                                               ; preds = %35, %38
  br i1 %29, label %49, label %44

44:                                               ; preds = %30, %43
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8, !tbaa !20
  %47 = call i32 @bcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %28)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44, %43
  %50 = add i64 %26, -2
  %51 = icmp sgt i64 %50, 2147483647
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = icmp sgt i64 %50, -2147483648
  %54 = select i1 %53, i64 %50, i64 -2147483648
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %49, %44, %52
  tail call void @_ZN8partdiff9askparams15argument_parser11parse_paramEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %11)
  %58 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %24, align 8, !tbaa !71
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %58, i64 1
  tail call void @_ZN8partdiff9askparams15argument_parser11parse_paramEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %59)
  %60 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %24, align 8, !tbaa !71
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %60, i64 2
  tail call void @_ZN8partdiff9askparams15argument_parser11parse_paramEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %61)
  %62 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %24, align 8, !tbaa !71
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %62, i64 3
  tail call void @_ZN8partdiff9askparams15argument_parser11parse_paramEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 3, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %63)
  %64 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %24, align 8, !tbaa !71
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %64, i64 4
  tail call void @_ZN8partdiff9askparams15argument_parser11parse_paramEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 4, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %65)
  %66 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 4
  %67 = load i64, i64* %66, align 8, !tbaa !72
  %68 = icmp eq i64 %67, 1
  %69 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %24, align 8, !tbaa !71
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %69, i64 5
  br i1 %68, label %72, label %74

71:                                               ; preds = %52, %38, %20
  tail call void @_ZNK8partdiff9askparams15argument_parser5usageEv(%"class.partdiff::askparams::argument_parser"* nonnull %0)
  tail call void @exit(i32 0) #25
  unreachable

72:                                               ; preds = %57
  tail call void @_ZN8partdiff9askparams15argument_parser11parse_paramEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 6, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %70)
  %73 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 5
  store i64 200000, i64* %73, align 8, !tbaa !80
  br label %76

74:                                               ; preds = %57
  tail call void @_ZN8partdiff9askparams15argument_parser11parse_paramEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* nonnull %0, i64 7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %70)
  %75 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 6
  store double 0.000000e+00, double* %75, align 8, !tbaa !81
  br label %76

76:                                               ; preds = %74, %72, %16, %18
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN8partdiff9askparams15argument_parser9ask_paramEm(%"class.partdiff::askparams::argument_parser"* nocapture readonly %0, i64 %1) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  br label %6

6:                                                ; preds = %2
  %7 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %3 to i8*
  %8 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 3, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 3, i32 1
  %11 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 4, i32 0, i32 1
  %12 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 4, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 3, i32 2
  %14 = bitcast %union.anon* %13 to i8*
  %15 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 2, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 2, i32 2
  %17 = bitcast %union.anon* %16 to i8*
  %18 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 1, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 1, i32 2
  %20 = bitcast %union.anon* %19 to i8*
  %21 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 0, i32 0
  %22 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %3, i64 0, i32 0
  %23 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %25 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %27 = bitcast %union.anon* %24 to i8*
  %28 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %5 to i8*
  %29 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 4, i32 0, i32 1
  %30 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 4, i32 1
  %31 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 4, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 3, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 3, i32 2
  %34 = bitcast %union.anon* %33 to i8*
  %35 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 2, i32 0, i32 0
  %36 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 2, i32 2
  %37 = bitcast %union.anon* %36 to i8*
  %38 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 1, i32 0, i32 0
  %39 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 1, i32 2
  %40 = bitcast %union.anon* %39 to i8*
  %41 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 0, i32 0
  %42 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 0
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  br label %44

44:                                               ; preds = %177, %6
  %45 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !34
  %46 = getelementptr i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_streambuf"** getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 4) to i8*), i64 %48
  %50 = bitcast i8* %49 to %"class.std::ctype"**
  %51 = load %"class.std::ctype"*, %"class.std::ctype"** %50, align 8, !tbaa !36
  %52 = icmp eq %"class.std::ctype"* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

54:                                               ; preds = %44
  %55 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 8
  %56 = load i8, i8* %55, align 8, !tbaa !31
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 9, i64 10
  %60 = load i8, i8* %59, align 1, !tbaa !15
  br label %67

61:                                               ; preds = %54
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %51)
  %62 = bitcast %"class.std::ctype"* %51 to i8 (%"class.std::ctype"*, i8)***
  %63 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %62, align 8, !tbaa !34
  %64 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %63, i64 6
  %65 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %64, align 8
  %66 = call signext i8 %65(%"class.std::ctype"* nonnull %51, i8 signext 10)
  br label %67

67:                                               ; preds = %58, %61
  %68 = phi i8 [ %60, %58 ], [ %66, %61 ]
  %69 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull @_ZSt4cout, i8 signext %68)
  %70 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %69)
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #22
  %71 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %8, align 8, !tbaa !10, !noalias !82
  %72 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %71, i64 %1
  call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %3, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %72)
  %73 = load i8*, i8** %9, align 8, !tbaa !20
  %74 = load i64, i64* %10, align 8, !tbaa !23
  %75 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %70, i8* %73, i64 %74)
          to label %76 unwind label %179

76:                                               ; preds = %67
  %77 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull %75)
          to label %78 unwind label %179

78:                                               ; preds = %76
  %79 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !tbaa !24
  %80 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = invoke zeroext i1 %79(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %12, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %12, i32 3)
          to label %86 unwind label %83

83:                                               ; preds = %81
  %84 = landingpad { i8*, i32 }
          catch i8* null
  %85 = extractvalue { i8*, i32 } %84, 0
  call void @__clang_call_terminate(i8* %85) #25
  unreachable

86:                                               ; preds = %81, %78
  %87 = load i8*, i8** %9, align 8, !tbaa !20
  %88 = icmp eq i8* %87, %14
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  call void @_ZdlPv(i8* %87) #22
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i8*, i8** %15, align 8, !tbaa !20
  %92 = icmp eq i8* %91, %17
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  call void @_ZdlPv(i8* %91) #22
  br label %94

94:                                               ; preds = %93, %90
  %95 = load i8*, i8** %18, align 8, !tbaa !20
  %96 = icmp eq i8* %95, %20
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @_ZdlPv(i8* %95) #22
  br label %98

98:                                               ; preds = %97, %94
  %99 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %21, align 8, !tbaa !16
  %100 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  invoke void %99(i32 3, %"class.std::any"* nonnull %22, %"union.std::any::_Arg"* null)
          to label %102 unwind label %103

102:                                              ; preds = %101
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %21, align 8, !tbaa !16
  br label %106

103:                                              ; preds = %101
  %104 = landingpad { i8*, i32 }
          catch i8* null
  %105 = extractvalue { i8*, i32 } %104, 0
  call void @__clang_call_terminate(i8* %105) #25
  unreachable

106:                                              ; preds = %98, %102
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #22
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23) #22
  store %union.anon* %24, %union.anon** %25, align 8, !tbaa !18
  store i64 0, i64* %26, align 8, !tbaa !23
  store i8 0, i8* %27, align 8, !tbaa !15
  %107 = load i8*, i8** bitcast (%"class.std::basic_istream"* @_ZSt3cin to i8**), align 8, !tbaa !34
  %108 = getelementptr i8, i8* %107, i64 -24
  %109 = bitcast i8* %108 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i8, i8* getelementptr inbounds (%"class.std::basic_istream", %"class.std::basic_istream"* @_ZSt3cin, i64 0, i32 2, i32 2), i64 %110
  %112 = bitcast i8* %111 to %"class.std::ctype"**
  %113 = load %"class.std::ctype"*, %"class.std::ctype"** %112, align 8, !tbaa !36
  %114 = icmp eq %"class.std::ctype"* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %116 unwind label %213

116:                                              ; preds = %115
  unreachable

117:                                              ; preds = %106
  %118 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %113, i64 0, i32 8
  %119 = load i8, i8* %118, align 8, !tbaa !31
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %113, i64 0, i32 9, i64 10
  %123 = load i8, i8* %122, align 1, !tbaa !15
  br label %131

124:                                              ; preds = %117
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull %113)
          to label %125 unwind label %211

125:                                              ; preds = %124
  %126 = bitcast %"class.std::ctype"* %113 to i8 (%"class.std::ctype"*, i8)***
  %127 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %126, align 8, !tbaa !34
  %128 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %127, i64 6
  %129 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %128, align 8
  %130 = invoke signext i8 %129(%"class.std::ctype"* nonnull %113, i8 signext 10)
          to label %131 unwind label %211

131:                                              ; preds = %125, %121
  %132 = phi i8 [ %123, %121 ], [ %130, %125 ]
  %133 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16) @_ZSt3cin, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %4, i8 signext %132)
          to label %134 unwind label %211

134:                                              ; preds = %131
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %28) #22
  %135 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %8, align 8, !tbaa !10, !noalias !85
  %136 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %135, i64 %1
  invoke void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %5, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %136)
          to label %137 unwind label %219

137:                                              ; preds = %134
  %138 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %139 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %141 unwind label %225

141:                                              ; preds = %140
  unreachable

142:                                              ; preds = %137
  %143 = load i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)*, i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %30, align 8, !tbaa !26
  %144 = invoke zeroext i1 %143(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %31, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %145 unwind label %223

145:                                              ; preds = %142
  %146 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %147 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = invoke zeroext i1 %146(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %31, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %31, i32 3)
          to label %153 unwind label %150

150:                                              ; preds = %148
  %151 = landingpad { i8*, i32 }
          catch i8* null
  %152 = extractvalue { i8*, i32 } %151, 0
  call void @__clang_call_terminate(i8* %152) #25
  unreachable

153:                                              ; preds = %148, %145
  %154 = load i8*, i8** %32, align 8, !tbaa !20
  %155 = icmp eq i8* %154, %34
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  call void @_ZdlPv(i8* %154) #22
  br label %157

157:                                              ; preds = %156, %153
  %158 = load i8*, i8** %35, align 8, !tbaa !20
  %159 = icmp eq i8* %158, %37
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  call void @_ZdlPv(i8* %158) #22
  br label %161

161:                                              ; preds = %160, %157
  %162 = load i8*, i8** %38, align 8, !tbaa !20
  %163 = icmp eq i8* %162, %40
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @_ZdlPv(i8* %162) #22
  br label %165

165:                                              ; preds = %164, %161
  %166 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %41, align 8, !tbaa !16
  %167 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %165
  invoke void %166(i32 3, %"class.std::any"* nonnull %42, %"union.std::any::_Arg"* null)
          to label %169 unwind label %170

169:                                              ; preds = %168
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %41, align 8, !tbaa !16
  br label %173

170:                                              ; preds = %168
  %171 = landingpad { i8*, i32 }
          catch i8* null
  %172 = extractvalue { i8*, i32 } %171, 0
  call void @__clang_call_terminate(i8* %172) #25
  unreachable

173:                                              ; preds = %165, %169
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %28) #22
  %174 = load i8*, i8** %43, align 8, !tbaa !20
  %175 = icmp eq i8* %174, %27
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  call void @_ZdlPv(i8* %174) #22
  br label %177

177:                                              ; preds = %173, %176
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #22
  br i1 %144, label %178, label %44

178:                                              ; preds = %177
  ret void

179:                                              ; preds = %76, %67
  %180 = landingpad { i8*, i32 }
          cleanup
  %181 = extractvalue { i8*, i32 } %180, 0
  %182 = extractvalue { i8*, i32 } %180, 1
  %183 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8, !tbaa !24
  %184 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %183, null
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  %186 = invoke zeroext i1 %183(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %12, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %12, i32 3)
          to label %190 unwind label %187

187:                                              ; preds = %185
  %188 = landingpad { i8*, i32 }
          catch i8* null
  %189 = extractvalue { i8*, i32 } %188, 0
  call void @__clang_call_terminate(i8* %189) #25
  unreachable

190:                                              ; preds = %185, %179
  %191 = load i8*, i8** %9, align 8, !tbaa !20
  %192 = icmp eq i8* %191, %14
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  call void @_ZdlPv(i8* %191) #22
  br label %194

194:                                              ; preds = %193, %190
  %195 = load i8*, i8** %15, align 8, !tbaa !20
  %196 = icmp eq i8* %195, %17
  br i1 %196, label %198, label %197

197:                                              ; preds = %194
  call void @_ZdlPv(i8* %195) #22
  br label %198

198:                                              ; preds = %197, %194
  %199 = load i8*, i8** %18, align 8, !tbaa !20
  %200 = icmp eq i8* %199, %20
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  call void @_ZdlPv(i8* %199) #22
  br label %202

202:                                              ; preds = %201, %198
  %203 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %21, align 8, !tbaa !16
  %204 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  invoke void %203(i32 3, %"class.std::any"* nonnull %22, %"union.std::any::_Arg"* null)
          to label %206 unwind label %207

206:                                              ; preds = %205
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %21, align 8, !tbaa !16
  br label %210

207:                                              ; preds = %205
  %208 = landingpad { i8*, i32 }
          catch i8* null
  %209 = extractvalue { i8*, i32 } %208, 0
  call void @__clang_call_terminate(i8* %209) #25
  unreachable

210:                                              ; preds = %202, %206
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #22
  br label %268

211:                                              ; preds = %124, %125, %131
  %212 = landingpad { i8*, i32 }
          cleanup
  br label %215

213:                                              ; preds = %115
  %214 = landingpad { i8*, i32 }
          cleanup
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi { i8*, i32 } [ %212, %211 ], [ %214, %213 ]
  %217 = extractvalue { i8*, i32 } %216, 0
  %218 = extractvalue { i8*, i32 } %216, 1
  br label %261

219:                                              ; preds = %134
  %220 = landingpad { i8*, i32 }
          cleanup
  %221 = extractvalue { i8*, i32 } %220, 0
  %222 = extractvalue { i8*, i32 } %220, 1
  br label %258

223:                                              ; preds = %142
  %224 = landingpad { i8*, i32 }
          cleanup
  br label %227

225:                                              ; preds = %140
  %226 = landingpad { i8*, i32 }
          cleanup
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi { i8*, i32 } [ %224, %223 ], [ %226, %225 ]
  %229 = extractvalue { i8*, i32 } %228, 0
  %230 = extractvalue { i8*, i32 } %228, 1
  %231 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %232 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %227
  %234 = invoke zeroext i1 %231(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %31, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %31, i32 3)
          to label %238 unwind label %235

235:                                              ; preds = %233
  %236 = landingpad { i8*, i32 }
          catch i8* null
  %237 = extractvalue { i8*, i32 } %236, 0
  call void @__clang_call_terminate(i8* %237) #25
  unreachable

238:                                              ; preds = %233, %227
  %239 = load i8*, i8** %32, align 8, !tbaa !20
  %240 = icmp eq i8* %239, %34
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  call void @_ZdlPv(i8* %239) #22
  br label %242

242:                                              ; preds = %241, %238
  %243 = load i8*, i8** %35, align 8, !tbaa !20
  %244 = icmp eq i8* %243, %37
  br i1 %244, label %246, label %245

245:                                              ; preds = %242
  call void @_ZdlPv(i8* %243) #22
  br label %246

246:                                              ; preds = %245, %242
  %247 = load i8*, i8** %38, align 8, !tbaa !20
  %248 = icmp eq i8* %247, %40
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  call void @_ZdlPv(i8* %247) #22
  br label %250

250:                                              ; preds = %249, %246
  %251 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %41, align 8, !tbaa !16
  %252 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %251, null
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  invoke void %251(i32 3, %"class.std::any"* nonnull %42, %"union.std::any::_Arg"* null)
          to label %254 unwind label %255

254:                                              ; preds = %253
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %41, align 8, !tbaa !16
  br label %258

255:                                              ; preds = %253
  %256 = landingpad { i8*, i32 }
          catch i8* null
  %257 = extractvalue { i8*, i32 } %256, 0
  call void @__clang_call_terminate(i8* %257) #25
  unreachable

258:                                              ; preds = %254, %250, %219
  %259 = phi i8* [ %221, %219 ], [ %229, %250 ], [ %229, %254 ]
  %260 = phi i32 [ %222, %219 ], [ %230, %250 ], [ %230, %254 ]
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %28) #22
  br label %261

261:                                              ; preds = %258, %215
  %262 = phi i8* [ %259, %258 ], [ %217, %215 ]
  %263 = phi i32 [ %260, %258 ], [ %218, %215 ]
  %264 = load i8*, i8** %43, align 8, !tbaa !20
  %265 = icmp eq i8* %264, %27
  br i1 %265, label %267, label %266

266:                                              ; preds = %261
  call void @_ZdlPv(i8* %264) #22
  br label %267

267:                                              ; preds = %261, %266
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #22
  br label %268

268:                                              ; preds = %267, %210
  %269 = phi i8* [ %262, %267 ], [ %181, %210 ]
  %270 = phi i32 [ %263, %267 ], [ %182, %210 ]
  %271 = insertvalue { i8*, i32 } undef, i8* %269, 0
  %272 = insertvalue { i8*, i32 } %271, i32 %270, 1
  resume { i8*, i32 } %272
}

; Function Attrs: uwtable
define dso_local void @_ZN8partdiff9askparams15argument_parser9ask_paramENS1_14argument_indexE(%"class.partdiff::askparams::argument_parser"* nocapture readonly %0, i64 %1) local_unnamed_addr #0 align 2 {
  br label %3

3:                                                ; preds = %2
  tail call void @_ZN8partdiff9askparams15argument_parser9ask_paramEm(%"class.partdiff::askparams::argument_parser"* %0, i64 %1)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN8partdiff9askparams15argument_parser11parse_paramEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* nocapture readonly %0, i64 %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  br label %5

5:                                                ; preds = %3
  %6 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %6) #22
  %7 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %8 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %7, align 8, !tbaa !10, !noalias !88
  %9 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %8, i64 %1
  call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %4, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %9)
  %10 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 4, i32 0, i32 1
  %11 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %10, align 8, !tbaa !24
  %12 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %14 unwind label %61

14:                                               ; preds = %13
  unreachable

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 4, i32 1
  %17 = load i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)*, i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 4, i32 0, i32 0
  %19 = invoke zeroext i1 %17(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %18, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %2)
          to label %20 unwind label %61

20:                                               ; preds = %15
  %21 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %10, align 8, !tbaa !24
  %22 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = invoke zeroext i1 %21(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %18, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %18, i32 3)
          to label %28 unwind label %25

25:                                               ; preds = %23
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  call void @__clang_call_terminate(i8* %27) #25
  unreachable

28:                                               ; preds = %23, %20
  %29 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 3, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8, !tbaa !20
  %31 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 3, i32 2
  %32 = bitcast %union.anon* %31 to i8*
  %33 = icmp eq i8* %30, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void @_ZdlPv(i8* %30) #22
  br label %35

35:                                               ; preds = %34, %28
  %36 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 2, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !20
  %38 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 2, i32 2
  %39 = bitcast %union.anon* %38 to i8*
  %40 = icmp eq i8* %37, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  call void @_ZdlPv(i8* %37) #22
  br label %42

42:                                               ; preds = %41, %35
  %43 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 1, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8, !tbaa !20
  %45 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 1, i32 2
  %46 = bitcast %union.anon* %45 to i8*
  %47 = icmp eq i8* %44, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  call void @_ZdlPv(i8* %44) #22
  br label %49

49:                                               ; preds = %48, %42
  %50 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 0, i32 0
  %51 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %50, align 8, !tbaa !16
  %52 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 0
  invoke void %51(i32 3, %"class.std::any"* nonnull %54, %"union.std::any::_Arg"* null)
          to label %55 unwind label %56

55:                                               ; preds = %53
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %50, align 8, !tbaa !16
  br label %59

56:                                               ; preds = %53
  %57 = landingpad { i8*, i32 }
          catch i8* null
  %58 = extractvalue { i8*, i32 } %57, 0
  call void @__clang_call_terminate(i8* %58) #25
  unreachable

59:                                               ; preds = %49, %55
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %6) #22
  br i1 %19, label %103, label %60

60:                                               ; preds = %59
  call void @_ZNK8partdiff9askparams15argument_parser5usageEv(%"class.partdiff::askparams::argument_parser"* nonnull %0)
  call void @exit(i32 1) #25
  unreachable

61:                                               ; preds = %15, %13
  %62 = landingpad { i8*, i32 }
          cleanup
  %63 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %10, align 8, !tbaa !24
  %64 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 4, i32 0, i32 0
  %67 = invoke zeroext i1 %63(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %66, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %66, i32 3)
          to label %71 unwind label %68

68:                                               ; preds = %65
  %69 = landingpad { i8*, i32 }
          catch i8* null
  %70 = extractvalue { i8*, i32 } %69, 0
  call void @__clang_call_terminate(i8* %70) #25
  unreachable

71:                                               ; preds = %65, %61
  %72 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 3, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8, !tbaa !20
  %74 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 3, i32 2
  %75 = bitcast %union.anon* %74 to i8*
  %76 = icmp eq i8* %73, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  call void @_ZdlPv(i8* %73) #22
  br label %78

78:                                               ; preds = %77, %71
  %79 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 2, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8, !tbaa !20
  %81 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 2, i32 2
  %82 = bitcast %union.anon* %81 to i8*
  %83 = icmp eq i8* %80, %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  call void @_ZdlPv(i8* %80) #22
  br label %85

85:                                               ; preds = %84, %78
  %86 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 1, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8, !tbaa !20
  %88 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 1, i32 2
  %89 = bitcast %union.anon* %88 to i8*
  %90 = icmp eq i8* %87, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  call void @_ZdlPv(i8* %87) #22
  br label %92

92:                                               ; preds = %91, %85
  %93 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 0, i32 0
  %94 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %93, align 8, !tbaa !16
  %95 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %4, i64 0, i32 0
  invoke void %94(i32 3, %"class.std::any"* nonnull %97, %"union.std::any::_Arg"* null)
          to label %98 unwind label %99

98:                                               ; preds = %96
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %93, align 8, !tbaa !16
  br label %102

99:                                               ; preds = %96
  %100 = landingpad { i8*, i32 }
          catch i8* null
  %101 = extractvalue { i8*, i32 } %100, 0
  call void @__clang_call_terminate(i8* %101) #25
  unreachable

102:                                              ; preds = %92, %98
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %6) #22
  resume { i8*, i32 } %62

103:                                              ; preds = %59
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN8partdiff9askparams15argument_parser11parse_paramENS1_14argument_indexERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* nocapture readonly %0, i64 %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
  br label %4

4:                                                ; preds = %3
  tail call void @_ZN8partdiff9askparams15argument_parser11parse_paramEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.partdiff::askparams::argument_parser"* %0, i64 %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEv(%"class.partdiff::askparams::argument_parser"* %0) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.fmt::v7::format_arg_store.28", align 16
  %3 = alloca %"class.fmt::v7::format_arg_store.43", align 16
  %4 = alloca %"class.fmt::v7::format_arg_store.41", align 16
  %5 = alloca %"class.fmt::v7::format_arg_store.24", align 16
  %6 = alloca %"class.fmt::v7::format_arg_store.39", align 16
  %7 = alloca %"class.fmt::v7::format_arg_store.37", align 16
  %8 = alloca %"class.fmt::v7::format_arg_store.33", align 16
  %9 = alloca %"class.fmt::v7::format_arg_store.31", align 16
  %10 = alloca %"class.fmt::v7::format_arg_store.35", align 16
  %11 = alloca %"class.fmt::v7::format_arg_store.33", align 16
  %12 = alloca %"class.fmt::v7::format_arg_store.31", align 16
  %13 = alloca %"class.fmt::v7::format_arg_store.28", align 16
  %14 = alloca %"class.fmt::v7::format_arg_store.27", align 16
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::function.10", align 8
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::function.10", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::__cxx11::basic_string", align 8
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::function.10", align 8
  %31 = alloca %"class.std::__cxx11::basic_string", align 8
  %32 = alloca %"class.std::__cxx11::basic_string", align 8
  %33 = alloca %"class.std::__cxx11::basic_string", align 8
  %34 = alloca %"class.std::function.10", align 8
  %35 = alloca %"class.std::__cxx11::basic_string", align 8
  %36 = alloca %"class.std::__cxx11::basic_string", align 8
  %37 = alloca %"class.std::__cxx11::basic_string", align 8
  %38 = alloca %"class.std::function.10", align 8
  %39 = alloca %"class.std::__cxx11::basic_string", align 8
  %40 = alloca %"class.std::__cxx11::basic_string", align 8
  %41 = alloca %"class.std::__cxx11::basic_string", align 8
  %42 = alloca %"class.std::__cxx11::basic_string", align 8
  %43 = alloca %"class.std::__cxx11::basic_string", align 8
  %44 = alloca %"class.std::__cxx11::basic_string", align 8
  %45 = alloca %"class.std::__cxx11::basic_string", align 8
  %46 = alloca %"class.std::__cxx11::basic_string", align 8
  %47 = alloca %"class.std::__cxx11::basic_string", align 8
  %48 = alloca %"class.std::__cxx11::basic_string", align 8
  %49 = alloca %"class.std::function.10", align 8
  %50 = alloca %"class.std::__cxx11::basic_string", align 8
  %51 = alloca %"class.std::__cxx11::basic_string", align 8
  %52 = alloca %"class.std::__cxx11::basic_string", align 8
  %53 = alloca %"class.std::function.10", align 8
  br label %54

54:                                               ; preds = %1
  %55 = bitcast %"class.std::__cxx11::basic_string"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55) #22
  %56 = bitcast %"class.fmt::v7::format_arg_store.27"* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %56) #22, !noalias !91
  %57 = bitcast %"class.fmt::v7::format_arg_store.27"* %14 to i64*
  store i64 ptrtoint ([1 x i8]* @.str.7 to i64), i64* %57, align 16, !tbaa.struct !53, !alias.scope !94, !noalias !91
  %58 = getelementptr inbounds %"class.fmt::v7::format_arg_store.27", %"class.fmt::v7::format_arg_store.27"* %14, i64 0, i32 0, i32 0, i64 1
  %59 = bitcast %"class.fmt::v7::detail::value"* %58 to i64*
  store i64 17, i64* %59, align 16, !tbaa.struct !53, !alias.scope !94, !noalias !91
  %60 = getelementptr inbounds %"class.fmt::v7::format_arg_store.27", %"class.fmt::v7::format_arg_store.27"* %14, i64 0, i32 0, i32 0, i64 0
  call void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %15, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 6, i64 28, %"class.fmt::v7::detail::value"* nonnull %60)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %56) #22, !noalias !91
  %61 = bitcast %"class.std::__cxx11::basic_string"* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %61) #22
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 2
  %63 = bitcast %"class.std::__cxx11::basic_string"* %16 to %union.anon**
  store %union.anon* %62, %union.anon** %63, align 8, !tbaa !18
  %64 = bitcast %union.anon* %62 to i8*
  %65 = getelementptr %union.anon, %union.anon* %62, i64 0, i32 0
  store i64 8746942045507248993, i64* %65, align 8
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 1
  store i64 8, i64* %66, align 8, !tbaa !23
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 2, i32 1, i64 0
  store i8 0, i8* %67, align 8, !tbaa !15
  %68 = bitcast %"class.std::__cxx11::basic_string"* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %68) #22
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 2
  %70 = bitcast %"class.std::__cxx11::basic_string"* %17 to %union.anon**
  store %union.anon* %69, %union.anon** %70, align 8, !tbaa !18
  %71 = bitcast %union.anon* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(3) %71, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false) #22
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 1
  store i64 3, i64* %72, align 8, !tbaa !23
  %73 = getelementptr inbounds i8, i8* %71, i64 3
  store i8 0, i8* %73, align 1, !tbaa !15
  %74 = bitcast %"class.std::__cxx11::basic_string"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %74) #22
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 2
  %76 = bitcast %"class.std::__cxx11::basic_string"* %18 to %union.anon**
  store %union.anon* %75, %union.anon** %76, align 8, !tbaa !18
  %77 = bitcast %union.anon* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(11) %77, i8* nonnull align 1 dereferenceable(11) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11, i1 false) #22
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 1
  store i64 11, i64* %78, align 8, !tbaa !23
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 2, i32 1, i64 3
  store i8 0, i8* %79, align 1, !tbaa !15
  %80 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 0
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %19, i64 0, i32 2
  %82 = bitcast %"class.std::__cxx11::basic_string"* %19 to %union.anon**
  store %union.anon* %81, %union.anon** %82, align 8, !tbaa !18
  %83 = bitcast %union.anon* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(3) %83, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 3, i1 false) #22
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %19, i64 0, i32 1
  store i64 3, i64* %84, align 8, !tbaa !23
  %85 = getelementptr inbounds i8, i8* %83, i64 3
  store i8 0, i8* %85, align 1, !tbaa !15
  %86 = bitcast %"class.fmt::v7::format_arg_store.28"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86) #22, !noalias !97
  %87 = bitcast %"class.fmt::v7::format_arg_store.28"* %13 to i64*
  store i64 1024, i64* %87, align 16, !noalias !97
  %88 = getelementptr inbounds %"class.fmt::v7::format_arg_store.28", %"class.fmt::v7::format_arg_store.28"* %13, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %20, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i64 29, i64 4, %"class.fmt::v7::detail::value"* nonnull %88)
          to label %89 unwind label %713

89:                                               ; preds = %54
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86) #22, !noalias !97
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %21, i64 0, i32 2
  %91 = bitcast %"class.std::__cxx11::basic_string"* %21 to %union.anon**
  store %union.anon* %90, %union.anon** %91, align 8, !tbaa !18
  %92 = bitcast %union.anon* %90 to i8*
  %93 = invoke noalias nonnull i8* @_Znwm(i64 35) #24
          to label %94 unwind label %717

94:                                               ; preds = %89
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %21, i64 0, i32 0, i32 0
  store i8* %93, i8** %95, align 8, !tbaa !20
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %21, i64 0, i32 2, i32 0
  store i64 34, i64* %96, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(34) %93, i8* nonnull align 1 dereferenceable(34) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i64 34, i1 false) #22
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %21, i64 0, i32 1
  store i64 34, i64* %97, align 8, !tbaa !23
  %98 = getelementptr inbounds i8, i8* %93, i64 34
  store i8 0, i8* %98, align 1, !tbaa !15
  %99 = ptrtoint %"class.partdiff::askparams::argument_parser"* %0 to i64
  %100 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %22, i64 0, i32 0, i32 1
  %101 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %99, i64* %101, align 8, !tbaa !67
  %102 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %22, i64 0, i32 1
  store i1 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1E9_M_invokeERKSt9_Any_data", i1 (%"union.std::_Any_data"*)** %102, align 8, !tbaa !100
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %100, align 8, !tbaa !24
  invoke void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* nonnull %19, i64* %80, %"class.std::__cxx11::basic_string"* nonnull %20, %"class.std::__cxx11::basic_string"* nonnull %21, %"class.std::function.10"* nonnull %22)
          to label %103 unwind label %721

103:                                              ; preds = %94
  %104 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %100, align 8, !tbaa !24
  %105 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %22, i64 0, i32 0, i32 0
  %108 = invoke zeroext i1 %104(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %107, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %107, i32 3)
          to label %112 unwind label %109

109:                                              ; preds = %106
  %110 = landingpad { i8*, i32 }
          catch i8* null
  %111 = extractvalue { i8*, i32 } %110, 0
  call void @__clang_call_terminate(i8* %111) #25
  unreachable

112:                                              ; preds = %103, %106
  %113 = load i8*, i8** %95, align 8, !tbaa !20
  %114 = icmp eq i8* %113, %92
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @_ZdlPv(i8* %113) #22
  br label %116

116:                                              ; preds = %112, %115
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %20, i64 0, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8, !tbaa !20
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %20, i64 0, i32 2
  %120 = bitcast %union.anon* %119 to i8*
  %121 = icmp eq i8* %118, %120
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  call void @_ZdlPv(i8* %118) #22
  br label %123

123:                                              ; preds = %116, %122
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %19, i64 0, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8, !tbaa !20
  %126 = icmp eq i8* %125, %83
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  call void @_ZdlPv(i8* %125) #22
  br label %128

128:                                              ; preds = %123, %127
  %129 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 2
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 0, i32 2
  %131 = bitcast %"class.std::__cxx11::basic_string"* %23 to %union.anon**
  store %union.anon* %130, %union.anon** %131, align 8, !tbaa !18
  %132 = bitcast %union.anon* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(6) %132, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 6, i1 false) #22
  %133 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 0, i32 1
  store i64 6, i64* %133, align 8, !tbaa !23
  %134 = getelementptr inbounds i8, i8* %132, i64 6
  store i8 0, i8* %134, align 2, !tbaa !15
  %135 = bitcast %"class.fmt::v7::format_arg_store.31"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %135) #22, !noalias !102
  %136 = bitcast %"class.std::__cxx11::basic_string"* %15 to i64*
  %137 = load i64, i64* %136, align 8, !tbaa !20, !noalias !105
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 1
  %139 = load i64, i64* %138, align 8, !tbaa !23, !noalias !105
  %140 = bitcast %"class.fmt::v7::format_arg_store.31"* %12 to i64*
  store i64 %137, i64* %140, align 16, !tbaa.struct !53, !alias.scope !108, !noalias !102
  %141 = getelementptr inbounds i8, i8* %135, i64 8
  %142 = bitcast i8* %141 to i64*
  store i64 %139, i64* %142, align 8, !tbaa.struct !53, !alias.scope !108, !noalias !102
  %143 = getelementptr inbounds %"class.fmt::v7::format_arg_store.31", %"class.fmt::v7::format_arg_store.31"* %12, i64 0, i32 0, i32 0, i64 1
  %144 = bitcast %"class.fmt::v7::detail::value"* %143 to i64*
  store i64 1, i64* %144, align 16, !tbaa.struct !53, !alias.scope !108, !noalias !102
  %145 = getelementptr inbounds %"class.fmt::v7::format_arg_store.31", %"class.fmt::v7::format_arg_store.31"* %12, i64 0, i32 0, i32 0, i64 2
  %146 = bitcast %"class.fmt::v7::detail::value"* %145 to i64*
  store i64 2, i64* %146, align 16, !tbaa.struct !53, !alias.scope !108, !noalias !102
  %147 = getelementptr inbounds %"class.fmt::v7::format_arg_store.31", %"class.fmt::v7::format_arg_store.31"* %12, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %24, i8* nonnull getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i64 67, i64 1101, %"class.fmt::v7::detail::value"* nonnull %147)
          to label %148 unwind label %753

148:                                              ; preds = %128
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %135) #22, !noalias !102
  %149 = bitcast %"class.fmt::v7::format_arg_store.33"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %149) #22, !noalias !109
  %150 = bitcast %"class.fmt::v7::format_arg_store.33"* %11 to i64*
  store i64 1, i64* %150, align 16, !tbaa.struct !53, !alias.scope !112, !noalias !109
  %151 = getelementptr inbounds %"class.fmt::v7::format_arg_store.33", %"class.fmt::v7::format_arg_store.33"* %11, i64 0, i32 0, i32 0, i64 1
  %152 = bitcast %"class.fmt::v7::detail::value"* %151 to i64*
  store i64 2, i64* %152, align 16, !tbaa.struct !53, !alias.scope !112, !noalias !109
  %153 = getelementptr inbounds %"class.fmt::v7::format_arg_store.33", %"class.fmt::v7::format_arg_store.33"* %11, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %25, i8* nonnull getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0), i64 73, i64 68, %"class.fmt::v7::detail::value"* nonnull %153)
          to label %154 unwind label %757

154:                                              ; preds = %148
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %149) #22, !noalias !109
  %155 = ptrtoint i64* %129 to i64
  %156 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %26, i64 0, i32 0, i32 1
  %157 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %26, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %155, i64* %157, align 8, !tbaa !67
  %158 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %26, i64 0, i32 1
  store i1 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2E9_M_invokeERKSt9_Any_data", i1 (%"union.std::_Any_data"*)** %158, align 8, !tbaa !100
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %156, align 8, !tbaa !24
  invoke void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* nonnull %23, i64* nonnull %129, %"class.std::__cxx11::basic_string"* nonnull %24, %"class.std::__cxx11::basic_string"* nonnull %25, %"class.std::function.10"* nonnull %26)
          to label %159 unwind label %761

159:                                              ; preds = %154
  %160 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %156, align 8, !tbaa !24
  %161 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %160, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %26, i64 0, i32 0, i32 0
  %164 = invoke zeroext i1 %160(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %163, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %163, i32 3)
          to label %168 unwind label %165

165:                                              ; preds = %162
  %166 = landingpad { i8*, i32 }
          catch i8* null
  %167 = extractvalue { i8*, i32 } %166, 0
  call void @__clang_call_terminate(i8* %167) #25
  unreachable

168:                                              ; preds = %159, %162
  %169 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8, !tbaa !20
  %171 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 2
  %172 = bitcast %union.anon* %171 to i8*
  %173 = icmp eq i8* %170, %172
  br i1 %173, label %175, label %174

174:                                              ; preds = %168
  call void @_ZdlPv(i8* %170) #22
  br label %175

175:                                              ; preds = %168, %174
  %176 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %24, i64 0, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8, !tbaa !20
  %178 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %24, i64 0, i32 2
  %179 = bitcast %union.anon* %178 to i8*
  %180 = icmp eq i8* %177, %179
  br i1 %180, label %182, label %181

181:                                              ; preds = %175
  call void @_ZdlPv(i8* %177) #22
  br label %182

182:                                              ; preds = %175, %181
  %183 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 0, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8, !tbaa !20
  %185 = icmp eq i8* %184, %132
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  call void @_ZdlPv(i8* %184) #22
  br label %187

187:                                              ; preds = %182, %186
  %188 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 1
  %189 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 2
  %190 = bitcast %"class.std::__cxx11::basic_string"* %27 to %union.anon**
  store %union.anon* %189, %union.anon** %190, align 8, !tbaa !18
  %191 = bitcast %union.anon* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(5) %191, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i64 5, i1 false) #22
  %192 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 1
  store i64 5, i64* %192, align 8, !tbaa !23
  %193 = getelementptr inbounds i8, i8* %191, i64 5
  store i8 0, i8* %193, align 1, !tbaa !15
  %194 = bitcast %"class.fmt::v7::format_arg_store.35"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %194) #22, !noalias !115
  %195 = load i64, i64* %136, align 8, !tbaa !20, !noalias !118
  %196 = load i64, i64* %138, align 8, !tbaa !23, !noalias !118
  %197 = bitcast %"class.fmt::v7::format_arg_store.35"* %10 to i64*
  store i64 %195, i64* %197, align 16, !tbaa.struct !53, !alias.scope !121, !noalias !115
  %198 = getelementptr inbounds i8, i8* %194, i64 8
  %199 = bitcast i8* %198 to i64*
  store i64 %196, i64* %199, align 8, !tbaa.struct !53, !alias.scope !121, !noalias !115
  %200 = getelementptr inbounds %"class.fmt::v7::format_arg_store.35", %"class.fmt::v7::format_arg_store.35"* %10, i64 0, i32 0, i32 0, i64 1
  %201 = bitcast %"class.fmt::v7::detail::value"* %200 to i64*
  store i64 10240, i64* %201, align 16, !tbaa.struct !53, !alias.scope !121, !noalias !115
  %202 = getelementptr inbounds %"class.fmt::v7::format_arg_store.35", %"class.fmt::v7::format_arg_store.35"* %10, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %28, i8* nonnull getelementptr inbounds ([71 x i8], [71 x i8]* @.str.18, i64 0, i64 0), i64 70, i64 77, %"class.fmt::v7::detail::value"* nonnull %202)
          to label %203 unwind label %796

203:                                              ; preds = %187
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %194) #22, !noalias !115
  %204 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 2
  %205 = bitcast %"class.std::__cxx11::basic_string"* %29 to %union.anon**
  store %union.anon* %204, %union.anon** %205, align 8, !tbaa !18
  %206 = bitcast %union.anon* %204 to i8*
  %207 = invoke noalias nonnull i8* @_Znwm(i64 41) #24
          to label %208 unwind label %800

208:                                              ; preds = %203
  %209 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 0, i32 0
  store i8* %207, i8** %209, align 8, !tbaa !20
  %210 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 2, i32 0
  store i64 40, i64* %210, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(40) %207, i8* nonnull align 1 dereferenceable(40) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i64 40, i1 false) #22
  %211 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 1
  store i64 40, i64* %211, align 8, !tbaa !23
  %212 = getelementptr inbounds i8, i8* %207, i64 40
  store i8 0, i8* %212, align 1, !tbaa !15
  %213 = ptrtoint i64* %188 to i64
  %214 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %30, i64 0, i32 0, i32 1
  %215 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %213, i64* %215, align 8, !tbaa !67
  %216 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %30, i64 0, i32 1
  store i1 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3E9_M_invokeERKSt9_Any_data", i1 (%"union.std::_Any_data"*)** %216, align 8, !tbaa !100
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %214, align 8, !tbaa !24
  invoke void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* nonnull %27, i64* nonnull %188, %"class.std::__cxx11::basic_string"* nonnull %28, %"class.std::__cxx11::basic_string"* nonnull %29, %"class.std::function.10"* nonnull %30)
          to label %217 unwind label %804

217:                                              ; preds = %208
  %218 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %214, align 8, !tbaa !24
  %219 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %218, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %30, i64 0, i32 0, i32 0
  %222 = invoke zeroext i1 %218(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %221, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %221, i32 3)
          to label %226 unwind label %223

223:                                              ; preds = %220
  %224 = landingpad { i8*, i32 }
          catch i8* null
  %225 = extractvalue { i8*, i32 } %224, 0
  call void @__clang_call_terminate(i8* %225) #25
  unreachable

226:                                              ; preds = %217, %220
  %227 = load i8*, i8** %209, align 8, !tbaa !20
  %228 = icmp eq i8* %227, %206
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  call void @_ZdlPv(i8* %227) #22
  br label %230

230:                                              ; preds = %226, %229
  %231 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8, !tbaa !20
  %233 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 2
  %234 = bitcast %union.anon* %233 to i8*
  %235 = icmp eq i8* %232, %234
  br i1 %235, label %237, label %236

236:                                              ; preds = %230
  call void @_ZdlPv(i8* %232) #22
  br label %237

237:                                              ; preds = %230, %236
  %238 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8, !tbaa !20
  %240 = icmp eq i8* %239, %191
  br i1 %240, label %242, label %241

241:                                              ; preds = %237
  call void @_ZdlPv(i8* %239) #22
  br label %242

242:                                              ; preds = %237, %241
  %243 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 3
  %244 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %31, i64 0, i32 2
  %245 = bitcast %"class.std::__cxx11::basic_string"* %31 to %union.anon**
  store %union.anon* %244, %union.anon** %245, align 8, !tbaa !18
  %246 = bitcast %union.anon* %244 to i8*
  %247 = bitcast %union.anon* %244 to i32*
  store i32 1668183398, i32* %247, align 8
  %248 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %31, i64 0, i32 1
  store i64 4, i64* %248, align 8, !tbaa !23
  %249 = getelementptr inbounds i8, i8* %246, i64 4
  store i8 0, i8* %249, align 4, !tbaa !15
  %250 = bitcast %"class.fmt::v7::format_arg_store.31"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %250) #22, !noalias !122
  %251 = load i64, i64* %136, align 8, !tbaa !20, !noalias !125
  %252 = load i64, i64* %138, align 8, !tbaa !23, !noalias !125
  %253 = bitcast %"class.fmt::v7::format_arg_store.31"* %9 to i64*
  store i64 %251, i64* %253, align 16, !tbaa.struct !53, !alias.scope !128, !noalias !122
  %254 = getelementptr inbounds i8, i8* %250, i64 8
  %255 = bitcast i8* %254 to i64*
  store i64 %252, i64* %255, align 8, !tbaa.struct !53, !alias.scope !128, !noalias !122
  %256 = getelementptr inbounds %"class.fmt::v7::format_arg_store.31", %"class.fmt::v7::format_arg_store.31"* %9, i64 0, i32 0, i32 0, i64 1
  %257 = bitcast %"class.fmt::v7::detail::value"* %256 to i64*
  store i64 1, i64* %257, align 16, !tbaa.struct !53, !alias.scope !128, !noalias !122
  %258 = getelementptr inbounds %"class.fmt::v7::format_arg_store.31", %"class.fmt::v7::format_arg_store.31"* %9, i64 0, i32 0, i32 0, i64 2
  %259 = bitcast %"class.fmt::v7::detail::value"* %258 to i64*
  store i64 2, i64* %259, align 16, !tbaa.struct !53, !alias.scope !128, !noalias !122
  %260 = getelementptr inbounds %"class.fmt::v7::format_arg_store.31", %"class.fmt::v7::format_arg_store.31"* %9, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %32, i8* nonnull getelementptr inbounds ([108 x i8], [108 x i8]* @.str.21, i64 0, i64 0), i64 107, i64 1101, %"class.fmt::v7::detail::value"* nonnull %260)
          to label %261 unwind label %836

261:                                              ; preds = %242
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %250) #22, !noalias !122
  %262 = bitcast %"class.fmt::v7::format_arg_store.33"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %262) #22, !noalias !129
  %263 = bitcast %"class.fmt::v7::format_arg_store.33"* %8 to i64*
  store i64 1, i64* %263, align 16, !tbaa.struct !53, !alias.scope !132, !noalias !129
  %264 = getelementptr inbounds %"class.fmt::v7::format_arg_store.33", %"class.fmt::v7::format_arg_store.33"* %8, i64 0, i32 0, i32 0, i64 1
  %265 = bitcast %"class.fmt::v7::detail::value"* %264 to i64*
  store i64 2, i64* %265, align 16, !tbaa.struct !53, !alias.scope !132, !noalias !129
  %266 = getelementptr inbounds %"class.fmt::v7::format_arg_store.33", %"class.fmt::v7::format_arg_store.33"* %8, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %33, i8* nonnull getelementptr inbounds ([111 x i8], [111 x i8]* @.str.22, i64 0, i64 0), i64 110, i64 68, %"class.fmt::v7::detail::value"* nonnull %266)
          to label %267 unwind label %840

267:                                              ; preds = %261
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %262) #22, !noalias !129
  %268 = ptrtoint i64* %243 to i64
  %269 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %34, i64 0, i32 0, i32 1
  %270 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %34, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %268, i64* %270, align 8, !tbaa !67
  %271 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %34, i64 0, i32 1
  store i1 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4E9_M_invokeERKSt9_Any_data", i1 (%"union.std::_Any_data"*)** %271, align 8, !tbaa !100
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %269, align 8, !tbaa !24
  invoke void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* nonnull %31, i64* nonnull %243, %"class.std::__cxx11::basic_string"* nonnull %32, %"class.std::__cxx11::basic_string"* nonnull %33, %"class.std::function.10"* nonnull %34)
          to label %272 unwind label %844

272:                                              ; preds = %267
  %273 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %269, align 8, !tbaa !24
  %274 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %273, null
  br i1 %274, label %281, label %275

275:                                              ; preds = %272
  %276 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %34, i64 0, i32 0, i32 0
  %277 = invoke zeroext i1 %273(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %276, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %276, i32 3)
          to label %281 unwind label %278

278:                                              ; preds = %275
  %279 = landingpad { i8*, i32 }
          catch i8* null
  %280 = extractvalue { i8*, i32 } %279, 0
  call void @__clang_call_terminate(i8* %280) #25
  unreachable

281:                                              ; preds = %272, %275
  %282 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %33, i64 0, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8, !tbaa !20
  %284 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %33, i64 0, i32 2
  %285 = bitcast %union.anon* %284 to i8*
  %286 = icmp eq i8* %283, %285
  br i1 %286, label %288, label %287

287:                                              ; preds = %281
  call void @_ZdlPv(i8* %283) #22
  br label %288

288:                                              ; preds = %281, %287
  %289 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %32, i64 0, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8, !tbaa !20
  %291 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %32, i64 0, i32 2
  %292 = bitcast %union.anon* %291 to i8*
  %293 = icmp eq i8* %290, %292
  br i1 %293, label %295, label %294

294:                                              ; preds = %288
  call void @_ZdlPv(i8* %290) #22
  br label %295

295:                                              ; preds = %288, %294
  %296 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %31, i64 0, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8, !tbaa !20
  %298 = icmp eq i8* %297, %246
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  call void @_ZdlPv(i8* %297) #22
  br label %300

300:                                              ; preds = %295, %299
  %301 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 4
  %302 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 0, i32 2
  %303 = bitcast %"class.std::__cxx11::basic_string"* %35 to %union.anon**
  store %union.anon* %302, %union.anon** %303, align 8, !tbaa !18
  %304 = bitcast %union.anon* %302 to i8*
  %305 = bitcast %union.anon* %302 to i32*
  store i32 1836213620, i32* %305, align 8
  %306 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 0, i32 1
  store i64 4, i64* %306, align 8, !tbaa !23
  %307 = getelementptr inbounds i8, i8* %304, i64 4
  store i8 0, i8* %307, align 4, !tbaa !15
  %308 = bitcast %"class.fmt::v7::format_arg_store.37"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %308) #22, !noalias !135
  %309 = load i64, i64* %136, align 8, !tbaa !20, !noalias !138
  %310 = load i64, i64* %138, align 8, !tbaa !23, !noalias !138
  %311 = bitcast %"class.std::__cxx11::basic_string"* %16 to i64*
  %312 = load i64, i64* %311, align 8, !tbaa !20, !noalias !138
  %313 = load i64, i64* %66, align 8, !tbaa !23, !noalias !138
  %314 = bitcast %"class.fmt::v7::format_arg_store.37"* %7 to i64*
  store i64 %309, i64* %314, align 16, !tbaa.struct !53, !alias.scope !141, !noalias !135
  %315 = getelementptr inbounds i8, i8* %308, i64 8
  %316 = bitcast i8* %315 to i64*
  store i64 %310, i64* %316, align 8, !tbaa.struct !53, !alias.scope !141, !noalias !135
  %317 = getelementptr inbounds %"class.fmt::v7::format_arg_store.37", %"class.fmt::v7::format_arg_store.37"* %7, i64 0, i32 0, i32 0, i64 1
  %318 = bitcast %"class.fmt::v7::detail::value"* %317 to i64*
  store i64 1, i64* %318, align 16, !tbaa.struct !53, !alias.scope !141, !noalias !135
  %319 = getelementptr inbounds %"class.fmt::v7::format_arg_store.37", %"class.fmt::v7::format_arg_store.37"* %7, i64 0, i32 0, i32 0, i64 2
  %320 = bitcast %"class.fmt::v7::detail::value"* %319 to i8*
  %321 = bitcast %"class.fmt::v7::detail::value"* %319 to i64*
  store i64 %312, i64* %321, align 16, !tbaa.struct !53, !alias.scope !141, !noalias !135
  %322 = getelementptr inbounds i8, i8* %320, i64 8
  %323 = bitcast i8* %322 to i64*
  store i64 %313, i64* %323, align 8, !tbaa.struct !53, !alias.scope !141, !noalias !135
  %324 = getelementptr inbounds %"class.fmt::v7::format_arg_store.37", %"class.fmt::v7::format_arg_store.37"* %7, i64 0, i32 0, i32 0, i64 3
  %325 = bitcast %"class.fmt::v7::detail::value"* %324 to i64*
  store i64 2, i64* %325, align 16, !tbaa.struct !53, !alias.scope !141, !noalias !135
  %326 = getelementptr inbounds %"class.fmt::v7::format_arg_store.37", %"class.fmt::v7::format_arg_store.37"* %7, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %36, i8* nonnull getelementptr inbounds ([89 x i8], [89 x i8]* @.str.24, i64 0, i64 0), i64 88, i64 19789, %"class.fmt::v7::detail::value"* nonnull %326)
          to label %327 unwind label %879

327:                                              ; preds = %300
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %308) #22, !noalias !135
  %328 = bitcast %"class.fmt::v7::format_arg_store.39"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %328) #22, !noalias !142
  %329 = load i64, i64* %311, align 8, !tbaa !20, !noalias !145
  %330 = load i64, i64* %66, align 8, !tbaa !23, !noalias !145
  %331 = bitcast %"class.fmt::v7::format_arg_store.39"* %6 to i64*
  store i64 1, i64* %331, align 16, !tbaa.struct !53, !alias.scope !148, !noalias !142
  %332 = getelementptr inbounds %"class.fmt::v7::format_arg_store.39", %"class.fmt::v7::format_arg_store.39"* %6, i64 0, i32 0, i32 0, i64 1
  %333 = bitcast %"class.fmt::v7::detail::value"* %332 to i8*
  %334 = bitcast %"class.fmt::v7::detail::value"* %332 to i64*
  store i64 %329, i64* %334, align 16, !tbaa.struct !53, !alias.scope !148, !noalias !142
  %335 = getelementptr inbounds i8, i8* %333, i64 8
  %336 = bitcast i8* %335 to i64*
  store i64 %330, i64* %336, align 8, !tbaa.struct !53, !alias.scope !148, !noalias !142
  %337 = getelementptr inbounds %"class.fmt::v7::format_arg_store.39", %"class.fmt::v7::format_arg_store.39"* %6, i64 0, i32 0, i32 0, i64 2
  %338 = bitcast %"class.fmt::v7::detail::value"* %337 to i64*
  store i64 2, i64* %338, align 16, !tbaa.struct !53, !alias.scope !148, !noalias !142
  %339 = getelementptr inbounds %"class.fmt::v7::format_arg_store.39", %"class.fmt::v7::format_arg_store.39"* %6, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %37, i8* nonnull getelementptr inbounds ([85 x i8], [85 x i8]* @.str.25, i64 0, i64 0), i64 84, i64 1236, %"class.fmt::v7::detail::value"* nonnull %339)
          to label %340 unwind label %883

340:                                              ; preds = %327
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %328) #22, !noalias !142
  %341 = ptrtoint i64* %301 to i64
  %342 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %38, i64 0, i32 0, i32 1
  %343 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %38, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %341, i64* %343, align 8, !tbaa !67
  %344 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %38, i64 0, i32 1
  store i1 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5E9_M_invokeERKSt9_Any_data", i1 (%"union.std::_Any_data"*)** %344, align 8, !tbaa !100
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %342, align 8, !tbaa !24
  invoke void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* nonnull %35, i64* nonnull %301, %"class.std::__cxx11::basic_string"* nonnull %36, %"class.std::__cxx11::basic_string"* nonnull %37, %"class.std::function.10"* nonnull %38)
          to label %345 unwind label %887

345:                                              ; preds = %340
  %346 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %342, align 8, !tbaa !24
  %347 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %346, null
  br i1 %347, label %354, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %38, i64 0, i32 0, i32 0
  %350 = invoke zeroext i1 %346(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %349, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %349, i32 3)
          to label %354 unwind label %351

351:                                              ; preds = %348
  %352 = landingpad { i8*, i32 }
          catch i8* null
  %353 = extractvalue { i8*, i32 } %352, 0
  call void @__clang_call_terminate(i8* %353) #25
  unreachable

354:                                              ; preds = %345, %348
  %355 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %37, i64 0, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8, !tbaa !20
  %357 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %37, i64 0, i32 2
  %358 = bitcast %union.anon* %357 to i8*
  %359 = icmp eq i8* %356, %358
  br i1 %359, label %361, label %360

360:                                              ; preds = %354
  call void @_ZdlPv(i8* %356) #22
  br label %361

361:                                              ; preds = %354, %360
  %362 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %36, i64 0, i32 0, i32 0
  %363 = load i8*, i8** %362, align 8, !tbaa !20
  %364 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %36, i64 0, i32 2
  %365 = bitcast %union.anon* %364 to i8*
  %366 = icmp eq i8* %363, %365
  br i1 %366, label %368, label %367

367:                                              ; preds = %361
  call void @_ZdlPv(i8* %363) #22
  br label %368

368:                                              ; preds = %361, %367
  %369 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 0, i32 0, i32 0
  %370 = load i8*, i8** %369, align 8, !tbaa !20
  %371 = icmp eq i8* %370, %304
  br i1 %371, label %373, label %372

372:                                              ; preds = %368
  call void @_ZdlPv(i8* %370) #22
  br label %373

373:                                              ; preds = %368, %372
  %374 = bitcast %"class.fmt::v7::format_arg_store.24"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %374) #22, !noalias !149
  %375 = bitcast %"class.std::__cxx11::basic_string"* %17 to i64*
  %376 = load i64, i64* %375, align 8, !tbaa !20, !noalias !149
  %377 = load i64, i64* %72, align 8, !tbaa !23, !noalias !149
  %378 = bitcast %"class.fmt::v7::format_arg_store.24"* %5 to { i64, i64 }*
  %379 = bitcast %"class.fmt::v7::format_arg_store.24"* %5 to i64*
  store i64 %376, i64* %379, align 16, !noalias !149
  %380 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %378, i64 0, i32 1
  store i64 %377, i64* %380, align 8, !noalias !149
  %381 = getelementptr inbounds %"class.fmt::v7::format_arg_store.24", %"class.fmt::v7::format_arg_store.24"* %5, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %39, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i64 7, i64 13, %"class.fmt::v7::detail::value"* nonnull %381)
          to label %382 unwind label %922

382:                                              ; preds = %373
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %374) #22, !noalias !149
  %383 = bitcast %"class.std::__cxx11::basic_string"* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %383) #22
  invoke fastcc void @"_ZZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvENK3$_6clB5cxx11Ed"(%"class.std::__cxx11::basic_string"* noalias nonnull align 8 %41, double 1.000000e-04)
          to label %384 unwind label %926

384:                                              ; preds = %382
  %385 = bitcast %"class.std::__cxx11::basic_string"* %42 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %385) #22
  invoke fastcc void @"_ZZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvENK3$_6clB5cxx11Ed"(%"class.std::__cxx11::basic_string"* noalias nonnull align 8 %42, double 0x3BC79CA10C924223)
          to label %386 unwind label %930

386:                                              ; preds = %384
  %387 = bitcast %"class.fmt::v7::format_arg_store.41"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %387) #22, !noalias !152
  %388 = load i64, i64* %136, align 8, !tbaa !20, !noalias !155
  %389 = load i64, i64* %138, align 8, !tbaa !23, !noalias !155
  %390 = load i64, i64* %311, align 8, !tbaa !20, !noalias !155
  %391 = load i64, i64* %66, align 8, !tbaa !23, !noalias !155
  %392 = bitcast %"class.std::__cxx11::basic_string"* %41 to i64*
  %393 = load i64, i64* %392, align 8, !tbaa !20, !noalias !155
  %394 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 1
  %395 = load i64, i64* %394, align 8, !tbaa !23, !noalias !155
  %396 = bitcast %"class.std::__cxx11::basic_string"* %42 to i64*
  %397 = load i64, i64* %396, align 8, !tbaa !20, !noalias !155
  %398 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 1
  %399 = load i64, i64* %398, align 8, !tbaa !23, !noalias !155
  %400 = bitcast %"class.fmt::v7::format_arg_store.41"* %4 to i64*
  store i64 %388, i64* %400, align 16, !tbaa.struct !53, !alias.scope !158, !noalias !152
  %401 = getelementptr inbounds i8, i8* %387, i64 8
  %402 = bitcast i8* %401 to i64*
  store i64 %389, i64* %402, align 8, !tbaa.struct !53, !alias.scope !158, !noalias !152
  %403 = getelementptr inbounds %"class.fmt::v7::format_arg_store.41", %"class.fmt::v7::format_arg_store.41"* %4, i64 0, i32 0, i32 0, i64 1
  %404 = bitcast %"class.fmt::v7::detail::value"* %403 to i8*
  %405 = bitcast %"class.fmt::v7::detail::value"* %403 to i64*
  store i64 %390, i64* %405, align 16, !tbaa.struct !53, !alias.scope !158, !noalias !152
  %406 = getelementptr inbounds i8, i8* %404, i64 8
  %407 = bitcast i8* %406 to i64*
  store i64 %391, i64* %407, align 8, !tbaa.struct !53, !alias.scope !158, !noalias !152
  %408 = getelementptr inbounds %"class.fmt::v7::format_arg_store.41", %"class.fmt::v7::format_arg_store.41"* %4, i64 0, i32 0, i32 0, i64 2
  %409 = bitcast %"class.fmt::v7::detail::value"* %408 to i8*
  %410 = bitcast %"class.fmt::v7::detail::value"* %408 to i64*
  store i64 %393, i64* %410, align 16, !tbaa.struct !53, !alias.scope !158, !noalias !152
  %411 = getelementptr inbounds i8, i8* %409, i64 8
  %412 = bitcast i8* %411 to i64*
  store i64 %395, i64* %412, align 8, !tbaa.struct !53, !alias.scope !158, !noalias !152
  %413 = getelementptr inbounds %"class.fmt::v7::format_arg_store.41", %"class.fmt::v7::format_arg_store.41"* %4, i64 0, i32 0, i32 0, i64 3
  %414 = bitcast %"class.fmt::v7::detail::value"* %413 to i8*
  %415 = bitcast %"class.fmt::v7::detail::value"* %413 to i64*
  store i64 %397, i64* %415, align 16, !tbaa.struct !53, !alias.scope !158, !noalias !152
  %416 = getelementptr inbounds i8, i8* %414, i64 8
  %417 = bitcast i8* %416 to i64*
  store i64 %399, i64* %417, align 8, !tbaa.struct !53, !alias.scope !158, !noalias !152
  %418 = getelementptr inbounds %"class.fmt::v7::format_arg_store.41", %"class.fmt::v7::format_arg_store.41"* %4, i64 0, i32 0, i32 0, i64 4
  %419 = bitcast %"class.fmt::v7::detail::value"* %418 to i64*
  store i64 200000, i64* %419, align 16, !tbaa.struct !53, !alias.scope !158, !noalias !152
  %420 = getelementptr inbounds %"class.fmt::v7::format_arg_store.41", %"class.fmt::v7::format_arg_store.41"* %4, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %40, i8* nonnull getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i64 0, i64 0), i64 74, i64 318941, %"class.fmt::v7::detail::value"* nonnull %420)
          to label %421 unwind label %934

421:                                              ; preds = %386
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %387) #22, !noalias !152
  %422 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 2
  %423 = bitcast %"class.std::__cxx11::basic_string"* %43 to %union.anon**
  store %union.anon* %422, %union.anon** %423, align 8, !tbaa !18
  %424 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 0, i32 0
  %425 = load i8*, i8** %424, align 8, !tbaa !20
  %426 = load i64, i64* %78, align 8, !tbaa !23
  %427 = icmp ugt i64 %426, 15
  %428 = bitcast %union.anon* %422 to i8*
  br i1 %427, label %429, label %443

429:                                              ; preds = %421
  %430 = icmp slt i64 %426, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %429
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %432 unwind label %938

432:                                              ; preds = %431
  unreachable

433:                                              ; preds = %429
  %434 = add nuw i64 %426, 1
  %435 = icmp slt i64 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %433
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %437 unwind label %938

437:                                              ; preds = %436
  unreachable

438:                                              ; preds = %433
  %439 = invoke noalias nonnull i8* @_Znwm(i64 %434) #24
          to label %440 unwind label %938

440:                                              ; preds = %438
  %441 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 0, i32 0
  store i8* %439, i8** %441, align 8, !tbaa !20
  %442 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 2, i32 0
  store i64 %426, i64* %442, align 8, !tbaa !15
  br label %443

443:                                              ; preds = %440, %421
  %444 = phi i8* [ %439, %440 ], [ %428, %421 ]
  switch i64 %426, label %447 [
    i64 1, label %445
    i64 0, label %448
  ]

445:                                              ; preds = %443
  %446 = load i8, i8* %425, align 1, !tbaa !15
  store i8 %446, i8* %444, align 1, !tbaa !15
  br label %448

447:                                              ; preds = %443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %444, i8* align 1 %425, i64 %426, i1 false) #22
  br label %448

448:                                              ; preds = %447, %445, %443
  %449 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 1
  store i64 %426, i64* %449, align 8, !tbaa !23
  %450 = getelementptr inbounds i8, i8* %444, i64 %426
  store i8 0, i8* %450, align 1, !tbaa !15
  invoke void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* nonnull %39, %"class.std::__cxx11::basic_string"* nonnull %40, %"class.std::__cxx11::basic_string"* nonnull %43)
          to label %451 unwind label %942

451:                                              ; preds = %448
  %452 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 0, i32 0
  %453 = load i8*, i8** %452, align 8, !tbaa !20
  %454 = icmp eq i8* %453, %428
  br i1 %454, label %456, label %455

455:                                              ; preds = %451
  call void @_ZdlPv(i8* %453) #22
  br label %456

456:                                              ; preds = %451, %455
  %457 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %40, i64 0, i32 0, i32 0
  %458 = load i8*, i8** %457, align 8, !tbaa !20
  %459 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %40, i64 0, i32 2
  %460 = bitcast %union.anon* %459 to i8*
  %461 = icmp eq i8* %458, %460
  br i1 %461, label %463, label %462

462:                                              ; preds = %456
  call void @_ZdlPv(i8* %458) #22
  br label %463

463:                                              ; preds = %456, %462
  %464 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 0, i32 0
  %465 = load i8*, i8** %464, align 8, !tbaa !20
  %466 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 2
  %467 = bitcast %union.anon* %466 to i8*
  %468 = icmp eq i8* %465, %467
  br i1 %468, label %470, label %469

469:                                              ; preds = %463
  call void @_ZdlPv(i8* %465) #22
  br label %470

470:                                              ; preds = %463, %469
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %385) #22
  %471 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 0, i32 0
  %472 = load i8*, i8** %471, align 8, !tbaa !20
  %473 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 2
  %474 = bitcast %union.anon* %473 to i8*
  %475 = icmp eq i8* %472, %474
  br i1 %475, label %477, label %476

476:                                              ; preds = %470
  call void @_ZdlPv(i8* %472) #22
  br label %477

477:                                              ; preds = %470, %476
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %383) #22
  %478 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 0, i32 0
  %479 = load i8*, i8** %478, align 8, !tbaa !20
  %480 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 2
  %481 = bitcast %union.anon* %480 to i8*
  %482 = icmp eq i8* %479, %481
  br i1 %482, label %484, label %483

483:                                              ; preds = %477
  call void @_ZdlPv(i8* %479) #22
  br label %484

484:                                              ; preds = %477, %483
  %485 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 6
  %486 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 2
  %487 = bitcast %"class.std::__cxx11::basic_string"* %44 to %union.anon**
  store %union.anon* %486, %union.anon** %487, align 8, !tbaa !18
  %488 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 0, i32 0
  %489 = load i8*, i8** %488, align 8, !tbaa !20
  %490 = load i64, i64* %72, align 8, !tbaa !23
  %491 = icmp ugt i64 %490, 15
  %492 = bitcast %union.anon* %486 to i8*
  br i1 %491, label %493, label %507

493:                                              ; preds = %484
  %494 = icmp slt i64 %490, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %493
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %496 unwind label %986

496:                                              ; preds = %495
  unreachable

497:                                              ; preds = %493
  %498 = add nuw i64 %490, 1
  %499 = icmp slt i64 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %497
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %501 unwind label %986

501:                                              ; preds = %500
  unreachable

502:                                              ; preds = %497
  %503 = invoke noalias nonnull i8* @_Znwm(i64 %498) #24
          to label %504 unwind label %986

504:                                              ; preds = %502
  %505 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 0, i32 0
  store i8* %503, i8** %505, align 8, !tbaa !20
  %506 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 2, i32 0
  store i64 %490, i64* %506, align 8, !tbaa !15
  br label %507

507:                                              ; preds = %504, %484
  %508 = phi i8* [ %503, %504 ], [ %492, %484 ]
  switch i64 %490, label %511 [
    i64 1, label %509
    i64 0, label %512
  ]

509:                                              ; preds = %507
  %510 = load i8, i8* %489, align 1, !tbaa !15
  store i8 %510, i8* %508, align 1, !tbaa !15
  br label %512

511:                                              ; preds = %507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %508, i8* align 1 %489, i64 %490, i1 false) #22
  br label %512

512:                                              ; preds = %511, %509, %507
  %513 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 1
  store i64 %490, i64* %513, align 8, !tbaa !23
  %514 = getelementptr inbounds i8, i8* %508, i64 %490
  store i8 0, i8* %514, align 1, !tbaa !15
  %515 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 2
  %516 = bitcast %"class.std::__cxx11::basic_string"* %45 to %union.anon**
  store %union.anon* %515, %union.anon** %516, align 8, !tbaa !18
  %517 = load i8*, i8** %424, align 8, !tbaa !20
  %518 = load i64, i64* %78, align 8, !tbaa !23
  %519 = icmp ugt i64 %518, 15
  %520 = bitcast %union.anon* %515 to i8*
  br i1 %519, label %521, label %535

521:                                              ; preds = %512
  %522 = icmp slt i64 %518, 0
  br i1 %522, label %523, label %525

523:                                              ; preds = %521
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %524 unwind label %990

524:                                              ; preds = %523
  unreachable

525:                                              ; preds = %521
  %526 = add nuw i64 %518, 1
  %527 = icmp slt i64 %526, 0
  br i1 %527, label %528, label %530

528:                                              ; preds = %525
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %529 unwind label %990

529:                                              ; preds = %528
  unreachable

530:                                              ; preds = %525
  %531 = invoke noalias nonnull i8* @_Znwm(i64 %526) #24
          to label %532 unwind label %990

532:                                              ; preds = %530
  %533 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 0, i32 0
  store i8* %531, i8** %533, align 8, !tbaa !20
  %534 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 2, i32 0
  store i64 %518, i64* %534, align 8, !tbaa !15
  br label %535

535:                                              ; preds = %532, %512
  %536 = phi i8* [ %531, %532 ], [ %520, %512 ]
  switch i64 %518, label %539 [
    i64 1, label %537
    i64 0, label %540
  ]

537:                                              ; preds = %535
  %538 = load i8, i8* %517, align 1, !tbaa !15
  store i8 %538, i8* %536, align 1, !tbaa !15
  br label %540

539:                                              ; preds = %535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %536, i8* align 1 %517, i64 %518, i1 false) #22
  br label %540

540:                                              ; preds = %539, %537, %535
  %541 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 1
  store i64 %518, i64* %541, align 8, !tbaa !23
  %542 = getelementptr inbounds i8, i8* %536, i64 %518
  store i8 0, i8* %542, align 1, !tbaa !15
  %543 = bitcast %"class.std::__cxx11::basic_string"* %47 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %543) #22
  invoke fastcc void @"_ZZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvENK3$_6clB5cxx11Ed"(%"class.std::__cxx11::basic_string"* noalias nonnull align 8 %47, double 1.000000e-04)
          to label %544 unwind label %994

544:                                              ; preds = %540
  %545 = bitcast %"class.std::__cxx11::basic_string"* %48 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %545) #22
  invoke fastcc void @"_ZZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvENK3$_6clB5cxx11Ed"(%"class.std::__cxx11::basic_string"* noalias nonnull align 8 %48, double 0x3BC79CA10C924223)
          to label %546 unwind label %998

546:                                              ; preds = %544
  %547 = bitcast %"class.fmt::v7::format_arg_store.43"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %547) #22, !noalias !159
  %548 = load i64, i64* %311, align 8, !tbaa !20, !noalias !162
  %549 = load i64, i64* %66, align 8, !tbaa !23, !noalias !162
  %550 = bitcast %"class.std::__cxx11::basic_string"* %47 to i64*
  %551 = load i64, i64* %550, align 8, !tbaa !20, !noalias !162
  %552 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 1
  %553 = load i64, i64* %552, align 8, !tbaa !23, !noalias !162
  %554 = bitcast %"class.std::__cxx11::basic_string"* %48 to i64*
  %555 = load i64, i64* %554, align 8, !tbaa !20, !noalias !162
  %556 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 1
  %557 = load i64, i64* %556, align 8, !tbaa !23, !noalias !162
  %558 = bitcast %"class.fmt::v7::format_arg_store.43"* %3 to i64*
  store i64 %548, i64* %558, align 16, !tbaa.struct !53, !alias.scope !165, !noalias !159
  %559 = getelementptr inbounds i8, i8* %547, i64 8
  %560 = bitcast i8* %559 to i64*
  store i64 %549, i64* %560, align 8, !tbaa.struct !53, !alias.scope !165, !noalias !159
  %561 = getelementptr inbounds %"class.fmt::v7::format_arg_store.43", %"class.fmt::v7::format_arg_store.43"* %3, i64 0, i32 0, i32 0, i64 1
  %562 = bitcast %"class.fmt::v7::detail::value"* %561 to i8*
  %563 = bitcast %"class.fmt::v7::detail::value"* %561 to i64*
  store i64 %551, i64* %563, align 16, !tbaa.struct !53, !alias.scope !165, !noalias !159
  %564 = getelementptr inbounds i8, i8* %562, i64 8
  %565 = bitcast i8* %564 to i64*
  store i64 %553, i64* %565, align 8, !tbaa.struct !53, !alias.scope !165, !noalias !159
  %566 = getelementptr inbounds %"class.fmt::v7::format_arg_store.43", %"class.fmt::v7::format_arg_store.43"* %3, i64 0, i32 0, i32 0, i64 2
  %567 = bitcast %"class.fmt::v7::detail::value"* %566 to i8*
  %568 = bitcast %"class.fmt::v7::detail::value"* %566 to i64*
  store i64 %555, i64* %568, align 16, !tbaa.struct !53, !alias.scope !165, !noalias !159
  %569 = getelementptr inbounds i8, i8* %567, i64 8
  %570 = bitcast i8* %569 to i64*
  store i64 %557, i64* %570, align 8, !tbaa.struct !53, !alias.scope !165, !noalias !159
  %571 = getelementptr inbounds %"class.fmt::v7::format_arg_store.43", %"class.fmt::v7::format_arg_store.43"* %3, i64 0, i32 0, i32 0, i64 3
  %572 = bitcast %"class.fmt::v7::detail::value"* %571 to i8*
  %573 = bitcast %"class.fmt::v7::detail::value"* %571 to i64*
  store i64 %548, i64* %573, align 16, !tbaa.struct !53, !alias.scope !165, !noalias !159
  %574 = getelementptr inbounds i8, i8* %572, i64 8
  %575 = bitcast i8* %574 to i64*
  store i64 %549, i64* %575, align 8, !tbaa.struct !53, !alias.scope !165, !noalias !159
  %576 = getelementptr inbounds %"class.fmt::v7::format_arg_store.43", %"class.fmt::v7::format_arg_store.43"* %3, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %46, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i64 38, i64 56797, %"class.fmt::v7::detail::value"* nonnull %576)
          to label %577 unwind label %1002

577:                                              ; preds = %546
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %547) #22, !noalias !159
  %578 = ptrtoint double* %485 to i64
  %579 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %49, i64 0, i32 0, i32 1
  %580 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %578, i64* %580, align 8, !tbaa !67
  %581 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %49, i64 0, i32 1
  store i1 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7E9_M_invokeERKSt9_Any_data", i1 (%"union.std::_Any_data"*)** %581, align 8, !tbaa !100
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %579, align 8, !tbaa !24
  invoke void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* nonnull %44, double* nonnull %485, %"class.std::__cxx11::basic_string"* nonnull %45, %"class.std::__cxx11::basic_string"* nonnull %46, %"class.std::function.10"* nonnull %49)
          to label %582 unwind label %1006

582:                                              ; preds = %577
  %583 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %579, align 8, !tbaa !24
  %584 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %583, null
  br i1 %584, label %591, label %585

585:                                              ; preds = %582
  %586 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %49, i64 0, i32 0, i32 0
  %587 = invoke zeroext i1 %583(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %586, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %586, i32 3)
          to label %591 unwind label %588

588:                                              ; preds = %585
  %589 = landingpad { i8*, i32 }
          catch i8* null
  %590 = extractvalue { i8*, i32 } %589, 0
  call void @__clang_call_terminate(i8* %590) #25
  unreachable

591:                                              ; preds = %582, %585
  %592 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %46, i64 0, i32 0, i32 0
  %593 = load i8*, i8** %592, align 8, !tbaa !20
  %594 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %46, i64 0, i32 2
  %595 = bitcast %union.anon* %594 to i8*
  %596 = icmp eq i8* %593, %595
  br i1 %596, label %598, label %597

597:                                              ; preds = %591
  call void @_ZdlPv(i8* %593) #22
  br label %598

598:                                              ; preds = %591, %597
  %599 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 0, i32 0
  %600 = load i8*, i8** %599, align 8, !tbaa !20
  %601 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 2
  %602 = bitcast %union.anon* %601 to i8*
  %603 = icmp eq i8* %600, %602
  br i1 %603, label %605, label %604

604:                                              ; preds = %598
  call void @_ZdlPv(i8* %600) #22
  br label %605

605:                                              ; preds = %598, %604
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %545) #22
  %606 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 0, i32 0
  %607 = load i8*, i8** %606, align 8, !tbaa !20
  %608 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 2
  %609 = bitcast %union.anon* %608 to i8*
  %610 = icmp eq i8* %607, %609
  br i1 %610, label %612, label %611

611:                                              ; preds = %605
  call void @_ZdlPv(i8* %607) #22
  br label %612

612:                                              ; preds = %605, %611
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %543) #22
  %613 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 0, i32 0
  %614 = load i8*, i8** %613, align 8, !tbaa !20
  %615 = icmp eq i8* %614, %520
  br i1 %615, label %617, label %616

616:                                              ; preds = %612
  call void @_ZdlPv(i8* %614) #22
  br label %617

617:                                              ; preds = %612, %616
  %618 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 0, i32 0
  %619 = load i8*, i8** %618, align 8, !tbaa !20
  %620 = icmp eq i8* %619, %492
  br i1 %620, label %622, label %621

621:                                              ; preds = %617
  call void @_ZdlPv(i8* %619) #22
  br label %622

622:                                              ; preds = %617, %621
  %623 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 0, i32 5
  %624 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %50, i64 0, i32 2
  %625 = bitcast %"class.std::__cxx11::basic_string"* %50 to %union.anon**
  store %union.anon* %624, %union.anon** %625, align 8, !tbaa !18
  %626 = bitcast %union.anon* %624 to i8*
  %627 = bitcast %union.anon* %624 to i32*
  store i32 1919251561, i32* %627, align 8
  %628 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %50, i64 0, i32 1
  store i64 4, i64* %628, align 8, !tbaa !23
  %629 = getelementptr inbounds i8, i8* %626, i64 4
  store i8 0, i8* %629, align 4, !tbaa !15
  %630 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 2
  %631 = bitcast %"class.std::__cxx11::basic_string"* %51 to %union.anon**
  store %union.anon* %630, %union.anon** %631, align 8, !tbaa !18
  %632 = load i8*, i8** %424, align 8, !tbaa !20
  %633 = load i64, i64* %78, align 8, !tbaa !23
  %634 = icmp ugt i64 %633, 15
  %635 = bitcast %union.anon* %630 to i8*
  br i1 %634, label %636, label %650

636:                                              ; preds = %622
  %637 = icmp slt i64 %633, 0
  br i1 %637, label %638, label %640

638:                                              ; preds = %636
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %639 unwind label %1057

639:                                              ; preds = %638
  unreachable

640:                                              ; preds = %636
  %641 = add nuw i64 %633, 1
  %642 = icmp slt i64 %641, 0
  br i1 %642, label %643, label %645

643:                                              ; preds = %640
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %644 unwind label %1057

644:                                              ; preds = %643
  unreachable

645:                                              ; preds = %640
  %646 = invoke noalias nonnull i8* @_Znwm(i64 %641) #24
          to label %647 unwind label %1057

647:                                              ; preds = %645
  %648 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 0, i32 0
  store i8* %646, i8** %648, align 8, !tbaa !20
  %649 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 2, i32 0
  store i64 %633, i64* %649, align 8, !tbaa !15
  br label %650

650:                                              ; preds = %647, %622
  %651 = phi i8* [ %646, %647 ], [ %635, %622 ]
  switch i64 %633, label %654 [
    i64 1, label %652
    i64 0, label %655
  ]

652:                                              ; preds = %650
  %653 = load i8, i8* %632, align 1, !tbaa !15
  store i8 %653, i8* %651, align 1, !tbaa !15
  br label %655

654:                                              ; preds = %650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %651, i8* align 1 %632, i64 %633, i1 false) #22
  br label %655

655:                                              ; preds = %654, %652, %650
  %656 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 1
  store i64 %633, i64* %656, align 8, !tbaa !23
  %657 = getelementptr inbounds i8, i8* %651, i64 %633
  store i8 0, i8* %657, align 1, !tbaa !15
  %658 = bitcast %"class.fmt::v7::format_arg_store.28"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %658) #22, !noalias !166
  %659 = bitcast %"class.fmt::v7::format_arg_store.28"* %2 to i64*
  store i64 200000, i64* %659, align 16, !noalias !166
  %660 = getelementptr inbounds %"class.fmt::v7::format_arg_store.28", %"class.fmt::v7::format_arg_store.28"* %2, i64 0, i32 0, i32 0, i64 0
  invoke void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %52, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.30, i64 0, i64 0), i64 61, i64 4, %"class.fmt::v7::detail::value"* nonnull %660)
          to label %661 unwind label %1061

661:                                              ; preds = %655
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %658) #22, !noalias !166
  %662 = ptrtoint i64* %623 to i64
  %663 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %53, i64 0, i32 0, i32 1
  %664 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %662, i64* %664, align 8, !tbaa !67
  %665 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %53, i64 0, i32 1
  store i1 (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8E9_M_invokeERKSt9_Any_data", i1 (%"union.std::_Any_data"*)** %665, align 8, !tbaa !100
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %663, align 8, !tbaa !24
  invoke void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* nonnull %50, i64* nonnull %623, %"class.std::__cxx11::basic_string"* nonnull %51, %"class.std::__cxx11::basic_string"* nonnull %52, %"class.std::function.10"* nonnull %53)
          to label %666 unwind label %1065

666:                                              ; preds = %661
  %667 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %663, align 8, !tbaa !24
  %668 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %667, null
  br i1 %668, label %675, label %669

669:                                              ; preds = %666
  %670 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %53, i64 0, i32 0, i32 0
  %671 = invoke zeroext i1 %667(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %670, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %670, i32 3)
          to label %675 unwind label %672

672:                                              ; preds = %669
  %673 = landingpad { i8*, i32 }
          catch i8* null
  %674 = extractvalue { i8*, i32 } %673, 0
  call void @__clang_call_terminate(i8* %674) #25
  unreachable

675:                                              ; preds = %666, %669
  %676 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %52, i64 0, i32 0, i32 0
  %677 = load i8*, i8** %676, align 8, !tbaa !20
  %678 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %52, i64 0, i32 2
  %679 = bitcast %union.anon* %678 to i8*
  %680 = icmp eq i8* %677, %679
  br i1 %680, label %682, label %681

681:                                              ; preds = %675
  call void @_ZdlPv(i8* %677) #22
  br label %682

682:                                              ; preds = %675, %681
  %683 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 0, i32 0
  %684 = load i8*, i8** %683, align 8, !tbaa !20
  %685 = icmp eq i8* %684, %635
  br i1 %685, label %687, label %686

686:                                              ; preds = %682
  call void @_ZdlPv(i8* %684) #22
  br label %687

687:                                              ; preds = %682, %686
  %688 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %50, i64 0, i32 0, i32 0
  %689 = load i8*, i8** %688, align 8, !tbaa !20
  %690 = icmp eq i8* %689, %626
  br i1 %690, label %692, label %691

691:                                              ; preds = %687
  call void @_ZdlPv(i8* %689) #22
  br label %692

692:                                              ; preds = %687, %691
  %693 = load i8*, i8** %424, align 8, !tbaa !20
  %694 = icmp eq i8* %693, %77
  br i1 %694, label %696, label %695

695:                                              ; preds = %692
  call void @_ZdlPv(i8* %693) #22
  br label %696

696:                                              ; preds = %692, %695
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %74) #22
  %697 = load i8*, i8** %488, align 8, !tbaa !20
  %698 = icmp eq i8* %697, %71
  br i1 %698, label %700, label %699

699:                                              ; preds = %696
  call void @_ZdlPv(i8* %697) #22
  br label %700

700:                                              ; preds = %696, %699
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %68) #22
  %701 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 0, i32 0
  %702 = load i8*, i8** %701, align 8, !tbaa !20
  %703 = icmp eq i8* %702, %64
  br i1 %703, label %705, label %704

704:                                              ; preds = %700
  call void @_ZdlPv(i8* %702) #22
  br label %705

705:                                              ; preds = %700, %704
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %61) #22
  %706 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 0, i32 0
  %707 = load i8*, i8** %706, align 8, !tbaa !20
  %708 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 2
  %709 = bitcast %union.anon* %708 to i8*
  %710 = icmp eq i8* %707, %709
  br i1 %710, label %712, label %711

711:                                              ; preds = %705
  call void @_ZdlPv(i8* %707) #22
  br label %712

712:                                              ; preds = %705, %711
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55) #22
  ret void

713:                                              ; preds = %54
  %714 = landingpad { i8*, i32 }
          cleanup
  %715 = extractvalue { i8*, i32 } %714, 0
  %716 = extractvalue { i8*, i32 } %714, 1
  br label %746

717:                                              ; preds = %89
  %718 = landingpad { i8*, i32 }
          cleanup
  %719 = extractvalue { i8*, i32 } %718, 0
  %720 = extractvalue { i8*, i32 } %718, 1
  br label %737

721:                                              ; preds = %94
  %722 = landingpad { i8*, i32 }
          cleanup
  %723 = extractvalue { i8*, i32 } %722, 0
  %724 = extractvalue { i8*, i32 } %722, 1
  %725 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %100, align 8, !tbaa !24
  %726 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %725, null
  br i1 %726, label %733, label %727

727:                                              ; preds = %721
  %728 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %22, i64 0, i32 0, i32 0
  %729 = invoke zeroext i1 %725(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %728, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %728, i32 3)
          to label %733 unwind label %730

730:                                              ; preds = %727
  %731 = landingpad { i8*, i32 }
          catch i8* null
  %732 = extractvalue { i8*, i32 } %731, 0
  call void @__clang_call_terminate(i8* %732) #25
  unreachable

733:                                              ; preds = %727, %721
  %734 = load i8*, i8** %95, align 8, !tbaa !20
  %735 = icmp eq i8* %734, %92
  br i1 %735, label %737, label %736

736:                                              ; preds = %733
  call void @_ZdlPv(i8* %734) #22
  br label %737

737:                                              ; preds = %736, %733, %717
  %738 = phi i32 [ %720, %717 ], [ %724, %733 ], [ %724, %736 ]
  %739 = phi i8* [ %719, %717 ], [ %723, %733 ], [ %723, %736 ]
  %740 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %20, i64 0, i32 0, i32 0
  %741 = load i8*, i8** %740, align 8, !tbaa !20
  %742 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %20, i64 0, i32 2
  %743 = bitcast %union.anon* %742 to i8*
  %744 = icmp eq i8* %741, %743
  br i1 %744, label %746, label %745

745:                                              ; preds = %737
  call void @_ZdlPv(i8* %741) #22
  br label %746

746:                                              ; preds = %745, %737, %713
  %747 = phi i32 [ %716, %713 ], [ %738, %737 ], [ %738, %745 ]
  %748 = phi i8* [ %715, %713 ], [ %739, %737 ], [ %739, %745 ]
  %749 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %19, i64 0, i32 0, i32 0
  %750 = load i8*, i8** %749, align 8, !tbaa !20
  %751 = icmp eq i8* %750, %83
  br i1 %751, label %1098, label %752

752:                                              ; preds = %746
  call void @_ZdlPv(i8* %750) #22
  br label %1098

753:                                              ; preds = %128
  %754 = landingpad { i8*, i32 }
          cleanup
  %755 = extractvalue { i8*, i32 } %754, 0
  %756 = extractvalue { i8*, i32 } %754, 1
  br label %789

757:                                              ; preds = %148
  %758 = landingpad { i8*, i32 }
          cleanup
  %759 = extractvalue { i8*, i32 } %758, 0
  %760 = extractvalue { i8*, i32 } %758, 1
  br label %780

761:                                              ; preds = %154
  %762 = landingpad { i8*, i32 }
          cleanup
  %763 = extractvalue { i8*, i32 } %762, 0
  %764 = extractvalue { i8*, i32 } %762, 1
  %765 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %156, align 8, !tbaa !24
  %766 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %765, null
  br i1 %766, label %773, label %767

767:                                              ; preds = %761
  %768 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %26, i64 0, i32 0, i32 0
  %769 = invoke zeroext i1 %765(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %768, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %768, i32 3)
          to label %773 unwind label %770

770:                                              ; preds = %767
  %771 = landingpad { i8*, i32 }
          catch i8* null
  %772 = extractvalue { i8*, i32 } %771, 0
  call void @__clang_call_terminate(i8* %772) #25
  unreachable

773:                                              ; preds = %767, %761
  %774 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 0, i32 0
  %775 = load i8*, i8** %774, align 8, !tbaa !20
  %776 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 2
  %777 = bitcast %union.anon* %776 to i8*
  %778 = icmp eq i8* %775, %777
  br i1 %778, label %780, label %779

779:                                              ; preds = %773
  call void @_ZdlPv(i8* %775) #22
  br label %780

780:                                              ; preds = %779, %773, %757
  %781 = phi i32 [ %760, %757 ], [ %764, %773 ], [ %764, %779 ]
  %782 = phi i8* [ %759, %757 ], [ %763, %773 ], [ %763, %779 ]
  %783 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %24, i64 0, i32 0, i32 0
  %784 = load i8*, i8** %783, align 8, !tbaa !20
  %785 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %24, i64 0, i32 2
  %786 = bitcast %union.anon* %785 to i8*
  %787 = icmp eq i8* %784, %786
  br i1 %787, label %789, label %788

788:                                              ; preds = %780
  call void @_ZdlPv(i8* %784) #22
  br label %789

789:                                              ; preds = %788, %780, %753
  %790 = phi i32 [ %756, %753 ], [ %781, %780 ], [ %781, %788 ]
  %791 = phi i8* [ %755, %753 ], [ %782, %780 ], [ %782, %788 ]
  %792 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 0, i32 0, i32 0
  %793 = load i8*, i8** %792, align 8, !tbaa !20
  %794 = icmp eq i8* %793, %132
  br i1 %794, label %1098, label %795

795:                                              ; preds = %789
  call void @_ZdlPv(i8* %793) #22
  br label %1098

796:                                              ; preds = %187
  %797 = landingpad { i8*, i32 }
          cleanup
  %798 = extractvalue { i8*, i32 } %797, 0
  %799 = extractvalue { i8*, i32 } %797, 1
  br label %829

800:                                              ; preds = %203
  %801 = landingpad { i8*, i32 }
          cleanup
  %802 = extractvalue { i8*, i32 } %801, 0
  %803 = extractvalue { i8*, i32 } %801, 1
  br label %820

804:                                              ; preds = %208
  %805 = landingpad { i8*, i32 }
          cleanup
  %806 = extractvalue { i8*, i32 } %805, 0
  %807 = extractvalue { i8*, i32 } %805, 1
  %808 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %214, align 8, !tbaa !24
  %809 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %808, null
  br i1 %809, label %816, label %810

810:                                              ; preds = %804
  %811 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %30, i64 0, i32 0, i32 0
  %812 = invoke zeroext i1 %808(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %811, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %811, i32 3)
          to label %816 unwind label %813

813:                                              ; preds = %810
  %814 = landingpad { i8*, i32 }
          catch i8* null
  %815 = extractvalue { i8*, i32 } %814, 0
  call void @__clang_call_terminate(i8* %815) #25
  unreachable

816:                                              ; preds = %810, %804
  %817 = load i8*, i8** %209, align 8, !tbaa !20
  %818 = icmp eq i8* %817, %206
  br i1 %818, label %820, label %819

819:                                              ; preds = %816
  call void @_ZdlPv(i8* %817) #22
  br label %820

820:                                              ; preds = %819, %816, %800
  %821 = phi i32 [ %803, %800 ], [ %807, %816 ], [ %807, %819 ]
  %822 = phi i8* [ %802, %800 ], [ %806, %816 ], [ %806, %819 ]
  %823 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 0, i32 0
  %824 = load i8*, i8** %823, align 8, !tbaa !20
  %825 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 2
  %826 = bitcast %union.anon* %825 to i8*
  %827 = icmp eq i8* %824, %826
  br i1 %827, label %829, label %828

828:                                              ; preds = %820
  call void @_ZdlPv(i8* %824) #22
  br label %829

829:                                              ; preds = %828, %820, %796
  %830 = phi i32 [ %799, %796 ], [ %821, %820 ], [ %821, %828 ]
  %831 = phi i8* [ %798, %796 ], [ %822, %820 ], [ %822, %828 ]
  %832 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 0, i32 0
  %833 = load i8*, i8** %832, align 8, !tbaa !20
  %834 = icmp eq i8* %833, %191
  br i1 %834, label %1098, label %835

835:                                              ; preds = %829
  call void @_ZdlPv(i8* %833) #22
  br label %1098

836:                                              ; preds = %242
  %837 = landingpad { i8*, i32 }
          cleanup
  %838 = extractvalue { i8*, i32 } %837, 0
  %839 = extractvalue { i8*, i32 } %837, 1
  br label %872

840:                                              ; preds = %261
  %841 = landingpad { i8*, i32 }
          cleanup
  %842 = extractvalue { i8*, i32 } %841, 0
  %843 = extractvalue { i8*, i32 } %841, 1
  br label %863

844:                                              ; preds = %267
  %845 = landingpad { i8*, i32 }
          cleanup
  %846 = extractvalue { i8*, i32 } %845, 0
  %847 = extractvalue { i8*, i32 } %845, 1
  %848 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %269, align 8, !tbaa !24
  %849 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %848, null
  br i1 %849, label %856, label %850

850:                                              ; preds = %844
  %851 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %34, i64 0, i32 0, i32 0
  %852 = invoke zeroext i1 %848(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %851, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %851, i32 3)
          to label %856 unwind label %853

853:                                              ; preds = %850
  %854 = landingpad { i8*, i32 }
          catch i8* null
  %855 = extractvalue { i8*, i32 } %854, 0
  call void @__clang_call_terminate(i8* %855) #25
  unreachable

856:                                              ; preds = %850, %844
  %857 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %33, i64 0, i32 0, i32 0
  %858 = load i8*, i8** %857, align 8, !tbaa !20
  %859 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %33, i64 0, i32 2
  %860 = bitcast %union.anon* %859 to i8*
  %861 = icmp eq i8* %858, %860
  br i1 %861, label %863, label %862

862:                                              ; preds = %856
  call void @_ZdlPv(i8* %858) #22
  br label %863

863:                                              ; preds = %862, %856, %840
  %864 = phi i32 [ %843, %840 ], [ %847, %856 ], [ %847, %862 ]
  %865 = phi i8* [ %842, %840 ], [ %846, %856 ], [ %846, %862 ]
  %866 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %32, i64 0, i32 0, i32 0
  %867 = load i8*, i8** %866, align 8, !tbaa !20
  %868 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %32, i64 0, i32 2
  %869 = bitcast %union.anon* %868 to i8*
  %870 = icmp eq i8* %867, %869
  br i1 %870, label %872, label %871

871:                                              ; preds = %863
  call void @_ZdlPv(i8* %867) #22
  br label %872

872:                                              ; preds = %871, %863, %836
  %873 = phi i32 [ %839, %836 ], [ %864, %863 ], [ %864, %871 ]
  %874 = phi i8* [ %838, %836 ], [ %865, %863 ], [ %865, %871 ]
  %875 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %31, i64 0, i32 0, i32 0
  %876 = load i8*, i8** %875, align 8, !tbaa !20
  %877 = icmp eq i8* %876, %246
  br i1 %877, label %1098, label %878

878:                                              ; preds = %872
  call void @_ZdlPv(i8* %876) #22
  br label %1098

879:                                              ; preds = %300
  %880 = landingpad { i8*, i32 }
          cleanup
  %881 = extractvalue { i8*, i32 } %880, 0
  %882 = extractvalue { i8*, i32 } %880, 1
  br label %915

883:                                              ; preds = %327
  %884 = landingpad { i8*, i32 }
          cleanup
  %885 = extractvalue { i8*, i32 } %884, 0
  %886 = extractvalue { i8*, i32 } %884, 1
  br label %906

887:                                              ; preds = %340
  %888 = landingpad { i8*, i32 }
          cleanup
  %889 = extractvalue { i8*, i32 } %888, 0
  %890 = extractvalue { i8*, i32 } %888, 1
  %891 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %342, align 8, !tbaa !24
  %892 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %891, null
  br i1 %892, label %899, label %893

893:                                              ; preds = %887
  %894 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %38, i64 0, i32 0, i32 0
  %895 = invoke zeroext i1 %891(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %894, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %894, i32 3)
          to label %899 unwind label %896

896:                                              ; preds = %893
  %897 = landingpad { i8*, i32 }
          catch i8* null
  %898 = extractvalue { i8*, i32 } %897, 0
  call void @__clang_call_terminate(i8* %898) #25
  unreachable

899:                                              ; preds = %893, %887
  %900 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %37, i64 0, i32 0, i32 0
  %901 = load i8*, i8** %900, align 8, !tbaa !20
  %902 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %37, i64 0, i32 2
  %903 = bitcast %union.anon* %902 to i8*
  %904 = icmp eq i8* %901, %903
  br i1 %904, label %906, label %905

905:                                              ; preds = %899
  call void @_ZdlPv(i8* %901) #22
  br label %906

906:                                              ; preds = %905, %899, %883
  %907 = phi i32 [ %886, %883 ], [ %890, %899 ], [ %890, %905 ]
  %908 = phi i8* [ %885, %883 ], [ %889, %899 ], [ %889, %905 ]
  %909 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %36, i64 0, i32 0, i32 0
  %910 = load i8*, i8** %909, align 8, !tbaa !20
  %911 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %36, i64 0, i32 2
  %912 = bitcast %union.anon* %911 to i8*
  %913 = icmp eq i8* %910, %912
  br i1 %913, label %915, label %914

914:                                              ; preds = %906
  call void @_ZdlPv(i8* %910) #22
  br label %915

915:                                              ; preds = %914, %906, %879
  %916 = phi i32 [ %882, %879 ], [ %907, %906 ], [ %907, %914 ]
  %917 = phi i8* [ %881, %879 ], [ %908, %906 ], [ %908, %914 ]
  %918 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 0, i32 0, i32 0
  %919 = load i8*, i8** %918, align 8, !tbaa !20
  %920 = icmp eq i8* %919, %304
  br i1 %920, label %1098, label %921

921:                                              ; preds = %915
  call void @_ZdlPv(i8* %919) #22
  br label %1098

922:                                              ; preds = %373
  %923 = landingpad { i8*, i32 }
          cleanup
  %924 = extractvalue { i8*, i32 } %923, 0
  %925 = extractvalue { i8*, i32 } %923, 1
  br label %1098

926:                                              ; preds = %382
  %927 = landingpad { i8*, i32 }
          cleanup
  %928 = extractvalue { i8*, i32 } %927, 0
  %929 = extractvalue { i8*, i32 } %927, 1
  br label %977

930:                                              ; preds = %384
  %931 = landingpad { i8*, i32 }
          cleanup
  %932 = extractvalue { i8*, i32 } %931, 0
  %933 = extractvalue { i8*, i32 } %931, 1
  br label %968

934:                                              ; preds = %386
  %935 = landingpad { i8*, i32 }
          cleanup
  %936 = extractvalue { i8*, i32 } %935, 0
  %937 = extractvalue { i8*, i32 } %935, 1
  br label %959

938:                                              ; preds = %438, %436, %431
  %939 = landingpad { i8*, i32 }
          cleanup
  %940 = extractvalue { i8*, i32 } %939, 0
  %941 = extractvalue { i8*, i32 } %939, 1
  br label %950

942:                                              ; preds = %448
  %943 = landingpad { i8*, i32 }
          cleanup
  %944 = extractvalue { i8*, i32 } %943, 0
  %945 = extractvalue { i8*, i32 } %943, 1
  %946 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 0, i32 0
  %947 = load i8*, i8** %946, align 8, !tbaa !20
  %948 = icmp eq i8* %947, %428
  br i1 %948, label %950, label %949

949:                                              ; preds = %942
  call void @_ZdlPv(i8* %947) #22
  br label %950

950:                                              ; preds = %949, %942, %938
  %951 = phi i32 [ %941, %938 ], [ %945, %942 ], [ %945, %949 ]
  %952 = phi i8* [ %940, %938 ], [ %944, %942 ], [ %944, %949 ]
  %953 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %40, i64 0, i32 0, i32 0
  %954 = load i8*, i8** %953, align 8, !tbaa !20
  %955 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %40, i64 0, i32 2
  %956 = bitcast %union.anon* %955 to i8*
  %957 = icmp eq i8* %954, %956
  br i1 %957, label %959, label %958

958:                                              ; preds = %950
  call void @_ZdlPv(i8* %954) #22
  br label %959

959:                                              ; preds = %958, %950, %934
  %960 = phi i32 [ %937, %934 ], [ %951, %950 ], [ %951, %958 ]
  %961 = phi i8* [ %936, %934 ], [ %952, %950 ], [ %952, %958 ]
  %962 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 0, i32 0
  %963 = load i8*, i8** %962, align 8, !tbaa !20
  %964 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 2
  %965 = bitcast %union.anon* %964 to i8*
  %966 = icmp eq i8* %963, %965
  br i1 %966, label %968, label %967

967:                                              ; preds = %959
  call void @_ZdlPv(i8* %963) #22
  br label %968

968:                                              ; preds = %967, %959, %930
  %969 = phi i32 [ %933, %930 ], [ %960, %959 ], [ %960, %967 ]
  %970 = phi i8* [ %932, %930 ], [ %961, %959 ], [ %961, %967 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %385) #22
  %971 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 0, i32 0
  %972 = load i8*, i8** %971, align 8, !tbaa !20
  %973 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %41, i64 0, i32 2
  %974 = bitcast %union.anon* %973 to i8*
  %975 = icmp eq i8* %972, %974
  br i1 %975, label %977, label %976

976:                                              ; preds = %968
  call void @_ZdlPv(i8* %972) #22
  br label %977

977:                                              ; preds = %976, %968, %926
  %978 = phi i32 [ %929, %926 ], [ %969, %968 ], [ %969, %976 ]
  %979 = phi i8* [ %928, %926 ], [ %970, %968 ], [ %970, %976 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %383) #22
  %980 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 0, i32 0
  %981 = load i8*, i8** %980, align 8, !tbaa !20
  %982 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 2
  %983 = bitcast %union.anon* %982 to i8*
  %984 = icmp eq i8* %981, %983
  br i1 %984, label %1098, label %985

985:                                              ; preds = %977
  call void @_ZdlPv(i8* %981) #22
  br label %1098

986:                                              ; preds = %502, %500, %495
  %987 = landingpad { i8*, i32 }
          cleanup
  %988 = extractvalue { i8*, i32 } %987, 0
  %989 = extractvalue { i8*, i32 } %987, 1
  br label %1098

990:                                              ; preds = %530, %528, %523
  %991 = landingpad { i8*, i32 }
          cleanup
  %992 = extractvalue { i8*, i32 } %991, 0
  %993 = extractvalue { i8*, i32 } %991, 1
  br label %1050

994:                                              ; preds = %540
  %995 = landingpad { i8*, i32 }
          cleanup
  %996 = extractvalue { i8*, i32 } %995, 0
  %997 = extractvalue { i8*, i32 } %995, 1
  br label %1043

998:                                              ; preds = %544
  %999 = landingpad { i8*, i32 }
          cleanup
  %1000 = extractvalue { i8*, i32 } %999, 0
  %1001 = extractvalue { i8*, i32 } %999, 1
  br label %1034

1002:                                             ; preds = %546
  %1003 = landingpad { i8*, i32 }
          cleanup
  %1004 = extractvalue { i8*, i32 } %1003, 0
  %1005 = extractvalue { i8*, i32 } %1003, 1
  br label %1025

1006:                                             ; preds = %577
  %1007 = landingpad { i8*, i32 }
          cleanup
  %1008 = extractvalue { i8*, i32 } %1007, 0
  %1009 = extractvalue { i8*, i32 } %1007, 1
  %1010 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %579, align 8, !tbaa !24
  %1011 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %1010, null
  br i1 %1011, label %1018, label %1012

1012:                                             ; preds = %1006
  %1013 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %49, i64 0, i32 0, i32 0
  %1014 = invoke zeroext i1 %1010(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1013, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1013, i32 3)
          to label %1018 unwind label %1015

1015:                                             ; preds = %1012
  %1016 = landingpad { i8*, i32 }
          catch i8* null
  %1017 = extractvalue { i8*, i32 } %1016, 0
  call void @__clang_call_terminate(i8* %1017) #25
  unreachable

1018:                                             ; preds = %1012, %1006
  %1019 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %46, i64 0, i32 0, i32 0
  %1020 = load i8*, i8** %1019, align 8, !tbaa !20
  %1021 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %46, i64 0, i32 2
  %1022 = bitcast %union.anon* %1021 to i8*
  %1023 = icmp eq i8* %1020, %1022
  br i1 %1023, label %1025, label %1024

1024:                                             ; preds = %1018
  call void @_ZdlPv(i8* %1020) #22
  br label %1025

1025:                                             ; preds = %1024, %1018, %1002
  %1026 = phi i32 [ %1005, %1002 ], [ %1009, %1018 ], [ %1009, %1024 ]
  %1027 = phi i8* [ %1004, %1002 ], [ %1008, %1018 ], [ %1008, %1024 ]
  %1028 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 0, i32 0
  %1029 = load i8*, i8** %1028, align 8, !tbaa !20
  %1030 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %48, i64 0, i32 2
  %1031 = bitcast %union.anon* %1030 to i8*
  %1032 = icmp eq i8* %1029, %1031
  br i1 %1032, label %1034, label %1033

1033:                                             ; preds = %1025
  call void @_ZdlPv(i8* %1029) #22
  br label %1034

1034:                                             ; preds = %1033, %1025, %998
  %1035 = phi i32 [ %1001, %998 ], [ %1026, %1025 ], [ %1026, %1033 ]
  %1036 = phi i8* [ %1000, %998 ], [ %1027, %1025 ], [ %1027, %1033 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %545) #22
  %1037 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 0, i32 0
  %1038 = load i8*, i8** %1037, align 8, !tbaa !20
  %1039 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %47, i64 0, i32 2
  %1040 = bitcast %union.anon* %1039 to i8*
  %1041 = icmp eq i8* %1038, %1040
  br i1 %1041, label %1043, label %1042

1042:                                             ; preds = %1034
  call void @_ZdlPv(i8* %1038) #22
  br label %1043

1043:                                             ; preds = %1042, %1034, %994
  %1044 = phi i32 [ %997, %994 ], [ %1035, %1034 ], [ %1035, %1042 ]
  %1045 = phi i8* [ %996, %994 ], [ %1036, %1034 ], [ %1036, %1042 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %543) #22
  %1046 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %45, i64 0, i32 0, i32 0
  %1047 = load i8*, i8** %1046, align 8, !tbaa !20
  %1048 = icmp eq i8* %1047, %520
  br i1 %1048, label %1050, label %1049

1049:                                             ; preds = %1043
  call void @_ZdlPv(i8* %1047) #22
  br label %1050

1050:                                             ; preds = %1049, %1043, %990
  %1051 = phi i32 [ %993, %990 ], [ %1044, %1043 ], [ %1044, %1049 ]
  %1052 = phi i8* [ %992, %990 ], [ %1045, %1043 ], [ %1045, %1049 ]
  %1053 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 0, i32 0
  %1054 = load i8*, i8** %1053, align 8, !tbaa !20
  %1055 = icmp eq i8* %1054, %492
  br i1 %1055, label %1098, label %1056

1056:                                             ; preds = %1050
  call void @_ZdlPv(i8* %1054) #22
  br label %1098

1057:                                             ; preds = %645, %643, %638
  %1058 = landingpad { i8*, i32 }
          cleanup
  %1059 = extractvalue { i8*, i32 } %1058, 0
  %1060 = extractvalue { i8*, i32 } %1058, 1
  br label %1091

1061:                                             ; preds = %655
  %1062 = landingpad { i8*, i32 }
          cleanup
  %1063 = extractvalue { i8*, i32 } %1062, 0
  %1064 = extractvalue { i8*, i32 } %1062, 1
  br label %1084

1065:                                             ; preds = %661
  %1066 = landingpad { i8*, i32 }
          cleanup
  %1067 = extractvalue { i8*, i32 } %1066, 0
  %1068 = extractvalue { i8*, i32 } %1066, 1
  %1069 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %663, align 8, !tbaa !24
  %1070 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %1069, null
  br i1 %1070, label %1077, label %1071

1071:                                             ; preds = %1065
  %1072 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %53, i64 0, i32 0, i32 0
  %1073 = invoke zeroext i1 %1069(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1072, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1072, i32 3)
          to label %1077 unwind label %1074

1074:                                             ; preds = %1071
  %1075 = landingpad { i8*, i32 }
          catch i8* null
  %1076 = extractvalue { i8*, i32 } %1075, 0
  call void @__clang_call_terminate(i8* %1076) #25
  unreachable

1077:                                             ; preds = %1071, %1065
  %1078 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %52, i64 0, i32 0, i32 0
  %1079 = load i8*, i8** %1078, align 8, !tbaa !20
  %1080 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %52, i64 0, i32 2
  %1081 = bitcast %union.anon* %1080 to i8*
  %1082 = icmp eq i8* %1079, %1081
  br i1 %1082, label %1084, label %1083

1083:                                             ; preds = %1077
  call void @_ZdlPv(i8* %1079) #22
  br label %1084

1084:                                             ; preds = %1083, %1077, %1061
  %1085 = phi i32 [ %1064, %1061 ], [ %1068, %1077 ], [ %1068, %1083 ]
  %1086 = phi i8* [ %1063, %1061 ], [ %1067, %1077 ], [ %1067, %1083 ]
  %1087 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %51, i64 0, i32 0, i32 0
  %1088 = load i8*, i8** %1087, align 8, !tbaa !20
  %1089 = icmp eq i8* %1088, %635
  br i1 %1089, label %1091, label %1090

1090:                                             ; preds = %1084
  call void @_ZdlPv(i8* %1088) #22
  br label %1091

1091:                                             ; preds = %1090, %1084, %1057
  %1092 = phi i32 [ %1060, %1057 ], [ %1085, %1084 ], [ %1085, %1090 ]
  %1093 = phi i8* [ %1059, %1057 ], [ %1086, %1084 ], [ %1086, %1090 ]
  %1094 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %50, i64 0, i32 0, i32 0
  %1095 = load i8*, i8** %1094, align 8, !tbaa !20
  %1096 = icmp eq i8* %1095, %626
  br i1 %1096, label %1098, label %1097

1097:                                             ; preds = %1091
  call void @_ZdlPv(i8* %1095) #22
  br label %1098

1098:                                             ; preds = %1091, %1097, %1056, %1050, %985, %977, %915, %921, %872, %878, %829, %835, %789, %795, %746, %752, %986, %922
  %1099 = phi i32 [ %925, %922 ], [ %989, %986 ], [ %747, %746 ], [ %747, %752 ], [ %790, %789 ], [ %790, %795 ], [ %830, %829 ], [ %830, %835 ], [ %873, %872 ], [ %873, %878 ], [ %916, %915 ], [ %916, %921 ], [ %978, %977 ], [ %978, %985 ], [ %1051, %1050 ], [ %1051, %1056 ], [ %1092, %1091 ], [ %1092, %1097 ]
  %1100 = phi i8* [ %924, %922 ], [ %988, %986 ], [ %748, %746 ], [ %748, %752 ], [ %791, %789 ], [ %791, %795 ], [ %831, %829 ], [ %831, %835 ], [ %874, %872 ], [ %874, %878 ], [ %917, %915 ], [ %917, %921 ], [ %979, %977 ], [ %979, %985 ], [ %1052, %1050 ], [ %1052, %1056 ], [ %1093, %1091 ], [ %1093, %1097 ]
  %1101 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %18, i64 0, i32 0, i32 0
  %1102 = load i8*, i8** %1101, align 8, !tbaa !20
  %1103 = icmp eq i8* %1102, %77
  br i1 %1103, label %1105, label %1104

1104:                                             ; preds = %1098
  call void @_ZdlPv(i8* %1102) #22
  br label %1105

1105:                                             ; preds = %1104, %1098
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %74) #22
  %1106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %17, i64 0, i32 0, i32 0
  %1107 = load i8*, i8** %1106, align 8, !tbaa !20
  %1108 = icmp eq i8* %1107, %71
  br i1 %1108, label %1110, label %1109

1109:                                             ; preds = %1105
  call void @_ZdlPv(i8* %1107) #22
  br label %1110

1110:                                             ; preds = %1109, %1105
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %68) #22
  %1111 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 0, i32 0
  %1112 = load i8*, i8** %1111, align 8, !tbaa !20
  %1113 = icmp eq i8* %1112, %64
  br i1 %1113, label %1115, label %1114

1114:                                             ; preds = %1110
  call void @_ZdlPv(i8* %1112) #22
  br label %1115

1115:                                             ; preds = %1114, %1110
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %61) #22
  %1116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 0, i32 0
  %1117 = load i8*, i8** %1116, align 8, !tbaa !20
  %1118 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %15, i64 0, i32 2
  %1119 = bitcast %union.anon* %1118 to i8*
  %1120 = icmp eq i8* %1117, %1119
  br i1 %1120, label %1122, label %1121

1121:                                             ; preds = %1115
  call void @_ZdlPv(i8* %1117) #22
  br label %1122

1122:                                             ; preds = %1115, %1121
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55) #22
  %1123 = insertvalue { i8*, i32 } undef, i8* %1100, 0
  %1124 = insertvalue { i8*, i32 } %1123, i32 %1099, 1
  resume { i8*, i32 } %1124
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* %1, i64* %2, %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* %4, %"class.std::function.10"* %5) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"union.std::any::_Arg", align 8
  %9 = alloca %"class.std::any", align 8
  %10 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  %11 = alloca %class.anon.29, align 8
  br label %12

12:                                               ; preds = %6
  %13 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %13) #22
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false) #22
  %14 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1
  %15 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !18
  %17 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 1
  store i64 0, i64* %17, align 8, !tbaa !23
  %18 = bitcast %union.anon* %15 to i8*
  store i8 0, i8* %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2
  %20 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %19 to %union.anon**
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 1
  store i64 0, i64* %22, align 8, !tbaa !23
  %23 = bitcast %union.anon* %20 to i8*
  store i8 0, i8* %23, align 8, !tbaa !15
  %24 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3
  %25 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 2
  %26 = bitcast %"class.std::__cxx11::basic_string"* %24 to %union.anon**
  store %union.anon* %25, %union.anon** %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 1
  store i64 0, i64* %27, align 8, !tbaa !23
  %28 = bitcast %union.anon* %25 to i8*
  store i8 0, i8* %28, align 8, !tbaa !15
  %29 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 1
  %30 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 1
  store i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE9_M_invokeERKSt9_Any_dataS7_, i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %30, align 8, !tbaa !26
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %14, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
          to label %31 unwind label %169

31:                                               ; preds = %12
  %32 = ptrtoint i64* %2 to i64
  %33 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  %34 = bitcast %"class.std::any"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34) #22
  %35 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* @_ZNSt3any17_Manager_internalIPmE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %36 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 1
  %37 = bitcast %"union.std::any::_Storage"* %36 to i64*
  store i64 %32, i64* %37, align 8, !tbaa !67
  %38 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %39 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %40 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  invoke void %39(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %42 unwind label %44

42:                                               ; preds = %41
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %43 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %47

44:                                               ; preds = %41
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #25
  unreachable

47:                                               ; preds = %42, %31
  %48 = phi void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* [ @_ZNSt3any17_Manager_internalIPmE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, %31 ], [ %43, %42 ]
  %49 = bitcast %"union.std::any::_Arg"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #22
  %50 = bitcast %"union.std::any::_Arg"* %8 to %"class.std::any"**
  store %"class.std::any"* %33, %"class.std::any"** %50, align 8, !tbaa !15
  invoke void %48(i32 4, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* nonnull %8)
          to label %54 unwind label %51

51:                                               ; preds = %47
  %52 = landingpad { i8*, i32 }
          catch i8* null
  %53 = extractvalue { i8*, i32 } %52, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  call void @__clang_call_terminate(i8* %53) #25
  unreachable

54:                                               ; preds = %47
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  %55 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %56 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  invoke void %55(i32 3, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* null)
          to label %58 unwind label %59

58:                                               ; preds = %57
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %62

59:                                               ; preds = %57
  %60 = landingpad { i8*, i32 }
          catch i8* null
  %61 = extractvalue { i8*, i32 } %60, 0
  call void @__clang_call_terminate(i8* %61) #25
  unreachable

62:                                               ; preds = %58, %54
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34) #22
  %63 = bitcast %class.anon.29* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %63) #22
  %64 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 0
  %65 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %65, align 8, !tbaa !15
  %66 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %67 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %69, align 8, !tbaa !16
  br label %74

70:                                               ; preds = %62
  %71 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #22
  %72 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %64, %"class.std::any"** %72, align 8, !tbaa !15
  invoke void %66(i32 2, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* nonnull %7)
          to label %73 unwind label %173

73:                                               ; preds = %70
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #22
  br label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 1, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %76 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 1
  %77 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76, align 8, !tbaa !24
  %78 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 1, i32 0, i32 0
  %81 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 0
  %82 = invoke zeroext i1 %77(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 2)
          to label %83 unwind label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 1
  %85 = bitcast i1 (%"union.std::_Any_data"*)** %84 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !100
  %87 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 1, i32 1
  %88 = bitcast i1 (%"union.std::_Any_data"*)** %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !100
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !24
  %91 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75 to i64*
  store i64 %90, i64* %91, align 8, !tbaa !24
  br label %101

92:                                               ; preds = %79
  %93 = landingpad { i8*, i32 }
          cleanup
  %94 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %95 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %94, null
  br i1 %95, label %177, label %96

96:                                               ; preds = %92
  %97 = invoke zeroext i1 %94(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, i32 3)
          to label %177 unwind label %98

98:                                               ; preds = %96
  %99 = landingpad { i8*, i32 }
          catch i8* null
  %100 = extractvalue { i8*, i32 } %99, 0
  call void @__clang_call_terminate(i8* %100) #25
  unreachable

101:                                              ; preds = %83, %74
  %102 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4
  %103 = invoke nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISF_E4typeESt15__invoke_resultIRSO_JS7_EEEE5valueERS9_E4typeEOSF_(%"class.std::function"* nonnull %102, %class.anon.29* nonnull align 8 dereferenceable(48) %11)
          to label %104 unwind label %188

104:                                              ; preds = %101
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %107, %104
  %114 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 0, i32 0
  %115 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  %116 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  invoke void %115(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %117
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %117
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %19, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3)
          to label %123 unwind label %169

123:                                              ; preds = %122
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %24, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %124 unwind label %169

124:                                              ; preds = %123
  %125 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %126 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %127 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %128 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %127, align 8, !tbaa !170
  %129 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  invoke void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %131 unwind label %169

131:                                              ; preds = %130
  %132 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %133 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %132, i64 1
  store %"struct.partdiff::askparams::argument_parser::argument_description"* %133, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  br label %136

134:                                              ; preds = %124
  %135 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3
  invoke void @_ZNSt6vectorIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector.3"* nonnull %135, %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %136 unwind label %169

136:                                              ; preds = %131, %134
  %137 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %138 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %141 = invoke zeroext i1 %137(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, i32 3)
          to label %145 unwind label %142

142:                                              ; preds = %139
  %143 = landingpad { i8*, i32 }
          catch i8* null
  %144 = extractvalue { i8*, i32 } %143, 0
  call void @__clang_call_terminate(i8* %144) #25
  unreachable

145:                                              ; preds = %139, %136
  %146 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8, !tbaa !20
  %148 = icmp eq i8* %147, %28
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @_ZdlPv(i8* %147) #22
  br label %150

150:                                              ; preds = %149, %145
  %151 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !20
  %153 = icmp eq i8* %152, %23
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @_ZdlPv(i8* %152) #22
  br label %155

155:                                              ; preds = %154, %150
  %156 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8, !tbaa !20
  %158 = icmp eq i8* %157, %18
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call void @_ZdlPv(i8* %157) #22
  br label %160

160:                                              ; preds = %159, %155
  %161 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %162 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  invoke void %161(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %164 unwind label %165

164:                                              ; preds = %163
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  br label %168

165:                                              ; preds = %163
  %166 = landingpad { i8*, i32 }
          catch i8* null
  %167 = extractvalue { i8*, i32 } %166, 0
  call void @__clang_call_terminate(i8* %167) #25
  unreachable

168:                                              ; preds = %160, %164
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  ret void

169:                                              ; preds = %134, %130, %123, %122, %12
  %170 = landingpad { i8*, i32 }
          cleanup
  %171 = extractvalue { i8*, i32 } %170, 0
  %172 = extractvalue { i8*, i32 } %170, 1
  br label %212

173:                                              ; preds = %70
  %174 = landingpad { i8*, i32 }
          cleanup
  %175 = extractvalue { i8*, i32 } %174, 0
  %176 = extractvalue { i8*, i32 } %174, 1
  br label %209

177:                                              ; preds = %92, %96
  %178 = extractvalue { i8*, i32 } %93, 0
  %179 = extractvalue { i8*, i32 } %93, 1
  %180 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 0, i32 0
  %181 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  %182 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %181, null
  br i1 %182, label %209, label %183

183:                                              ; preds = %177
  invoke void %181(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %184 unwind label %185

184:                                              ; preds = %183
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  br label %209

185:                                              ; preds = %183
  %186 = landingpad { i8*, i32 }
          catch i8* null
  %187 = extractvalue { i8*, i32 } %186, 0
  call void @__clang_call_terminate(i8* %187) #25
  unreachable

188:                                              ; preds = %101
  %189 = landingpad { i8*, i32 }
          cleanup
  %190 = extractvalue { i8*, i32 } %189, 0
  %191 = extractvalue { i8*, i32 } %189, 1
  %192 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %193 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 1, i32 0, i32 0
  %196 = invoke zeroext i1 %192(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, i32 3)
          to label %200 unwind label %197

197:                                              ; preds = %194
  %198 = landingpad { i8*, i32 }
          catch i8* null
  %199 = extractvalue { i8*, i32 } %198, 0
  call void @__clang_call_terminate(i8* %199) #25
  unreachable

200:                                              ; preds = %194, %188
  %201 = getelementptr inbounds %class.anon.29, %class.anon.29* %11, i64 0, i32 0, i32 0
  %202 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  %203 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  invoke void %202(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %205 unwind label %206

205:                                              ; preds = %204
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  br label %209

206:                                              ; preds = %204
  %207 = landingpad { i8*, i32 }
          catch i8* null
  %208 = extractvalue { i8*, i32 } %207, 0
  call void @__clang_call_terminate(i8* %208) #25
  unreachable

209:                                              ; preds = %205, %200, %184, %177, %173
  %210 = phi i8* [ %175, %173 ], [ %178, %177 ], [ %178, %184 ], [ %190, %200 ], [ %190, %205 ]
  %211 = phi i32 [ %176, %173 ], [ %179, %177 ], [ %179, %184 ], [ %191, %200 ], [ %191, %205 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  br label %212

212:                                              ; preds = %209, %169
  %213 = phi i8* [ %171, %169 ], [ %210, %209 ]
  %214 = phi i32 [ %172, %169 ], [ %211, %209 ]
  %215 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %216 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %215, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %219 = invoke zeroext i1 %215(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, i32 3)
          to label %223 unwind label %220

220:                                              ; preds = %217
  %221 = landingpad { i8*, i32 }
          catch i8* null
  %222 = extractvalue { i8*, i32 } %221, 0
  call void @__clang_call_terminate(i8* %222) #25
  unreachable

223:                                              ; preds = %217, %212
  %224 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8, !tbaa !20
  %226 = icmp eq i8* %225, %28
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  call void @_ZdlPv(i8* %225) #22
  br label %228

228:                                              ; preds = %227, %223
  %229 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8, !tbaa !20
  %231 = icmp eq i8* %230, %23
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  call void @_ZdlPv(i8* %230) #22
  br label %233

233:                                              ; preds = %232, %228
  %234 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8, !tbaa !20
  %236 = icmp eq i8* %235, %18
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  call void @_ZdlPv(i8* %235) #22
  br label %238

238:                                              ; preds = %237, %233
  %239 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %240 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  %241 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %240, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  invoke void %240(i32 3, %"class.std::any"* nonnull %243, %"union.std::any::_Arg"* null)
          to label %244 unwind label %245

244:                                              ; preds = %242
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  br label %248

245:                                              ; preds = %242
  %246 = landingpad { i8*, i32 }
          catch i8* null
  %247 = extractvalue { i8*, i32 } %246, 0
  call void @__clang_call_terminate(i8* %247) #25
  unreachable

248:                                              ; preds = %238, %244
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  %249 = insertvalue { i8*, i32 } undef, i8* %213, 0
  %250 = insertvalue { i8*, i32 } %249, i32 %214, 1
  resume { i8*, i32 } %250
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* %1, i64* %2, %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* %4, %"class.std::function.10"* %5) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"union.std::any::_Arg", align 8
  %9 = alloca %"class.std::any", align 8
  %10 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  %11 = alloca %class.anon.34, align 8
  br label %12

12:                                               ; preds = %6
  %13 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %13) #22
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false) #22
  %14 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1
  %15 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !18
  %17 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 1
  store i64 0, i64* %17, align 8, !tbaa !23
  %18 = bitcast %union.anon* %15 to i8*
  store i8 0, i8* %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2
  %20 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %19 to %union.anon**
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 1
  store i64 0, i64* %22, align 8, !tbaa !23
  %23 = bitcast %union.anon* %20 to i8*
  store i8 0, i8* %23, align 8, !tbaa !15
  %24 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3
  %25 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 2
  %26 = bitcast %"class.std::__cxx11::basic_string"* %24 to %union.anon**
  store %union.anon* %25, %union.anon** %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 1
  store i64 0, i64* %27, align 8, !tbaa !23
  %28 = bitcast %union.anon* %25 to i8*
  store i8 0, i8* %28, align 8, !tbaa !15
  %29 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 1
  %30 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 1
  store i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE9_M_invokeERKSt9_Any_dataS7_, i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %30, align 8, !tbaa !26
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %14, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
          to label %31 unwind label %169

31:                                               ; preds = %12
  %32 = ptrtoint i64* %2 to i64
  %33 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  %34 = bitcast %"class.std::any"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34) #22
  %35 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options18calculation_methodEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %36 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 1
  %37 = bitcast %"union.std::any::_Storage"* %36 to i64*
  store i64 %32, i64* %37, align 8, !tbaa !67
  %38 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %39 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %40 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  invoke void %39(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %42 unwind label %44

42:                                               ; preds = %41
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %43 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %47

44:                                               ; preds = %41
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #25
  unreachable

47:                                               ; preds = %42, %31
  %48 = phi void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* [ @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options18calculation_methodEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, %31 ], [ %43, %42 ]
  %49 = bitcast %"union.std::any::_Arg"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #22
  %50 = bitcast %"union.std::any::_Arg"* %8 to %"class.std::any"**
  store %"class.std::any"* %33, %"class.std::any"** %50, align 8, !tbaa !15
  invoke void %48(i32 4, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* nonnull %8)
          to label %54 unwind label %51

51:                                               ; preds = %47
  %52 = landingpad { i8*, i32 }
          catch i8* null
  %53 = extractvalue { i8*, i32 } %52, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  call void @__clang_call_terminate(i8* %53) #25
  unreachable

54:                                               ; preds = %47
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  %55 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %56 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  invoke void %55(i32 3, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* null)
          to label %58 unwind label %59

58:                                               ; preds = %57
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %62

59:                                               ; preds = %57
  %60 = landingpad { i8*, i32 }
          catch i8* null
  %61 = extractvalue { i8*, i32 } %60, 0
  call void @__clang_call_terminate(i8* %61) #25
  unreachable

62:                                               ; preds = %58, %54
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34) #22
  %63 = bitcast %class.anon.34* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %63) #22
  %64 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 0
  %65 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %65, align 8, !tbaa !15
  %66 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %67 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %69, align 8, !tbaa !16
  br label %74

70:                                               ; preds = %62
  %71 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #22
  %72 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %64, %"class.std::any"** %72, align 8, !tbaa !15
  invoke void %66(i32 2, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* nonnull %7)
          to label %73 unwind label %173

73:                                               ; preds = %70
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #22
  br label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 1, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %76 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 1
  %77 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76, align 8, !tbaa !24
  %78 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 1, i32 0, i32 0
  %81 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 0
  %82 = invoke zeroext i1 %77(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 2)
          to label %83 unwind label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 1
  %85 = bitcast i1 (%"union.std::_Any_data"*)** %84 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !100
  %87 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 1, i32 1
  %88 = bitcast i1 (%"union.std::_Any_data"*)** %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !100
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !24
  %91 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75 to i64*
  store i64 %90, i64* %91, align 8, !tbaa !24
  br label %101

92:                                               ; preds = %79
  %93 = landingpad { i8*, i32 }
          cleanup
  %94 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %95 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %94, null
  br i1 %95, label %177, label %96

96:                                               ; preds = %92
  %97 = invoke zeroext i1 %94(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, i32 3)
          to label %177 unwind label %98

98:                                               ; preds = %96
  %99 = landingpad { i8*, i32 }
          catch i8* null
  %100 = extractvalue { i8*, i32 } %99, 0
  call void @__clang_call_terminate(i8* %100) #25
  unreachable

101:                                              ; preds = %83, %74
  %102 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4
  %103 = invoke nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionINSC_19calculation_options18calculation_methodEEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISH_E4typeESt15__invoke_resultIRSQ_JS7_EEEE5valueERS9_E4typeEOSH_(%"class.std::function"* nonnull %102, %class.anon.34* nonnull align 8 dereferenceable(48) %11)
          to label %104 unwind label %188

104:                                              ; preds = %101
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %107, %104
  %114 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 0, i32 0
  %115 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  %116 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  invoke void %115(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %117
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %117
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %19, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3)
          to label %123 unwind label %169

123:                                              ; preds = %122
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %24, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %124 unwind label %169

124:                                              ; preds = %123
  %125 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %126 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %127 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %128 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %127, align 8, !tbaa !170
  %129 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  invoke void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %131 unwind label %169

131:                                              ; preds = %130
  %132 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %133 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %132, i64 1
  store %"struct.partdiff::askparams::argument_parser::argument_description"* %133, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  br label %136

134:                                              ; preds = %124
  %135 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3
  invoke void @_ZNSt6vectorIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector.3"* nonnull %135, %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %136 unwind label %169

136:                                              ; preds = %131, %134
  %137 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %138 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %141 = invoke zeroext i1 %137(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, i32 3)
          to label %145 unwind label %142

142:                                              ; preds = %139
  %143 = landingpad { i8*, i32 }
          catch i8* null
  %144 = extractvalue { i8*, i32 } %143, 0
  call void @__clang_call_terminate(i8* %144) #25
  unreachable

145:                                              ; preds = %139, %136
  %146 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8, !tbaa !20
  %148 = icmp eq i8* %147, %28
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @_ZdlPv(i8* %147) #22
  br label %150

150:                                              ; preds = %149, %145
  %151 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !20
  %153 = icmp eq i8* %152, %23
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @_ZdlPv(i8* %152) #22
  br label %155

155:                                              ; preds = %154, %150
  %156 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8, !tbaa !20
  %158 = icmp eq i8* %157, %18
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call void @_ZdlPv(i8* %157) #22
  br label %160

160:                                              ; preds = %159, %155
  %161 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %162 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  invoke void %161(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %164 unwind label %165

164:                                              ; preds = %163
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  br label %168

165:                                              ; preds = %163
  %166 = landingpad { i8*, i32 }
          catch i8* null
  %167 = extractvalue { i8*, i32 } %166, 0
  call void @__clang_call_terminate(i8* %167) #25
  unreachable

168:                                              ; preds = %160, %164
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  ret void

169:                                              ; preds = %134, %130, %123, %122, %12
  %170 = landingpad { i8*, i32 }
          cleanup
  %171 = extractvalue { i8*, i32 } %170, 0
  %172 = extractvalue { i8*, i32 } %170, 1
  br label %212

173:                                              ; preds = %70
  %174 = landingpad { i8*, i32 }
          cleanup
  %175 = extractvalue { i8*, i32 } %174, 0
  %176 = extractvalue { i8*, i32 } %174, 1
  br label %209

177:                                              ; preds = %92, %96
  %178 = extractvalue { i8*, i32 } %93, 0
  %179 = extractvalue { i8*, i32 } %93, 1
  %180 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 0, i32 0
  %181 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  %182 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %181, null
  br i1 %182, label %209, label %183

183:                                              ; preds = %177
  invoke void %181(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %184 unwind label %185

184:                                              ; preds = %183
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  br label %209

185:                                              ; preds = %183
  %186 = landingpad { i8*, i32 }
          catch i8* null
  %187 = extractvalue { i8*, i32 } %186, 0
  call void @__clang_call_terminate(i8* %187) #25
  unreachable

188:                                              ; preds = %101
  %189 = landingpad { i8*, i32 }
          cleanup
  %190 = extractvalue { i8*, i32 } %189, 0
  %191 = extractvalue { i8*, i32 } %189, 1
  %192 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %193 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 1, i32 0, i32 0
  %196 = invoke zeroext i1 %192(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, i32 3)
          to label %200 unwind label %197

197:                                              ; preds = %194
  %198 = landingpad { i8*, i32 }
          catch i8* null
  %199 = extractvalue { i8*, i32 } %198, 0
  call void @__clang_call_terminate(i8* %199) #25
  unreachable

200:                                              ; preds = %194, %188
  %201 = getelementptr inbounds %class.anon.34, %class.anon.34* %11, i64 0, i32 0, i32 0
  %202 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  %203 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  invoke void %202(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %205 unwind label %206

205:                                              ; preds = %204
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  br label %209

206:                                              ; preds = %204
  %207 = landingpad { i8*, i32 }
          catch i8* null
  %208 = extractvalue { i8*, i32 } %207, 0
  call void @__clang_call_terminate(i8* %208) #25
  unreachable

209:                                              ; preds = %205, %200, %184, %177, %173
  %210 = phi i8* [ %175, %173 ], [ %178, %177 ], [ %178, %184 ], [ %190, %200 ], [ %190, %205 ]
  %211 = phi i32 [ %176, %173 ], [ %179, %177 ], [ %179, %184 ], [ %191, %200 ], [ %191, %205 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  br label %212

212:                                              ; preds = %209, %169
  %213 = phi i8* [ %171, %169 ], [ %210, %209 ]
  %214 = phi i32 [ %172, %169 ], [ %211, %209 ]
  %215 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %216 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %215, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %219 = invoke zeroext i1 %215(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, i32 3)
          to label %223 unwind label %220

220:                                              ; preds = %217
  %221 = landingpad { i8*, i32 }
          catch i8* null
  %222 = extractvalue { i8*, i32 } %221, 0
  call void @__clang_call_terminate(i8* %222) #25
  unreachable

223:                                              ; preds = %217, %212
  %224 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8, !tbaa !20
  %226 = icmp eq i8* %225, %28
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  call void @_ZdlPv(i8* %225) #22
  br label %228

228:                                              ; preds = %227, %223
  %229 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8, !tbaa !20
  %231 = icmp eq i8* %230, %23
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  call void @_ZdlPv(i8* %230) #22
  br label %233

233:                                              ; preds = %232, %228
  %234 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8, !tbaa !20
  %236 = icmp eq i8* %235, %18
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  call void @_ZdlPv(i8* %235) #22
  br label %238

238:                                              ; preds = %237, %233
  %239 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %240 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  %241 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %240, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  invoke void %240(i32 3, %"class.std::any"* nonnull %243, %"union.std::any::_Arg"* null)
          to label %244 unwind label %245

244:                                              ; preds = %242
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  br label %248

245:                                              ; preds = %242
  %246 = landingpad { i8*, i32 }
          catch i8* null
  %247 = extractvalue { i8*, i32 } %246, 0
  call void @__clang_call_terminate(i8* %247) #25
  unreachable

248:                                              ; preds = %238, %244
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  %249 = insertvalue { i8*, i32 } undef, i8* %213, 0
  %250 = insertvalue { i8*, i32 } %249, i32 %214, 1
  resume { i8*, i32 } %250
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* %1, i64* %2, %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* %4, %"class.std::function.10"* %5) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"union.std::any::_Arg", align 8
  %9 = alloca %"class.std::any", align 8
  %10 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  %11 = alloca %class.anon.36, align 8
  br label %12

12:                                               ; preds = %6
  %13 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %13) #22
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false) #22
  %14 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1
  %15 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !18
  %17 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 1
  store i64 0, i64* %17, align 8, !tbaa !23
  %18 = bitcast %union.anon* %15 to i8*
  store i8 0, i8* %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2
  %20 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %19 to %union.anon**
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 1
  store i64 0, i64* %22, align 8, !tbaa !23
  %23 = bitcast %union.anon* %20 to i8*
  store i8 0, i8* %23, align 8, !tbaa !15
  %24 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3
  %25 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 2
  %26 = bitcast %"class.std::__cxx11::basic_string"* %24 to %union.anon**
  store %union.anon* %25, %union.anon** %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 1
  store i64 0, i64* %27, align 8, !tbaa !23
  %28 = bitcast %union.anon* %25 to i8*
  store i8 0, i8* %28, align 8, !tbaa !15
  %29 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 1
  %30 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 1
  store i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE9_M_invokeERKSt9_Any_dataS7_, i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %30, align 8, !tbaa !26
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %14, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
          to label %31 unwind label %169

31:                                               ; preds = %12
  %32 = ptrtoint i64* %2 to i64
  %33 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  %34 = bitcast %"class.std::any"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34) #22
  %35 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21interference_functionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %36 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 1
  %37 = bitcast %"union.std::any::_Storage"* %36 to i64*
  store i64 %32, i64* %37, align 8, !tbaa !67
  %38 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %39 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %40 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  invoke void %39(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %42 unwind label %44

42:                                               ; preds = %41
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %43 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %47

44:                                               ; preds = %41
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #25
  unreachable

47:                                               ; preds = %42, %31
  %48 = phi void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* [ @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21interference_functionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, %31 ], [ %43, %42 ]
  %49 = bitcast %"union.std::any::_Arg"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #22
  %50 = bitcast %"union.std::any::_Arg"* %8 to %"class.std::any"**
  store %"class.std::any"* %33, %"class.std::any"** %50, align 8, !tbaa !15
  invoke void %48(i32 4, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* nonnull %8)
          to label %54 unwind label %51

51:                                               ; preds = %47
  %52 = landingpad { i8*, i32 }
          catch i8* null
  %53 = extractvalue { i8*, i32 } %52, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  call void @__clang_call_terminate(i8* %53) #25
  unreachable

54:                                               ; preds = %47
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  %55 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %56 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  invoke void %55(i32 3, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* null)
          to label %58 unwind label %59

58:                                               ; preds = %57
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %62

59:                                               ; preds = %57
  %60 = landingpad { i8*, i32 }
          catch i8* null
  %61 = extractvalue { i8*, i32 } %60, 0
  call void @__clang_call_terminate(i8* %61) #25
  unreachable

62:                                               ; preds = %58, %54
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34) #22
  %63 = bitcast %class.anon.36* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %63) #22
  %64 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 0
  %65 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %65, align 8, !tbaa !15
  %66 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %67 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %69, align 8, !tbaa !16
  br label %74

70:                                               ; preds = %62
  %71 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #22
  %72 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %64, %"class.std::any"** %72, align 8, !tbaa !15
  invoke void %66(i32 2, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* nonnull %7)
          to label %73 unwind label %173

73:                                               ; preds = %70
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #22
  br label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 1, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %76 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 1
  %77 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76, align 8, !tbaa !24
  %78 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 1, i32 0, i32 0
  %81 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 0
  %82 = invoke zeroext i1 %77(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 2)
          to label %83 unwind label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 1
  %85 = bitcast i1 (%"union.std::_Any_data"*)** %84 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !100
  %87 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 1, i32 1
  %88 = bitcast i1 (%"union.std::_Any_data"*)** %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !100
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !24
  %91 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75 to i64*
  store i64 %90, i64* %91, align 8, !tbaa !24
  br label %101

92:                                               ; preds = %79
  %93 = landingpad { i8*, i32 }
          cleanup
  %94 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %95 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %94, null
  br i1 %95, label %177, label %96

96:                                               ; preds = %92
  %97 = invoke zeroext i1 %94(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, i32 3)
          to label %177 unwind label %98

98:                                               ; preds = %96
  %99 = landingpad { i8*, i32 }
          catch i8* null
  %100 = extractvalue { i8*, i32 } %99, 0
  call void @__clang_call_terminate(i8* %100) #25
  unreachable

101:                                              ; preds = %83, %74
  %102 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4
  %103 = invoke nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionINSC_19calculation_options21interference_functionEEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISH_E4typeESt15__invoke_resultIRSQ_JS7_EEEE5valueERS9_E4typeEOSH_(%"class.std::function"* nonnull %102, %class.anon.36* nonnull align 8 dereferenceable(48) %11)
          to label %104 unwind label %188

104:                                              ; preds = %101
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %107, %104
  %114 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 0, i32 0
  %115 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  %116 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  invoke void %115(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %117
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %117
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %19, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3)
          to label %123 unwind label %169

123:                                              ; preds = %122
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %24, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %124 unwind label %169

124:                                              ; preds = %123
  %125 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %126 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %127 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %128 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %127, align 8, !tbaa !170
  %129 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  invoke void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %131 unwind label %169

131:                                              ; preds = %130
  %132 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %133 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %132, i64 1
  store %"struct.partdiff::askparams::argument_parser::argument_description"* %133, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  br label %136

134:                                              ; preds = %124
  %135 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3
  invoke void @_ZNSt6vectorIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector.3"* nonnull %135, %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %136 unwind label %169

136:                                              ; preds = %131, %134
  %137 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %138 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %141 = invoke zeroext i1 %137(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, i32 3)
          to label %145 unwind label %142

142:                                              ; preds = %139
  %143 = landingpad { i8*, i32 }
          catch i8* null
  %144 = extractvalue { i8*, i32 } %143, 0
  call void @__clang_call_terminate(i8* %144) #25
  unreachable

145:                                              ; preds = %139, %136
  %146 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8, !tbaa !20
  %148 = icmp eq i8* %147, %28
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @_ZdlPv(i8* %147) #22
  br label %150

150:                                              ; preds = %149, %145
  %151 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !20
  %153 = icmp eq i8* %152, %23
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @_ZdlPv(i8* %152) #22
  br label %155

155:                                              ; preds = %154, %150
  %156 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8, !tbaa !20
  %158 = icmp eq i8* %157, %18
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call void @_ZdlPv(i8* %157) #22
  br label %160

160:                                              ; preds = %159, %155
  %161 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %162 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  invoke void %161(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %164 unwind label %165

164:                                              ; preds = %163
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  br label %168

165:                                              ; preds = %163
  %166 = landingpad { i8*, i32 }
          catch i8* null
  %167 = extractvalue { i8*, i32 } %166, 0
  call void @__clang_call_terminate(i8* %167) #25
  unreachable

168:                                              ; preds = %160, %164
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  ret void

169:                                              ; preds = %134, %130, %123, %122, %12
  %170 = landingpad { i8*, i32 }
          cleanup
  %171 = extractvalue { i8*, i32 } %170, 0
  %172 = extractvalue { i8*, i32 } %170, 1
  br label %212

173:                                              ; preds = %70
  %174 = landingpad { i8*, i32 }
          cleanup
  %175 = extractvalue { i8*, i32 } %174, 0
  %176 = extractvalue { i8*, i32 } %174, 1
  br label %209

177:                                              ; preds = %92, %96
  %178 = extractvalue { i8*, i32 } %93, 0
  %179 = extractvalue { i8*, i32 } %93, 1
  %180 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 0, i32 0
  %181 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  %182 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %181, null
  br i1 %182, label %209, label %183

183:                                              ; preds = %177
  invoke void %181(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %184 unwind label %185

184:                                              ; preds = %183
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  br label %209

185:                                              ; preds = %183
  %186 = landingpad { i8*, i32 }
          catch i8* null
  %187 = extractvalue { i8*, i32 } %186, 0
  call void @__clang_call_terminate(i8* %187) #25
  unreachable

188:                                              ; preds = %101
  %189 = landingpad { i8*, i32 }
          cleanup
  %190 = extractvalue { i8*, i32 } %189, 0
  %191 = extractvalue { i8*, i32 } %189, 1
  %192 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %193 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 1, i32 0, i32 0
  %196 = invoke zeroext i1 %192(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, i32 3)
          to label %200 unwind label %197

197:                                              ; preds = %194
  %198 = landingpad { i8*, i32 }
          catch i8* null
  %199 = extractvalue { i8*, i32 } %198, 0
  call void @__clang_call_terminate(i8* %199) #25
  unreachable

200:                                              ; preds = %194, %188
  %201 = getelementptr inbounds %class.anon.36, %class.anon.36* %11, i64 0, i32 0, i32 0
  %202 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  %203 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  invoke void %202(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %205 unwind label %206

205:                                              ; preds = %204
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  br label %209

206:                                              ; preds = %204
  %207 = landingpad { i8*, i32 }
          catch i8* null
  %208 = extractvalue { i8*, i32 } %207, 0
  call void @__clang_call_terminate(i8* %208) #25
  unreachable

209:                                              ; preds = %205, %200, %184, %177, %173
  %210 = phi i8* [ %175, %173 ], [ %178, %177 ], [ %178, %184 ], [ %190, %200 ], [ %190, %205 ]
  %211 = phi i32 [ %176, %173 ], [ %179, %177 ], [ %179, %184 ], [ %191, %200 ], [ %191, %205 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  br label %212

212:                                              ; preds = %209, %169
  %213 = phi i8* [ %171, %169 ], [ %210, %209 ]
  %214 = phi i32 [ %172, %169 ], [ %211, %209 ]
  %215 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %216 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %215, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %219 = invoke zeroext i1 %215(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, i32 3)
          to label %223 unwind label %220

220:                                              ; preds = %217
  %221 = landingpad { i8*, i32 }
          catch i8* null
  %222 = extractvalue { i8*, i32 } %221, 0
  call void @__clang_call_terminate(i8* %222) #25
  unreachable

223:                                              ; preds = %217, %212
  %224 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8, !tbaa !20
  %226 = icmp eq i8* %225, %28
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  call void @_ZdlPv(i8* %225) #22
  br label %228

228:                                              ; preds = %227, %223
  %229 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8, !tbaa !20
  %231 = icmp eq i8* %230, %23
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  call void @_ZdlPv(i8* %230) #22
  br label %233

233:                                              ; preds = %232, %228
  %234 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8, !tbaa !20
  %236 = icmp eq i8* %235, %18
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  call void @_ZdlPv(i8* %235) #22
  br label %238

238:                                              ; preds = %237, %233
  %239 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %240 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  %241 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %240, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  invoke void %240(i32 3, %"class.std::any"* nonnull %243, %"union.std::any::_Arg"* null)
          to label %244 unwind label %245

244:                                              ; preds = %242
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  br label %248

245:                                              ; preds = %242
  %246 = landingpad { i8*, i32 }
          catch i8* null
  %247 = extractvalue { i8*, i32 } %246, 0
  call void @__clang_call_terminate(i8* %247) #25
  unreachable

248:                                              ; preds = %238, %244
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  %249 = insertvalue { i8*, i32 } undef, i8* %213, 0
  %250 = insertvalue { i8*, i32 } %249, i32 %214, 1
  resume { i8*, i32 } %250
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* %1, i64* %2, %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* %4, %"class.std::function.10"* %5) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"union.std::any::_Arg", align 8
  %9 = alloca %"class.std::any", align 8
  %10 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  %11 = alloca %class.anon.40, align 8
  br label %12

12:                                               ; preds = %6
  %13 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %13) #22
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false) #22
  %14 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1
  %15 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !18
  %17 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 1
  store i64 0, i64* %17, align 8, !tbaa !23
  %18 = bitcast %union.anon* %15 to i8*
  store i8 0, i8* %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2
  %20 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %19 to %union.anon**
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 1
  store i64 0, i64* %22, align 8, !tbaa !23
  %23 = bitcast %union.anon* %20 to i8*
  store i8 0, i8* %23, align 8, !tbaa !15
  %24 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3
  %25 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 2
  %26 = bitcast %"class.std::__cxx11::basic_string"* %24 to %union.anon**
  store %union.anon* %25, %union.anon** %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 1
  store i64 0, i64* %27, align 8, !tbaa !23
  %28 = bitcast %union.anon* %25 to i8*
  store i8 0, i8* %28, align 8, !tbaa !15
  %29 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 1
  %30 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 1
  store i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE9_M_invokeERKSt9_Any_dataS7_, i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %30, align 8, !tbaa !26
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %14, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
          to label %31 unwind label %169

31:                                               ; preds = %12
  %32 = ptrtoint i64* %2 to i64
  %33 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  %34 = bitcast %"class.std::any"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34) #22
  %35 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21termination_conditionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %36 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 1
  %37 = bitcast %"union.std::any::_Storage"* %36 to i64*
  store i64 %32, i64* %37, align 8, !tbaa !67
  %38 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %39 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %40 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  invoke void %39(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %42 unwind label %44

42:                                               ; preds = %41
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %43 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %47

44:                                               ; preds = %41
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #25
  unreachable

47:                                               ; preds = %42, %31
  %48 = phi void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* [ @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21termination_conditionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, %31 ], [ %43, %42 ]
  %49 = bitcast %"union.std::any::_Arg"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #22
  %50 = bitcast %"union.std::any::_Arg"* %8 to %"class.std::any"**
  store %"class.std::any"* %33, %"class.std::any"** %50, align 8, !tbaa !15
  invoke void %48(i32 4, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* nonnull %8)
          to label %54 unwind label %51

51:                                               ; preds = %47
  %52 = landingpad { i8*, i32 }
          catch i8* null
  %53 = extractvalue { i8*, i32 } %52, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  call void @__clang_call_terminate(i8* %53) #25
  unreachable

54:                                               ; preds = %47
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  %55 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %56 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  invoke void %55(i32 3, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* null)
          to label %58 unwind label %59

58:                                               ; preds = %57
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %62

59:                                               ; preds = %57
  %60 = landingpad { i8*, i32 }
          catch i8* null
  %61 = extractvalue { i8*, i32 } %60, 0
  call void @__clang_call_terminate(i8* %61) #25
  unreachable

62:                                               ; preds = %58, %54
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34) #22
  %63 = bitcast %class.anon.40* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %63) #22
  %64 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 0
  %65 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %65, align 8, !tbaa !15
  %66 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %67 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %69, align 8, !tbaa !16
  br label %74

70:                                               ; preds = %62
  %71 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #22
  %72 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %64, %"class.std::any"** %72, align 8, !tbaa !15
  invoke void %66(i32 2, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* nonnull %7)
          to label %73 unwind label %173

73:                                               ; preds = %70
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #22
  br label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 1, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %76 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 1
  %77 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76, align 8, !tbaa !24
  %78 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 1, i32 0, i32 0
  %81 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 0
  %82 = invoke zeroext i1 %77(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 2)
          to label %83 unwind label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 1
  %85 = bitcast i1 (%"union.std::_Any_data"*)** %84 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !100
  %87 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 1, i32 1
  %88 = bitcast i1 (%"union.std::_Any_data"*)** %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !100
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !24
  %91 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75 to i64*
  store i64 %90, i64* %91, align 8, !tbaa !24
  br label %101

92:                                               ; preds = %79
  %93 = landingpad { i8*, i32 }
          cleanup
  %94 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %95 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %94, null
  br i1 %95, label %177, label %96

96:                                               ; preds = %92
  %97 = invoke zeroext i1 %94(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, i32 3)
          to label %177 unwind label %98

98:                                               ; preds = %96
  %99 = landingpad { i8*, i32 }
          catch i8* null
  %100 = extractvalue { i8*, i32 } %99, 0
  call void @__clang_call_terminate(i8* %100) #25
  unreachable

101:                                              ; preds = %83, %74
  %102 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4
  %103 = invoke nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionINSC_19calculation_options21termination_conditionEEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISH_E4typeESt15__invoke_resultIRSQ_JS7_EEEE5valueERS9_E4typeEOSH_(%"class.std::function"* nonnull %102, %class.anon.40* nonnull align 8 dereferenceable(48) %11)
          to label %104 unwind label %188

104:                                              ; preds = %101
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %107, %104
  %114 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 0, i32 0
  %115 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  %116 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  invoke void %115(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %117
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %117
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %19, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3)
          to label %123 unwind label %169

123:                                              ; preds = %122
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %24, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %124 unwind label %169

124:                                              ; preds = %123
  %125 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %126 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %127 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %128 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %127, align 8, !tbaa !170
  %129 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  invoke void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %131 unwind label %169

131:                                              ; preds = %130
  %132 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %133 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %132, i64 1
  store %"struct.partdiff::askparams::argument_parser::argument_description"* %133, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  br label %136

134:                                              ; preds = %124
  %135 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3
  invoke void @_ZNSt6vectorIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector.3"* nonnull %135, %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %136 unwind label %169

136:                                              ; preds = %131, %134
  %137 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %138 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %141 = invoke zeroext i1 %137(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, i32 3)
          to label %145 unwind label %142

142:                                              ; preds = %139
  %143 = landingpad { i8*, i32 }
          catch i8* null
  %144 = extractvalue { i8*, i32 } %143, 0
  call void @__clang_call_terminate(i8* %144) #25
  unreachable

145:                                              ; preds = %139, %136
  %146 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8, !tbaa !20
  %148 = icmp eq i8* %147, %28
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @_ZdlPv(i8* %147) #22
  br label %150

150:                                              ; preds = %149, %145
  %151 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !20
  %153 = icmp eq i8* %152, %23
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @_ZdlPv(i8* %152) #22
  br label %155

155:                                              ; preds = %154, %150
  %156 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8, !tbaa !20
  %158 = icmp eq i8* %157, %18
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call void @_ZdlPv(i8* %157) #22
  br label %160

160:                                              ; preds = %159, %155
  %161 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %162 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  invoke void %161(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %164 unwind label %165

164:                                              ; preds = %163
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  br label %168

165:                                              ; preds = %163
  %166 = landingpad { i8*, i32 }
          catch i8* null
  %167 = extractvalue { i8*, i32 } %166, 0
  call void @__clang_call_terminate(i8* %167) #25
  unreachable

168:                                              ; preds = %160, %164
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  ret void

169:                                              ; preds = %134, %130, %123, %122, %12
  %170 = landingpad { i8*, i32 }
          cleanup
  %171 = extractvalue { i8*, i32 } %170, 0
  %172 = extractvalue { i8*, i32 } %170, 1
  br label %212

173:                                              ; preds = %70
  %174 = landingpad { i8*, i32 }
          cleanup
  %175 = extractvalue { i8*, i32 } %174, 0
  %176 = extractvalue { i8*, i32 } %174, 1
  br label %209

177:                                              ; preds = %92, %96
  %178 = extractvalue { i8*, i32 } %93, 0
  %179 = extractvalue { i8*, i32 } %93, 1
  %180 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 0, i32 0
  %181 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  %182 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %181, null
  br i1 %182, label %209, label %183

183:                                              ; preds = %177
  invoke void %181(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %184 unwind label %185

184:                                              ; preds = %183
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  br label %209

185:                                              ; preds = %183
  %186 = landingpad { i8*, i32 }
          catch i8* null
  %187 = extractvalue { i8*, i32 } %186, 0
  call void @__clang_call_terminate(i8* %187) #25
  unreachable

188:                                              ; preds = %101
  %189 = landingpad { i8*, i32 }
          cleanup
  %190 = extractvalue { i8*, i32 } %189, 0
  %191 = extractvalue { i8*, i32 } %189, 1
  %192 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %193 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 1, i32 0, i32 0
  %196 = invoke zeroext i1 %192(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, i32 3)
          to label %200 unwind label %197

197:                                              ; preds = %194
  %198 = landingpad { i8*, i32 }
          catch i8* null
  %199 = extractvalue { i8*, i32 } %198, 0
  call void @__clang_call_terminate(i8* %199) #25
  unreachable

200:                                              ; preds = %194, %188
  %201 = getelementptr inbounds %class.anon.40, %class.anon.40* %11, i64 0, i32 0, i32 0
  %202 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  %203 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  invoke void %202(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %205 unwind label %206

205:                                              ; preds = %204
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  br label %209

206:                                              ; preds = %204
  %207 = landingpad { i8*, i32 }
          catch i8* null
  %208 = extractvalue { i8*, i32 } %207, 0
  call void @__clang_call_terminate(i8* %208) #25
  unreachable

209:                                              ; preds = %205, %200, %184, %177, %173
  %210 = phi i8* [ %175, %173 ], [ %178, %177 ], [ %178, %184 ], [ %190, %200 ], [ %190, %205 ]
  %211 = phi i32 [ %176, %173 ], [ %179, %177 ], [ %179, %184 ], [ %191, %200 ], [ %191, %205 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  br label %212

212:                                              ; preds = %209, %169
  %213 = phi i8* [ %171, %169 ], [ %210, %209 ]
  %214 = phi i32 [ %172, %169 ], [ %211, %209 ]
  %215 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %216 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %215, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %219 = invoke zeroext i1 %215(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, i32 3)
          to label %223 unwind label %220

220:                                              ; preds = %217
  %221 = landingpad { i8*, i32 }
          catch i8* null
  %222 = extractvalue { i8*, i32 } %221, 0
  call void @__clang_call_terminate(i8* %222) #25
  unreachable

223:                                              ; preds = %217, %212
  %224 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8, !tbaa !20
  %226 = icmp eq i8* %225, %28
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  call void @_ZdlPv(i8* %225) #22
  br label %228

228:                                              ; preds = %227, %223
  %229 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8, !tbaa !20
  %231 = icmp eq i8* %230, %23
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  call void @_ZdlPv(i8* %230) #22
  br label %233

233:                                              ; preds = %232, %228
  %234 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8, !tbaa !20
  %236 = icmp eq i8* %235, %18
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  call void @_ZdlPv(i8* %235) #22
  br label %238

238:                                              ; preds = %237, %233
  %239 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %240 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  %241 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %240, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  invoke void %240(i32 3, %"class.std::any"* nonnull %243, %"union.std::any::_Arg"* null)
          to label %244 unwind label %245

244:                                              ; preds = %242
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  br label %248

245:                                              ; preds = %242
  %246 = landingpad { i8*, i32 }
          catch i8* null
  %247 = extractvalue { i8*, i32 } %246, 0
  call void @__clang_call_terminate(i8* %247) #25
  unreachable

248:                                              ; preds = %238, %244
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  %249 = insertvalue { i8*, i32 } undef, i8* %213, 0
  %250 = insertvalue { i8*, i32 } %249, i32 %214, 1
  resume { i8*, i32 } %250
}

; Function Attrs: uwtable
define dso_local void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* nonnull %1, %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"* %3) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  br label %6

6:                                                ; preds = %4
  %7 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #22
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false) #22
  %8 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 1, i32 2
  %10 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  store %union.anon* %9, %union.anon** %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 1, i32 1
  store i64 0, i64* %11, align 8, !tbaa !23
  %12 = bitcast %union.anon* %9 to i8*
  store i8 0, i8* %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 2
  %14 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 2, i32 2
  %15 = bitcast %"class.std::__cxx11::basic_string"* %13 to %union.anon**
  store %union.anon* %14, %union.anon** %15, align 8, !tbaa !18
  %16 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 2, i32 1
  store i64 0, i64* %16, align 8, !tbaa !23
  %17 = bitcast %union.anon* %14 to i8*
  store i8 0, i8* %17, align 8, !tbaa !15
  %18 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 3
  %19 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 3, i32 2
  %20 = bitcast %"class.std::__cxx11::basic_string"* %18 to %union.anon**
  store %union.anon* %19, %union.anon** %20, align 8, !tbaa !18
  %21 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 3, i32 1
  store i64 0, i64* %21, align 8, !tbaa !23
  %22 = bitcast %union.anon* %19 to i8*
  store i8 0, i8* %22, align 8, !tbaa !15
  %23 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 4, i32 0, i32 1
  %24 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 4, i32 1
  store i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE9_M_invokeERKSt9_Any_dataS7_, i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %24, align 8, !tbaa !26
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %23, align 8, !tbaa !24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %8, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
          to label %25 unwind label %74

25:                                               ; preds = %6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %13, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %2)
          to label %26 unwind label %74

26:                                               ; preds = %25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %18, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3)
          to label %27 unwind label %74

27:                                               ; preds = %26
  %28 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %29 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %28, align 8, !tbaa !169
  %30 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %31 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %30, align 8, !tbaa !170
  %32 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  invoke void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %29, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %5)
          to label %34 unwind label %74

34:                                               ; preds = %33
  %35 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %28, align 8, !tbaa !169
  %36 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %35, i64 1
  store %"struct.partdiff::askparams::argument_parser::argument_description"* %36, %"struct.partdiff::askparams::argument_parser::argument_description"** %28, align 8, !tbaa !169
  br label %39

37:                                               ; preds = %27
  %38 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3
  invoke void @_ZNSt6vectorIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector.3"* nonnull %38, %"struct.partdiff::askparams::argument_parser::argument_description"* %29, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %5)
          to label %39 unwind label %74

39:                                               ; preds = %34, %37
  %40 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %23, align 8, !tbaa !24
  %41 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 4, i32 0, i32 0
  %44 = invoke zeroext i1 %40(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %43, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %43, i32 3)
          to label %48 unwind label %45

45:                                               ; preds = %42
  %46 = landingpad { i8*, i32 }
          catch i8* null
  %47 = extractvalue { i8*, i32 } %46, 0
  call void @__clang_call_terminate(i8* %47) #25
  unreachable

48:                                               ; preds = %42, %39
  %49 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 3, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8, !tbaa !20
  %51 = icmp eq i8* %50, %22
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call void @_ZdlPv(i8* %50) #22
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 2, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8, !tbaa !20
  %56 = icmp eq i8* %55, %17
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void @_ZdlPv(i8* %55) #22
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 1, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8, !tbaa !20
  %61 = icmp eq i8* %60, %12
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  call void @_ZdlPv(i8* %60) #22
  br label %63

63:                                               ; preds = %62, %58
  %64 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 0, i32 0
  %65 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %64, align 8, !tbaa !16
  %66 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 0
  invoke void %65(i32 3, %"class.std::any"* nonnull %68, %"union.std::any::_Arg"* null)
          to label %69 unwind label %70

69:                                               ; preds = %67
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %64, align 8, !tbaa !16
  br label %73

70:                                               ; preds = %67
  %71 = landingpad { i8*, i32 }
          catch i8* null
  %72 = extractvalue { i8*, i32 } %71, 0
  call void @__clang_call_terminate(i8* %72) #25
  unreachable

73:                                               ; preds = %63, %69
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #22
  ret void

74:                                               ; preds = %37, %33, %26, %25, %6
  %75 = landingpad { i8*, i32 }
          cleanup
  %76 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %23, align 8, !tbaa !24
  %77 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 4, i32 0, i32 0
  %80 = invoke zeroext i1 %76(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %79, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %79, i32 3)
          to label %84 unwind label %81

81:                                               ; preds = %78
  %82 = landingpad { i8*, i32 }
          catch i8* null
  %83 = extractvalue { i8*, i32 } %82, 0
  call void @__clang_call_terminate(i8* %83) #25
  unreachable

84:                                               ; preds = %78, %74
  %85 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 3, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8, !tbaa !20
  %87 = icmp eq i8* %86, %22
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call void @_ZdlPv(i8* %86) #22
  br label %89

89:                                               ; preds = %88, %84
  %90 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 2, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8, !tbaa !20
  %92 = icmp eq i8* %91, %17
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void @_ZdlPv(i8* %91) #22
  br label %94

94:                                               ; preds = %93, %89
  %95 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 1, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8, !tbaa !20
  %97 = icmp eq i8* %96, %12
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void @_ZdlPv(i8* %96) #22
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 0, i32 0
  %101 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %100, align 8, !tbaa !16
  %102 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %5, i64 0, i32 0
  invoke void %101(i32 3, %"class.std::any"* nonnull %104, %"union.std::any::_Arg"* null)
          to label %105 unwind label %106

105:                                              ; preds = %103
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %100, align 8, !tbaa !16
  br label %109

106:                                              ; preds = %103
  %107 = landingpad { i8*, i32 }
          catch i8* null
  %108 = extractvalue { i8*, i32 } %107, 0
  call void @__clang_call_terminate(i8* %108) #25
  unreachable

109:                                              ; preds = %99, %105
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #22
  resume { i8*, i32 } %75
}

; Function Attrs: inlinehint uwtable
define internal fastcc void @"_ZZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvENK3$_6clB5cxx11Ed"(%"class.std::__cxx11::basic_string"* noalias align 8 %0, double %1) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !type !171 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.fmt::v7::format_arg_store.21", align 16
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  br label %10

10:                                               ; preds = %2
  %11 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #22
  %12 = bitcast %"class.fmt::v7::format_arg_store.21"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #22, !noalias !173
  %13 = bitcast %"class.fmt::v7::format_arg_store.21"* %4 to double*
  store double %1, double* %13, align 16, !noalias !173
  %14 = getelementptr inbounds %"class.fmt::v7::format_arg_store.21", %"class.fmt::v7::format_arg_store.21"* %4, i64 0, i32 0, i32 0, i64 0
  call void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %5, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 6, i64 10, %"class.fmt::v7::detail::value"* nonnull %14)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #22, !noalias !173
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !23
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !20
  br i1 %17, label %40, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds i8, i8* %19, i64 %16
  %22 = ptrtoint i8* %21 to i64
  br label %23

23:                                               ; preds = %20, %35
  %24 = phi i64 [ %16, %20 ], [ %38, %35 ]
  %25 = phi i8* [ %19, %20 ], [ %36, %35 ]
  %26 = call i8* @memchr(i8* %25, i32 101, i64 %24) #22
  %27 = icmp eq i8* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load i8, i8* %26, align 1
  %30 = icmp eq i8 %29, 101
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = ptrtoint i8* %26 to i64
  %33 = ptrtoint i8* %19 to i64
  %34 = sub i64 %32, %33
  br label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds i8, i8* %26, i64 1
  %37 = ptrtoint i8* %36 to i64
  %38 = sub i64 %22, %37
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %23

40:                                               ; preds = %23, %35, %10, %31
  %41 = phi i64 [ %34, %31 ], [ -1, %10 ], [ -1, %35 ], [ -1, %23 ]
  %42 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %42) #22
  %43 = shl i64 %41, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %46 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %45, %union.anon** %46, align 8, !tbaa !18, !alias.scope !176
  %47 = bitcast %union.anon* %45 to i8*
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %49 = icmp ugt i64 %16, %44
  %50 = select i1 %49, i64 %44, i64 %16
  %51 = icmp ugt i64 %50, 15
  br i1 %51, label %52, label %66

52:                                               ; preds = %40
  %53 = icmp slt i64 %50, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %55 unwind label %331

55:                                               ; preds = %54
  unreachable

56:                                               ; preds = %52
  %57 = add nuw i64 %50, 1
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %60 unwind label %331

60:                                               ; preds = %59
  unreachable

61:                                               ; preds = %56
  %62 = invoke noalias nonnull i8* @_Znwm(i64 %57) #24
          to label %63 unwind label %331

63:                                               ; preds = %61
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  store i8* %62, i8** %64, align 8, !tbaa !20, !alias.scope !176
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  store i64 %50, i64* %65, align 8, !tbaa !15, !alias.scope !176
  br label %66

66:                                               ; preds = %63, %40
  %67 = phi i8* [ %62, %63 ], [ %47, %40 ]
  switch i64 %50, label %70 [
    i64 1, label %68
    i64 0, label %71
  ]

68:                                               ; preds = %66
  %69 = load i8, i8* %19, align 1, !tbaa !15
  store i8 %69, i8* %67, align 1, !tbaa !15
  br label %71

70:                                               ; preds = %66
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %67, i8* align 1 %19, i64 %50, i1 false) #22
  br label %71

71:                                               ; preds = %70, %68, %66
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 %50, i64* %72, align 8, !tbaa !23, !alias.scope !176
  %73 = getelementptr inbounds i8, i8* %67, i64 %50
  store i8 0, i8* %73, align 1, !tbaa !15
  %74 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %74) #22
  %75 = add i64 %43, 4294967296
  %76 = ashr exact i64 %75, 32
  %77 = load i64, i64* %15, align 8, !tbaa !23
  %78 = xor i64 %44, -1
  %79 = add i64 %77, %78
  %80 = icmp ult i64 %77, %76
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i64 %76, i64 %77) #23
          to label %82 unwind label %335

82:                                               ; preds = %81
  unreachable

83:                                               ; preds = %71
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %85 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %84, %union.anon** %85, align 8, !tbaa !18, !alias.scope !179
  %86 = bitcast %union.anon* %84 to i8*
  %87 = load i8*, i8** %48, align 8, !tbaa !20, !noalias !179
  %88 = getelementptr inbounds i8, i8* %87, i64 %76
  %89 = sub i64 %77, %76
  %90 = icmp ugt i64 %89, %79
  %91 = select i1 %90, i64 %79, i64 %89
  %92 = icmp ugt i64 %91, 15
  br i1 %92, label %93, label %107

93:                                               ; preds = %83
  %94 = icmp slt i64 %91, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %93
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %96 unwind label %335

96:                                               ; preds = %95
  unreachable

97:                                               ; preds = %93
  %98 = add nuw i64 %91, 1
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %101 unwind label %335

101:                                              ; preds = %100
  unreachable

102:                                              ; preds = %97
  %103 = invoke noalias nonnull i8* @_Znwm(i64 %98) #24
          to label %104 unwind label %335

104:                                              ; preds = %102
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  store i8* %103, i8** %105, align 8, !tbaa !20, !alias.scope !179
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  store i64 %91, i64* %106, align 8, !tbaa !15, !alias.scope !179
  br label %107

107:                                              ; preds = %104, %83
  %108 = phi i8* [ %103, %104 ], [ %86, %83 ]
  switch i64 %91, label %111 [
    i64 1, label %109
    i64 0, label %112
  ]

109:                                              ; preds = %107
  %110 = load i8, i8* %88, align 1, !tbaa !15
  store i8 %110, i8* %108, align 1, !tbaa !15
  br label %112

111:                                              ; preds = %107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %108, i8* align 1 %88, i64 %91, i1 false) #22
  br label %112

112:                                              ; preds = %111, %109, %107
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  store i64 %91, i64* %113, align 8, !tbaa !23, !alias.scope !179
  %114 = getelementptr inbounds i8, i8* %108, i64 %91
  store i8 0, i8* %114, align 1, !tbaa !15
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8, !tbaa !20
  %117 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %117) #22
  %118 = tail call i32* @__errno_location() #26
  %119 = load i32, i32* %118, align 4, !tbaa !54
  store i32 0, i32* %118, align 4, !tbaa !54
  %120 = call i64 @strtol(i8* %116, i8** nonnull %3, i32 10)
  %121 = load i8*, i8** %3, align 8, !tbaa !67
  %122 = icmp eq i8* %121, %116
  br i1 %122, label %123, label %133

123:                                              ; preds = %112
  invoke void @_ZSt24__throw_invalid_argumentPKc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #23
          to label %124 unwind label %125

124:                                              ; preds = %123
  unreachable

125:                                              ; preds = %139, %123
  %126 = landingpad { i8*, i32 }
          cleanup
  %127 = load i32, i32* %118, align 4, !tbaa !54
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 %119, i32* %118, align 4, !tbaa !54
  br label %130

130:                                              ; preds = %129, %125
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %117) #22
  %131 = extractvalue { i8*, i32 } %126, 0
  %132 = extractvalue { i8*, i32 } %126, 1
  br label %366

133:                                              ; preds = %112
  %134 = load i32, i32* %118, align 4, !tbaa !54
  %135 = icmp eq i32 %134, 34
  %136 = add i64 %120, 2147483648
  %137 = icmp ugt i64 %136, 4294967295
  %138 = or i1 %137, %135
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  invoke void @_ZSt20__throw_out_of_rangePKc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #23
          to label %140 unwind label %125

140:                                              ; preds = %139
  unreachable

141:                                              ; preds = %133
  %142 = icmp eq i32 %134, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %141
  store i32 %119, i32* %118, align 4, !tbaa !54
  br label %144

144:                                              ; preds = %143, %141
  %145 = trunc i64 %120 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %117) #22
  %146 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %146) #22
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* nonnull sret align 8 %8, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
          to label %147 unwind label %339

147:                                              ; preds = %144
  %148 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %148) #22
  %149 = icmp slt i32 %145, 0
  %150 = sub i32 0, %145
  %151 = select i1 %149, i32 %150, i32 %145
  %152 = icmp ult i32 %151, 10
  br i1 %152, label %171, label %153

153:                                              ; preds = %147, %167
  %154 = phi i32 [ %168, %167 ], [ %151, %147 ]
  %155 = phi i32 [ %169, %167 ], [ 1, %147 ]
  %156 = icmp ult i32 %154, 100
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = add i32 %155, 1
  br label %171

159:                                              ; preds = %153
  %160 = icmp ult i32 %154, 1000
  br i1 %160, label %161, label %163

161:                                              ; preds = %159
  %162 = add i32 %155, 2
  br label %171

163:                                              ; preds = %159
  %164 = icmp ult i32 %154, 10000
  br i1 %164, label %165, label %167

165:                                              ; preds = %163
  %166 = add i32 %155, 3
  br label %171

167:                                              ; preds = %163
  %168 = udiv i32 %154, 10000
  %169 = add i32 %155, 4
  %170 = icmp ult i32 %154, 100000
  br i1 %170, label %171, label %153

171:                                              ; preds = %167, %165, %161, %157, %147
  %172 = phi i32 [ %158, %157 ], [ %162, %161 ], [ %166, %165 ], [ 1, %147 ], [ %169, %167 ]
  %173 = lshr i32 %145, 31
  %174 = add i32 %172, %173
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %177 = bitcast %"class.std::__cxx11::basic_string"* %9 to %union.anon**
  store %union.anon* %176, %union.anon** %177, align 8, !tbaa !18, !alias.scope !182
  %178 = icmp ugt i32 %174, 15
  %179 = bitcast %union.anon* %176 to i8*
  br i1 %178, label %180, label %186

180:                                              ; preds = %171
  %181 = add nuw nsw i64 %175, 1
  %182 = invoke noalias nonnull i8* @_Znwm(i64 %181) #24
          to label %183 unwind label %343

183:                                              ; preds = %180
  %184 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  store i8* %182, i8** %184, align 8, !tbaa !20, !alias.scope !182
  %185 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2, i32 0
  store i64 %175, i64* %185, align 8, !tbaa !15, !alias.scope !182
  br label %188

186:                                              ; preds = %171
  switch i32 %174, label %188 [
    i32 0, label %190
    i32 1, label %187
  ]

187:                                              ; preds = %186
  store i8 45, i8* %179, align 8, !tbaa !15, !alias.scope !182
  br label %190

188:                                              ; preds = %186, %183
  %189 = phi i8* [ %182, %183 ], [ %179, %186 ]
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %189, i8 45, i64 %175, i1 false) #22
  br label %190

190:                                              ; preds = %188, %187, %186
  %191 = phi i8* [ %189, %188 ], [ %179, %187 ], [ %179, %186 ]
  %192 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  store i64 %175, i64* %192, align 8, !tbaa !23, !alias.scope !182
  %193 = getelementptr inbounds i8, i8* %191, i64 %175
  store i8 0, i8* %193, align 1, !tbaa !15
  %194 = zext i32 %173 to i64
  %195 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8, !tbaa !20, !alias.scope !182
  %197 = getelementptr inbounds i8, i8* %196, i64 %194
  %198 = icmp ugt i32 %151, 99
  br i1 %198, label %199, label %221

199:                                              ; preds = %190
  %200 = add i32 %172, -1
  br label %201

201:                                              ; preds = %201, %199
  %202 = phi i32 [ %206, %201 ], [ %151, %199 ]
  %203 = phi i32 [ %219, %201 ], [ %200, %199 ]
  %204 = urem i32 %202, 100
  %205 = shl nuw nsw i32 %204, 1
  %206 = udiv i32 %202, 100
  %207 = or i32 %205, 1
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits.const, i64 0, i64 %208
  %210 = load i8, i8* %209, align 1, !tbaa !15
  %211 = zext i32 %203 to i64
  %212 = getelementptr inbounds i8, i8* %197, i64 %211
  store i8 %210, i8* %212, align 1, !tbaa !15
  %213 = zext i32 %205 to i64
  %214 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits.const, i64 0, i64 %213
  %215 = load i8, i8* %214, align 2, !tbaa !15
  %216 = add i32 %203, -1
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %197, i64 %217
  store i8 %215, i8* %218, align 1, !tbaa !15
  %219 = add i32 %203, -2
  %220 = icmp ugt i32 %202, 9999
  br i1 %220, label %201, label %221

221:                                              ; preds = %201, %190
  %222 = phi i32 [ %151, %190 ], [ %206, %201 ]
  %223 = icmp ugt i32 %222, 9
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = shl nuw nsw i32 %222, 1
  %226 = or i32 %225, 1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits.const, i64 0, i64 %227
  %229 = load i8, i8* %228, align 1, !tbaa !15
  %230 = getelementptr inbounds i8, i8* %197, i64 1
  store i8 %229, i8* %230, align 1, !tbaa !15
  %231 = zext i32 %225 to i64
  %232 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits.const, i64 0, i64 %231
  %233 = load i8, i8* %232, align 2, !tbaa !15
  br label %237

234:                                              ; preds = %221
  %235 = trunc i32 %222 to i8
  %236 = add nuw nsw i8 %235, 48
  br label %237

237:                                              ; preds = %234, %224
  %238 = phi i8 [ %236, %234 ], [ %233, %224 ]
  store i8 %238, i8* %197, align 1, !tbaa !15
  %239 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  %240 = load i64, i64* %239, align 8, !tbaa !23, !noalias !185
  %241 = load i64, i64* %192, align 8, !tbaa !23, !noalias !185
  %242 = add i64 %241, %240
  %243 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8, !tbaa !20, !noalias !185
  %245 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %246 = bitcast %union.anon* %245 to i8*
  %247 = icmp eq i8* %244, %246
  %248 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 0
  %249 = load i64, i64* %248, align 8, !noalias !185
  %250 = select i1 %247, i64 15, i64 %249
  %251 = icmp ugt i64 %242, %250
  %252 = load i8*, i8** %195, align 8, !tbaa !20, !noalias !185
  br i1 %251, label %253, label %281

253:                                              ; preds = %237
  %254 = icmp eq i8* %252, %179
  %255 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2, i32 0
  %256 = load i64, i64* %255, align 8, !noalias !185
  %257 = select i1 %254, i64 15, i64 %256
  %258 = icmp ugt i64 %242, %257
  br i1 %258, label %289, label %259

259:                                              ; preds = %253
  %260 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull %9, i64 0, i64 0, i8* %244, i64 %240)
          to label %261 unwind label %347

261:                                              ; preds = %259
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %263 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %262, %union.anon** %263, align 8, !tbaa !18, !alias.scope !185
  %264 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %260, i64 0, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8, !tbaa !20
  %266 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %260, i64 0, i32 2
  %267 = bitcast %union.anon* %266 to i8*
  %268 = icmp eq i8* %265, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %261
  %270 = bitcast %union.anon* %262 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %270, i8* nonnull align 8 dereferenceable(16) %265, i64 16, i1 false) #22
  br label %276

271:                                              ; preds = %261
  %272 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %265, i8** %272, align 8, !tbaa !20, !alias.scope !185
  %273 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %260, i64 0, i32 2, i32 0
  %274 = load i64, i64* %273, align 8, !tbaa !15
  %275 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %274, i64* %275, align 8, !tbaa !15, !alias.scope !185
  br label %276

276:                                              ; preds = %271, %269
  %277 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %260, i64 0, i32 1
  %278 = load i64, i64* %277, align 8, !tbaa !23
  %279 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %278, i64* %279, align 8, !tbaa !23, !alias.scope !185
  %280 = bitcast %"class.std::__cxx11::basic_string"* %260 to %union.anon**
  store %union.anon* %266, %union.anon** %280, align 8, !tbaa !20
  store i64 0, i64* %277, align 8, !tbaa !23
  store i8 0, i8* %267, align 8, !tbaa !15
  br label %307

281:                                              ; preds = %237
  %282 = icmp eq i64 %241, 0
  br i1 %282, label %290, label %283

283:                                              ; preds = %281
  %284 = getelementptr inbounds i8, i8* %244, i64 %240
  %285 = icmp eq i64 %241, 1
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i8, i8* %252, align 1, !tbaa !15
  store i8 %287, i8* %284, align 1, !tbaa !15
  br label %290

288:                                              ; preds = %283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %284, i8* align 1 %252, i64 %241, i1 false) #22
  br label %290

289:                                              ; preds = %253
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull %8, i64 %240, i64 0, i8* %252, i64 %241)
          to label %290 unwind label %347

290:                                              ; preds = %289, %288, %286, %281
  store i64 %242, i64* %239, align 8, !tbaa !23, !noalias !185
  %291 = load i8*, i8** %243, align 8, !tbaa !20, !noalias !185
  %292 = getelementptr inbounds i8, i8* %291, i64 %242
  store i8 0, i8* %292, align 1, !tbaa !15
  %293 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %294 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %293, %union.anon** %294, align 8, !tbaa !18, !alias.scope !185
  %295 = load i8*, i8** %243, align 8, !tbaa !20, !noalias !185
  %296 = icmp eq i8* %295, %246
  br i1 %296, label %297, label %299

297:                                              ; preds = %290
  %298 = bitcast %union.anon* %293 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %298, i8* nonnull align 8 dereferenceable(16) %246, i64 16, i1 false) #22
  br label %303

299:                                              ; preds = %290
  %300 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %295, i8** %300, align 8, !tbaa !20, !alias.scope !185
  %301 = load i64, i64* %248, align 8, !tbaa !15, !noalias !185
  %302 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %301, i64* %302, align 8, !tbaa !15, !alias.scope !185
  br label %303

303:                                              ; preds = %299, %297
  %304 = load i64, i64* %239, align 8, !tbaa !23, !noalias !185
  %305 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %304, i64* %305, align 8, !tbaa !23, !alias.scope !185
  %306 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  store %union.anon* %245, %union.anon** %306, align 8, !tbaa !20, !noalias !185
  store i64 0, i64* %239, align 8, !tbaa !23, !noalias !185
  store i8 0, i8* %246, align 8, !tbaa !15, !noalias !185
  br label %307

307:                                              ; preds = %303, %276
  %308 = load i8*, i8** %195, align 8, !tbaa !20
  %309 = icmp eq i8* %308, %179
  br i1 %309, label %311, label %310

310:                                              ; preds = %307
  call void @_ZdlPv(i8* %308) #22
  br label %311

311:                                              ; preds = %307, %310
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %148) #22
  %312 = load i8*, i8** %243, align 8, !tbaa !20
  %313 = icmp eq i8* %312, %246
  br i1 %313, label %315, label %314

314:                                              ; preds = %311
  call void @_ZdlPv(i8* %312) #22
  br label %315

315:                                              ; preds = %311, %314
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %146) #22
  %316 = load i8*, i8** %115, align 8, !tbaa !20
  %317 = icmp eq i8* %316, %86
  br i1 %317, label %319, label %318

318:                                              ; preds = %315
  call void @_ZdlPv(i8* %316) #22
  br label %319

319:                                              ; preds = %315, %318
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %74) #22
  %320 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8, !tbaa !20
  %322 = icmp eq i8* %321, %47
  br i1 %322, label %324, label %323

323:                                              ; preds = %319
  call void @_ZdlPv(i8* %321) #22
  br label %324

324:                                              ; preds = %319, %323
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %42) #22
  %325 = load i8*, i8** %48, align 8, !tbaa !20
  %326 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %327 = bitcast %union.anon* %326 to i8*
  %328 = icmp eq i8* %325, %327
  br i1 %328, label %330, label %329

329:                                              ; preds = %324
  call void @_ZdlPv(i8* %325) #22
  br label %330

330:                                              ; preds = %324, %329
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  ret void

331:                                              ; preds = %61, %59, %54
  %332 = landingpad { i8*, i32 }
          cleanup
  %333 = extractvalue { i8*, i32 } %332, 0
  %334 = extractvalue { i8*, i32 } %332, 1
  br label %379

335:                                              ; preds = %102, %100, %95, %81
  %336 = landingpad { i8*, i32 }
          cleanup
  %337 = extractvalue { i8*, i32 } %336, 0
  %338 = extractvalue { i8*, i32 } %336, 1
  br label %372

339:                                              ; preds = %144
  %340 = landingpad { i8*, i32 }
          cleanup
  %341 = extractvalue { i8*, i32 } %340, 0
  %342 = extractvalue { i8*, i32 } %340, 1
  br label %363

343:                                              ; preds = %180
  %344 = landingpad { i8*, i32 }
          cleanup
  %345 = extractvalue { i8*, i32 } %344, 0
  %346 = extractvalue { i8*, i32 } %344, 1
  br label %354

347:                                              ; preds = %289, %259
  %348 = landingpad { i8*, i32 }
          cleanup
  %349 = extractvalue { i8*, i32 } %348, 0
  %350 = extractvalue { i8*, i32 } %348, 1
  %351 = load i8*, i8** %195, align 8, !tbaa !20
  %352 = icmp eq i8* %351, %179
  br i1 %352, label %354, label %353

353:                                              ; preds = %347
  call void @_ZdlPv(i8* %351) #22
  br label %354

354:                                              ; preds = %353, %347, %343
  %355 = phi i32 [ %346, %343 ], [ %350, %347 ], [ %350, %353 ]
  %356 = phi i8* [ %345, %343 ], [ %349, %347 ], [ %349, %353 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %148) #22
  %357 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %358 = load i8*, i8** %357, align 8, !tbaa !20
  %359 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %360 = bitcast %union.anon* %359 to i8*
  %361 = icmp eq i8* %358, %360
  br i1 %361, label %363, label %362

362:                                              ; preds = %354
  call void @_ZdlPv(i8* %358) #22
  br label %363

363:                                              ; preds = %362, %354, %339
  %364 = phi i32 [ %342, %339 ], [ %355, %354 ], [ %355, %362 ]
  %365 = phi i8* [ %341, %339 ], [ %356, %354 ], [ %356, %362 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %146) #22
  br label %366

366:                                              ; preds = %363, %130
  %367 = phi i32 [ %364, %363 ], [ %132, %130 ]
  %368 = phi i8* [ %365, %363 ], [ %131, %130 ]
  %369 = load i8*, i8** %115, align 8, !tbaa !20
  %370 = icmp eq i8* %369, %86
  br i1 %370, label %372, label %371

371:                                              ; preds = %366
  call void @_ZdlPv(i8* %369) #22
  br label %372

372:                                              ; preds = %371, %366, %335
  %373 = phi i32 [ %338, %335 ], [ %367, %366 ], [ %367, %371 ]
  %374 = phi i8* [ %337, %335 ], [ %368, %366 ], [ %368, %371 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %74) #22
  %375 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %376 = load i8*, i8** %375, align 8, !tbaa !20
  %377 = icmp eq i8* %376, %47
  br i1 %377, label %379, label %378

378:                                              ; preds = %372
  call void @_ZdlPv(i8* %376) #22
  br label %379

379:                                              ; preds = %378, %372, %331
  %380 = phi i32 [ %334, %331 ], [ %373, %372 ], [ %373, %378 ]
  %381 = phi i8* [ %333, %331 ], [ %374, %372 ], [ %374, %378 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %42) #22
  %382 = load i8*, i8** %48, align 8, !tbaa !20
  %383 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %384 = bitcast %union.anon* %383 to i8*
  %385 = icmp eq i8* %382, %384
  br i1 %385, label %387, label %386

386:                                              ; preds = %379
  call void @_ZdlPv(i8* %382) #22
  br label %387

387:                                              ; preds = %379, %386
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  %388 = insertvalue { i8*, i32 } undef, i8* %381, 0
  %389 = insertvalue { i8*, i32 } %388, i32 %380, 1
  resume { i8*, i32 } %389
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEE(%"class.partdiff::askparams::argument_parser"* %0, %"class.std::__cxx11::basic_string"* %1, double* %2, %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* %4, %"class.std::function.10"* %5) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"union.std::any::_Arg", align 8
  %9 = alloca %"class.std::any", align 8
  %10 = alloca %"struct.partdiff::askparams::argument_parser::argument_description", align 8
  %11 = alloca %class.anon.44, align 8
  br label %12

12:                                               ; preds = %6
  %13 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %13) #22
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false) #22
  %14 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1
  %15 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !18
  %17 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 1
  store i64 0, i64* %17, align 8, !tbaa !23
  %18 = bitcast %union.anon* %15 to i8*
  store i8 0, i8* %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2
  %20 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %19 to %union.anon**
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 1
  store i64 0, i64* %22, align 8, !tbaa !23
  %23 = bitcast %union.anon* %20 to i8*
  store i8 0, i8* %23, align 8, !tbaa !15
  %24 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3
  %25 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 2
  %26 = bitcast %"class.std::__cxx11::basic_string"* %24 to %union.anon**
  store %union.anon* %25, %union.anon** %26, align 8, !tbaa !18
  %27 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 1
  store i64 0, i64* %27, align 8, !tbaa !23
  %28 = bitcast %union.anon* %25 to i8*
  store i8 0, i8* %28, align 8, !tbaa !15
  %29 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 1
  %30 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 1
  store i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE9_M_invokeERKSt9_Any_dataS7_, i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %30, align 8, !tbaa !26
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %14, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
          to label %31 unwind label %169

31:                                               ; preds = %12
  %32 = ptrtoint double* %2 to i64
  %33 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  %34 = bitcast %"class.std::any"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34) #22
  %35 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* @_ZNSt3any17_Manager_internalIPdE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %36 = getelementptr inbounds %"class.std::any", %"class.std::any"* %9, i64 0, i32 1
  %37 = bitcast %"union.std::any::_Storage"* %36 to i64*
  store i64 %32, i64* %37, align 8, !tbaa !67
  %38 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %39 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %40 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  invoke void %39(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %42 unwind label %44

42:                                               ; preds = %41
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %43 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %47

44:                                               ; preds = %41
  %45 = landingpad { i8*, i32 }
          catch i8* null
  %46 = extractvalue { i8*, i32 } %45, 0
  call void @__clang_call_terminate(i8* %46) #25
  unreachable

47:                                               ; preds = %42, %31
  %48 = phi void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* [ @_ZNSt3any17_Manager_internalIPdE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, %31 ], [ %43, %42 ]
  %49 = bitcast %"union.std::any::_Arg"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #22
  %50 = bitcast %"union.std::any::_Arg"* %8 to %"class.std::any"**
  store %"class.std::any"* %33, %"class.std::any"** %50, align 8, !tbaa !15
  invoke void %48(i32 4, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* nonnull %8)
          to label %54 unwind label %51

51:                                               ; preds = %47
  %52 = landingpad { i8*, i32 }
          catch i8* null
  %53 = extractvalue { i8*, i32 } %52, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  call void @__clang_call_terminate(i8* %53) #25
  unreachable

54:                                               ; preds = %47
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #22
  %55 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %56 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  invoke void %55(i32 3, %"class.std::any"* nonnull %9, %"union.std::any::_Arg"* null)
          to label %58 unwind label %59

58:                                               ; preds = %57
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %62

59:                                               ; preds = %57
  %60 = landingpad { i8*, i32 }
          catch i8* null
  %61 = extractvalue { i8*, i32 } %60, 0
  call void @__clang_call_terminate(i8* %61) #25
  unreachable

62:                                               ; preds = %58, %54
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34) #22
  %63 = bitcast %class.anon.44* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %63) #22
  %64 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 0
  %65 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %65, align 8, !tbaa !15
  %66 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %67 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %69, align 8, !tbaa !16
  br label %74

70:                                               ; preds = %62
  %71 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #22
  %72 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %64, %"class.std::any"** %72, align 8, !tbaa !15
  invoke void %66(i32 2, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* nonnull %7)
          to label %73 unwind label %173

73:                                               ; preds = %70
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #22
  br label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 1, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %76 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 1
  %77 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76, align 8, !tbaa !24
  %78 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 1, i32 0, i32 0
  %81 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 0, i32 0
  %82 = invoke zeroext i1 %77(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 2)
          to label %83 unwind label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds %"class.std::function.10", %"class.std::function.10"* %5, i64 0, i32 1
  %85 = bitcast i1 (%"union.std::_Any_data"*)** %84 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !100
  %87 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 1, i32 1
  %88 = bitcast i1 (%"union.std::_Any_data"*)** %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !100
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %76 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !24
  %91 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75 to i64*
  store i64 %90, i64* %91, align 8, !tbaa !24
  br label %101

92:                                               ; preds = %79
  %93 = landingpad { i8*, i32 }
          cleanup
  %94 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %95 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %94, null
  br i1 %95, label %177, label %96

96:                                               ; preds = %92
  %97 = invoke zeroext i1 %94(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %80, i32 3)
          to label %177 unwind label %98

98:                                               ; preds = %96
  %99 = landingpad { i8*, i32 }
          catch i8* null
  %100 = extractvalue { i8*, i32 } %99, 0
  call void @__clang_call_terminate(i8* %100) #25
  unreachable

101:                                              ; preds = %83, %74
  %102 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4
  %103 = invoke nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISF_E4typeESt15__invoke_resultIRSO_JS7_EEEE5valueERS9_E4typeEOSF_(%"class.std::function"* nonnull %102, %class.anon.44* nonnull align 8 dereferenceable(48) %11)
          to label %104 unwind label %188

104:                                              ; preds = %101
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %107, %104
  %114 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 0, i32 0
  %115 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  %116 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  invoke void %115(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %117
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %114, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %117
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %19, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %3)
          to label %123 unwind label %169

123:                                              ; preds = %122
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull %24, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %124 unwind label %169

124:                                              ; preds = %123
  %125 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %126 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %127 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %128 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %127, align 8, !tbaa !170
  %129 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  invoke void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %131 unwind label %169

131:                                              ; preds = %130
  %132 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  %133 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %132, i64 1
  store %"struct.partdiff::askparams::argument_parser::argument_description"* %133, %"struct.partdiff::askparams::argument_parser::argument_description"** %125, align 8, !tbaa !169
  br label %136

134:                                              ; preds = %124
  %135 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3
  invoke void @_ZNSt6vectorIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector.3"* nonnull %135, %"struct.partdiff::askparams::argument_parser::argument_description"* %126, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %10)
          to label %136 unwind label %169

136:                                              ; preds = %131, %134
  %137 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %138 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %141 = invoke zeroext i1 %137(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %140, i32 3)
          to label %145 unwind label %142

142:                                              ; preds = %139
  %143 = landingpad { i8*, i32 }
          catch i8* null
  %144 = extractvalue { i8*, i32 } %143, 0
  call void @__clang_call_terminate(i8* %144) #25
  unreachable

145:                                              ; preds = %139, %136
  %146 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8, !tbaa !20
  %148 = icmp eq i8* %147, %28
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @_ZdlPv(i8* %147) #22
  br label %150

150:                                              ; preds = %149, %145
  %151 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8, !tbaa !20
  %153 = icmp eq i8* %152, %23
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @_ZdlPv(i8* %152) #22
  br label %155

155:                                              ; preds = %154, %150
  %156 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8, !tbaa !20
  %158 = icmp eq i8* %157, %18
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call void @_ZdlPv(i8* %157) #22
  br label %160

160:                                              ; preds = %159, %155
  %161 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  %162 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  invoke void %161(i32 3, %"class.std::any"* nonnull %33, %"union.std::any::_Arg"* null)
          to label %164 unwind label %165

164:                                              ; preds = %163
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %38, align 8, !tbaa !16
  br label %168

165:                                              ; preds = %163
  %166 = landingpad { i8*, i32 }
          catch i8* null
  %167 = extractvalue { i8*, i32 } %166, 0
  call void @__clang_call_terminate(i8* %167) #25
  unreachable

168:                                              ; preds = %160, %164
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  ret void

169:                                              ; preds = %134, %130, %123, %122, %12
  %170 = landingpad { i8*, i32 }
          cleanup
  %171 = extractvalue { i8*, i32 } %170, 0
  %172 = extractvalue { i8*, i32 } %170, 1
  br label %212

173:                                              ; preds = %70
  %174 = landingpad { i8*, i32 }
          cleanup
  %175 = extractvalue { i8*, i32 } %174, 0
  %176 = extractvalue { i8*, i32 } %174, 1
  br label %209

177:                                              ; preds = %92, %96
  %178 = extractvalue { i8*, i32 } %93, 0
  %179 = extractvalue { i8*, i32 } %93, 1
  %180 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 0, i32 0
  %181 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  %182 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %181, null
  br i1 %182, label %209, label %183

183:                                              ; preds = %177
  invoke void %181(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %184 unwind label %185

184:                                              ; preds = %183
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %180, align 8, !tbaa !16
  br label %209

185:                                              ; preds = %183
  %186 = landingpad { i8*, i32 }
          catch i8* null
  %187 = extractvalue { i8*, i32 } %186, 0
  call void @__clang_call_terminate(i8* %187) #25
  unreachable

188:                                              ; preds = %101
  %189 = landingpad { i8*, i32 }
          cleanup
  %190 = extractvalue { i8*, i32 } %189, 0
  %191 = extractvalue { i8*, i32 } %189, 1
  %192 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %75, align 8, !tbaa !24
  %193 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 1, i32 0, i32 0
  %196 = invoke zeroext i1 %192(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %195, i32 3)
          to label %200 unwind label %197

197:                                              ; preds = %194
  %198 = landingpad { i8*, i32 }
          catch i8* null
  %199 = extractvalue { i8*, i32 } %198, 0
  call void @__clang_call_terminate(i8* %199) #25
  unreachable

200:                                              ; preds = %194, %188
  %201 = getelementptr inbounds %class.anon.44, %class.anon.44* %11, i64 0, i32 0, i32 0
  %202 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  %203 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %200
  invoke void %202(i32 3, %"class.std::any"* nonnull %64, %"union.std::any::_Arg"* null)
          to label %205 unwind label %206

205:                                              ; preds = %204
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %201, align 8, !tbaa !16
  br label %209

206:                                              ; preds = %204
  %207 = landingpad { i8*, i32 }
          catch i8* null
  %208 = extractvalue { i8*, i32 } %207, 0
  call void @__clang_call_terminate(i8* %208) #25
  unreachable

209:                                              ; preds = %205, %200, %184, %177, %173
  %210 = phi i8* [ %175, %173 ], [ %178, %177 ], [ %178, %184 ], [ %190, %200 ], [ %190, %205 ]
  %211 = phi i32 [ %176, %173 ], [ %179, %177 ], [ %179, %184 ], [ %191, %200 ], [ %191, %205 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %63) #22
  br label %212

212:                                              ; preds = %209, %169
  %213 = phi i8* [ %171, %169 ], [ %210, %209 ]
  %214 = phi i32 [ %172, %169 ], [ %211, %209 ]
  %215 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %29, align 8, !tbaa !24
  %216 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %215, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 4, i32 0, i32 0
  %219 = invoke zeroext i1 %215(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %218, i32 3)
          to label %223 unwind label %220

220:                                              ; preds = %217
  %221 = landingpad { i8*, i32 }
          catch i8* null
  %222 = extractvalue { i8*, i32 } %221, 0
  call void @__clang_call_terminate(i8* %222) #25
  unreachable

223:                                              ; preds = %217, %212
  %224 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 3, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8, !tbaa !20
  %226 = icmp eq i8* %225, %28
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  call void @_ZdlPv(i8* %225) #22
  br label %228

228:                                              ; preds = %227, %223
  %229 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 2, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8, !tbaa !20
  %231 = icmp eq i8* %230, %23
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  call void @_ZdlPv(i8* %230) #22
  br label %233

233:                                              ; preds = %232, %228
  %234 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 1, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8, !tbaa !20
  %236 = icmp eq i8* %235, %18
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  call void @_ZdlPv(i8* %235) #22
  br label %238

238:                                              ; preds = %237, %233
  %239 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0, i32 0
  %240 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  %241 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %240, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %10, i64 0, i32 0
  invoke void %240(i32 3, %"class.std::any"* nonnull %243, %"union.std::any::_Arg"* null)
          to label %244 unwind label %245

244:                                              ; preds = %242
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %239, align 8, !tbaa !16
  br label %248

245:                                              ; preds = %242
  %246 = landingpad { i8*, i32 }
          catch i8* null
  %247 = extractvalue { i8*, i32 } %246, 0
  call void @__clang_call_terminate(i8* %247) #25
  unreachable

248:                                              ; preds = %238, %244
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %13) #22
  %249 = insertvalue { i8*, i32 } undef, i8* %213, 0
  %250 = insertvalue { i8*, i32 } %249, i32 %214, 1
  resume { i8*, i32 } %250
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN8partdiff9askparams15argument_parserC2EiPPKc(%"class.partdiff::askparams::argument_parser"* %0, i32 %1, i8** %2) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 1
  %6 = load i8*, i8** %2, align 8, !tbaa !67
  %7 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 1, i32 2
  %8 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %7, %union.anon** %8, align 8, !tbaa !18
  %9 = icmp eq i8* %6, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  invoke void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i64 0, i64 0)) #23
          to label %11 unwind label %75

11:                                               ; preds = %10
  unreachable

12:                                               ; preds = %4
  %13 = bitcast %union.anon* %7 to i8*
  %14 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %6) #22
  %15 = icmp ugt i64 %14, 15
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = icmp slt i64 %14, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %19 unwind label %75

19:                                               ; preds = %18
  unreachable

20:                                               ; preds = %16
  %21 = add nuw i64 %14, 1
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %24 unwind label %75

24:                                               ; preds = %23
  unreachable

25:                                               ; preds = %20
  %26 = invoke noalias nonnull i8* @_Znwm(i64 %21) #24
          to label %27 unwind label %75

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  store i8* %26, i8** %28, align 8, !tbaa !20
  %29 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 1, i32 2, i32 0
  store i64 %14, i64* %29, align 8, !tbaa !15
  br label %30

30:                                               ; preds = %27, %12
  %31 = phi i8* [ %26, %27 ], [ %13, %12 ]
  switch i64 %14, label %34 [
    i64 1, label %32
    i64 0, label %35
  ]

32:                                               ; preds = %30
  %33 = load i8, i8* %6, align 1, !tbaa !15
  store i8 %33, i8* %31, align 1, !tbaa !15
  br label %35

34:                                               ; preds = %30
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %31, i8* nonnull align 1 %6, i64 %14, i1 false) #22
  br label %35

35:                                               ; preds = %34, %32, %30
  %36 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 1, i32 1
  store i64 %14, i64* %36, align 8, !tbaa !23
  %37 = getelementptr inbounds i8, i8* %31, i64 %14
  store i8 0, i8* %37, align 1, !tbaa !15
  %38 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 2
  %39 = getelementptr inbounds i8*, i8** %2, i64 1
  %40 = sext i32 %1 to i64
  %41 = getelementptr inbounds i8*, i8** %2, i64 %40
  %42 = bitcast %"class.std::vector"* %38 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false) #22
  %43 = shl nsw i64 %40, 3
  %44 = add nsw i64 %43, -8
  %45 = ashr exact i64 %44, 3
  %46 = icmp ugt i64 %45, 288230376151711743
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i64 0, i64 0)) #23
          to label %48 unwind label %62

48:                                               ; preds = %47
  unreachable

49:                                               ; preds = %35
  %50 = icmp eq i64 %44, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = shl nuw nsw i64 %44, 2
  %53 = invoke noalias nonnull i8* @_Znwm(i64 %52) #24
          to label %54 unwind label %62

54:                                               ; preds = %51
  %55 = bitcast i8* %53 to %"class.std::__cxx11::basic_string"*
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi %"class.std::__cxx11::basic_string"* [ %55, %54 ], [ null, %49 ]
  %58 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %38, i64 0, i32 0, i32 0, i32 0, i32 0
  store %"class.std::__cxx11::basic_string"* %57, %"class.std::__cxx11::basic_string"** %58, align 8, !tbaa !71
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %57, i64 %45
  %60 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  store %"class.std::__cxx11::basic_string"* %59, %"class.std::__cxx11::basic_string"** %60, align 8, !tbaa !188
  %61 = invoke %"class.std::__cxx11::basic_string"* @_ZSt18uninitialized_copyIPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SB_SA_(i8** nonnull %39, i8** nonnull %41, %"class.std::__cxx11::basic_string"* %57)
          to label %69 unwind label %62

62:                                               ; preds = %56, %51, %47
  %63 = landingpad { i8*, i32 }
          cleanup
  %64 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %38, i64 0, i32 0, i32 0, i32 0, i32 0
  %65 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %64, align 8, !tbaa !71
  %66 = icmp eq %"class.std::__cxx11::basic_string"* %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %62
  %68 = bitcast %"class.std::__cxx11::basic_string"* %65 to i8*
  tail call void @_ZdlPv(i8* nonnull %68) #22
  br label %79

69:                                               ; preds = %56
  %70 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  store %"class.std::__cxx11::basic_string"* %61, %"class.std::__cxx11::basic_string"** %70, align 8, !tbaa !69
  %71 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3
  %72 = bitcast %"class.std::vector.3"* %71 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %72, i8 0, i64 24, i1 false) #22
  invoke void @_ZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEv(%"class.partdiff::askparams::argument_parser"* nonnull %0)
          to label %73 unwind label %82

73:                                               ; preds = %69
  invoke void @_ZN8partdiff9askparams15argument_parser10ask_paramsEv(%"class.partdiff::askparams::argument_parser"* nonnull %0)
          to label %74 unwind label %82

74:                                               ; preds = %73
  ret void

75:                                               ; preds = %25, %23, %18, %10
  %76 = landingpad { i8*, i32 }
          cleanup
  %77 = extractvalue { i8*, i32 } %76, 0
  %78 = extractvalue { i8*, i32 } %76, 1
  br label %172

79:                                               ; preds = %62, %67
  %80 = extractvalue { i8*, i32 } %63, 0
  %81 = extractvalue { i8*, i32 } %63, 1
  br label %165

82:                                               ; preds = %73, %69
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  %85 = extractvalue { i8*, i32 } %83, 1
  %86 = getelementptr inbounds %"class.std::vector.3", %"class.std::vector.3"* %71, i64 0, i32 0, i32 0, i32 0, i32 0
  %87 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %86, align 8, !tbaa !10
  %88 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %89 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %88, align 8, !tbaa !169
  %90 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %87, %89
  br i1 %90, label %138, label %91

91:                                               ; preds = %82, %133
  %92 = phi %"struct.partdiff::askparams::argument_parser::argument_description"* [ %134, %133 ], [ %87, %82 ]
  %93 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 4, i32 0, i32 1
  %94 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %93, align 8, !tbaa !24
  %95 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 4, i32 0, i32 0
  %98 = invoke zeroext i1 %94(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %97, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %97, i32 3)
          to label %102 unwind label %99

99:                                               ; preds = %96
  %100 = landingpad { i8*, i32 }
          catch i8* null
  %101 = extractvalue { i8*, i32 } %100, 0
  tail call void @__clang_call_terminate(i8* %101) #25
  unreachable

102:                                              ; preds = %96, %91
  %103 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 3, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8, !tbaa !20
  %105 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 3, i32 2
  %106 = bitcast %union.anon* %105 to i8*
  %107 = icmp eq i8* %104, %106
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  tail call void @_ZdlPv(i8* %104) #22
  br label %109

109:                                              ; preds = %108, %102
  %110 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 2, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8, !tbaa !20
  %112 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 2, i32 2
  %113 = bitcast %union.anon* %112 to i8*
  %114 = icmp eq i8* %111, %113
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  tail call void @_ZdlPv(i8* %111) #22
  br label %116

116:                                              ; preds = %115, %109
  %117 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 1, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8, !tbaa !20
  %119 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 1, i32 2
  %120 = bitcast %union.anon* %119 to i8*
  %121 = icmp eq i8* %118, %120
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  tail call void @_ZdlPv(i8* %118) #22
  br label %123

123:                                              ; preds = %122, %116
  %124 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 0, i32 0
  %125 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %124, align 8, !tbaa !16
  %126 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 0, i32 0
  invoke void %125(i32 3, %"class.std::any"* nonnull %128, %"union.std::any::_Arg"* null)
          to label %129 unwind label %130

129:                                              ; preds = %127
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %124, align 8, !tbaa !16
  br label %133

130:                                              ; preds = %127
  %131 = landingpad { i8*, i32 }
          catch i8* null
  %132 = extractvalue { i8*, i32 } %131, 0
  tail call void @__clang_call_terminate(i8* %132) #25
  unreachable

133:                                              ; preds = %129, %123
  %134 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %92, i64 1
  %135 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %134, %89
  br i1 %135, label %136, label %91

136:                                              ; preds = %133
  %137 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %86, align 8, !tbaa !10
  br label %138

138:                                              ; preds = %136, %82
  %139 = phi %"struct.partdiff::askparams::argument_parser::argument_description"* [ %137, %136 ], [ %87, %82 ]
  %140 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %139 to i8*
  tail call void @_ZdlPv(i8* nonnull %142) #22
  br label %143

143:                                              ; preds = %138, %141
  %144 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %58, align 8, !tbaa !71
  %145 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %70, align 8, !tbaa !69
  %146 = icmp eq %"class.std::__cxx11::basic_string"* %144, %145
  br i1 %146, label %160, label %147

147:                                              ; preds = %143, %155
  %148 = phi %"class.std::__cxx11::basic_string"* [ %156, %155 ], [ %144, %143 ]
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %148, i64 0, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8, !tbaa !20
  %151 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %148, i64 0, i32 2
  %152 = bitcast %union.anon* %151 to i8*
  %153 = icmp eq i8* %150, %152
  br i1 %153, label %155, label %154

154:                                              ; preds = %147
  tail call void @_ZdlPv(i8* %150) #22
  br label %155

155:                                              ; preds = %154, %147
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %148, i64 1
  %157 = icmp eq %"class.std::__cxx11::basic_string"* %156, %145
  br i1 %157, label %158, label %147

158:                                              ; preds = %155
  %159 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %58, align 8, !tbaa !71
  br label %160

160:                                              ; preds = %158, %143
  %161 = phi %"class.std::__cxx11::basic_string"* [ %159, %158 ], [ %144, %143 ]
  %162 = icmp eq %"class.std::__cxx11::basic_string"* %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = bitcast %"class.std::__cxx11::basic_string"* %161 to i8*
  tail call void @_ZdlPv(i8* nonnull %164) #22
  br label %165

165:                                              ; preds = %163, %160, %79
  %166 = phi i8* [ %80, %79 ], [ %84, %160 ], [ %84, %163 ]
  %167 = phi i32 [ %81, %79 ], [ %85, %160 ], [ %85, %163 ]
  %168 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8, !tbaa !20
  %170 = icmp eq i8* %169, %13
  br i1 %170, label %172, label %171

171:                                              ; preds = %165
  tail call void @_ZdlPv(i8* %169) #22
  br label %172

172:                                              ; preds = %171, %165, %75
  %173 = phi i8* [ %77, %75 ], [ %166, %165 ], [ %166, %171 ]
  %174 = phi i32 [ %78, %75 ], [ %167, %165 ], [ %167, %171 ]
  %175 = insertvalue { i8*, i32 } undef, i8* %173, 0
  %176 = insertvalue { i8*, i32 } %175, i32 %174, 1
  resume { i8*, i32 } %176
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #8

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #9 comdat {
  br label %2

2:                                                ; preds = %1
  %3 = tail call i8* @__cxa_begin_catch(i8* %0) #22
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare dso_local void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local %"class.std::__cxx11::basic_string"* @_ZSt18uninitialized_copyIPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SB_SA_(i8** %0, i8** %1, %"class.std::__cxx11::basic_string"* %2) local_unnamed_addr #1 comdat personality i32 (...)* @__gxx_personality_v0 {
  br label %4

4:                                                ; preds = %3
  %5 = icmp eq i8** %0, %1
  br i1 %5, label %72, label %6

6:                                                ; preds = %4, %38
  %7 = phi %"class.std::__cxx11::basic_string"* [ %42, %38 ], [ %2, %4 ]
  %8 = phi i8** [ %41, %38 ], [ %0, %4 ]
  %9 = load i8*, i8** %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %11 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %10, %union.anon** %11, align 8, !tbaa !18
  %12 = icmp eq i8* %9, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  invoke void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i64 0, i64 0)) #23
          to label %14 unwind label %46

14:                                               ; preds = %13
  unreachable

15:                                               ; preds = %6
  %16 = bitcast %union.anon* %10 to i8*
  %17 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %9) #22
  %18 = icmp ugt i64 %17, 15
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = icmp slt i64 %17, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %22 unwind label %46

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %19
  %24 = add nuw i64 %17, 1
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %27 unwind label %46

27:                                               ; preds = %26
  unreachable

28:                                               ; preds = %23
  %29 = invoke noalias nonnull i8* @_Znwm(i64 %24) #24
          to label %30 unwind label %44

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  store i8* %29, i8** %31, align 8, !tbaa !20
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  store i64 %17, i64* %32, align 8, !tbaa !15
  br label %33

33:                                               ; preds = %30, %15
  %34 = phi i8* [ %29, %30 ], [ %16, %15 ]
  switch i64 %17, label %37 [
    i64 1, label %35
    i64 0, label %38
  ]

35:                                               ; preds = %33
  %36 = load i8, i8* %9, align 1, !tbaa !15
  store i8 %36, i8* %34, align 1, !tbaa !15
  br label %38

37:                                               ; preds = %33
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %34, i8* nonnull align 1 %9, i64 %17, i1 false) #22
  br label %38

38:                                               ; preds = %37, %35, %33
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  store i64 %17, i64* %39, align 8, !tbaa !23
  %40 = getelementptr inbounds i8, i8* %34, i64 %17
  store i8 0, i8* %40, align 1, !tbaa !15
  %41 = getelementptr inbounds i8*, i8** %8, i64 1
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 1
  %43 = icmp eq i8** %41, %1
  br i1 %43, label %72, label %6

44:                                               ; preds = %28
  %45 = landingpad { i8*, i32 }
          catch i8* null
  br label %48

46:                                               ; preds = %13, %21, %26
  %47 = landingpad { i8*, i32 }
          catch i8* null
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { i8*, i32 } [ %45, %44 ], [ %47, %46 ]
  %50 = extractvalue { i8*, i32 } %49, 0
  %51 = tail call i8* @__cxa_begin_catch(i8* %50) #22
  %52 = icmp eq %"class.std::__cxx11::basic_string"* %7, %2
  br i1 %52, label %64, label %53

53:                                               ; preds = %48, %61
  %54 = phi %"class.std::__cxx11::basic_string"* [ %62, %61 ], [ %2, %48 ]
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %54, i64 0, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8, !tbaa !20
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %54, i64 0, i32 2
  %58 = bitcast %union.anon* %57 to i8*
  %59 = icmp eq i8* %56, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  tail call void @_ZdlPv(i8* %56) #22
  br label %61

61:                                               ; preds = %60, %53
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %54, i64 1
  %63 = icmp eq %"class.std::__cxx11::basic_string"* %62, %7
  br i1 %63, label %64, label %53

64:                                               ; preds = %61, %48
  invoke void @__cxa_rethrow() #23
          to label %71 unwind label %65

65:                                               ; preds = %64
  %66 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %67 unwind label %68

67:                                               ; preds = %65
  resume { i8*, i32 } %66

68:                                               ; preds = %65
  %69 = landingpad { i8*, i32 }
          catch i8* null
  %70 = extractvalue { i8*, i32 } %69, 0
  tail call void @__clang_call_terminate(i8* %70) #25
  unreachable

71:                                               ; preds = %64
  unreachable

72:                                               ; preds = %38, %4
  %73 = phi %"class.std::__cxx11::basic_string"* [ %2, %4 ], [ %42, %38 ]
  ret %"class.std::__cxx11::basic_string"* %73
}

declare dso_local void @__cxa_rethrow() local_unnamed_addr

declare dso_local void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @_ZN8partdiff9askparams15argument_parser11get_optionsEv(%"struct.partdiff::askparams::calculation_options"* noalias nocapture sret align 8 %0, %"class.partdiff::askparams::argument_parser"* nocapture readonly %1) local_unnamed_addr #11 align 2 {
  br label %3

3:                                                ; preds = %2
  %4 = bitcast %"struct.partdiff::askparams::calculation_options"* %0 to i8*
  %5 = bitcast %"class.partdiff::askparams::argument_parser"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !189
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK8partdiff9askparams15argument_parser15get_descriptionENS1_14argument_indexE(%"struct.partdiff::askparams::argument_parser::argument_description"* noalias sret align 8 %0, %"class.partdiff::askparams::argument_parser"* nocapture readonly %1, i64 %2) local_unnamed_addr #0 align 2 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.partdiff::askparams::argument_parser", %"class.partdiff::askparams::argument_parser"* %1, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %6 = load %"struct.partdiff::askparams::argument_parser::argument_description"*, %"struct.partdiff::askparams::argument_parser::argument_description"** %5, align 8, !tbaa !10, !noalias !193
  %7 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %6, i64 %2
  tail call void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %0, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %7)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(%"class.std::__cxx11::basic_string"* noalias sret align 8 %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, i8* %2) local_unnamed_addr #1 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !23
  %11 = icmp ugt i64 %10, 15
  %12 = bitcast %union.anon* %5 to i8*
  br i1 %11, label %13, label %24

13:                                               ; preds = %4
  %14 = icmp slt i64 %10, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
  unreachable

16:                                               ; preds = %13
  %17 = add nuw i64 %10, 1
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

20:                                               ; preds = %16
  %21 = tail call noalias nonnull i8* @_Znwm(i64 %17) #24
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %21, i8** %22, align 8, !tbaa !20
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %10, i64* %23, align 8, !tbaa !15
  br label %24

24:                                               ; preds = %20, %4
  %25 = phi i8* [ %21, %20 ], [ %12, %4 ]
  switch i64 %10, label %28 [
    i64 1, label %26
    i64 0, label %29
  ]

26:                                               ; preds = %24
  %27 = load i8, i8* %8, align 1, !tbaa !15
  store i8 %27, i8* %25, align 1, !tbaa !15
  br label %29

28:                                               ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %25, i8* align 1 %8, i64 %10, i1 false) #22
  br label %29

29:                                               ; preds = %24, %26, %28
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %10, i64* %30, align 8, !tbaa !23
  %31 = getelementptr inbounds i8, i8* %25, i64 %10
  store i8 0, i8* %31, align 1, !tbaa !15
  %32 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22
  %33 = load i64, i64* %30, align 8, !tbaa !23
  %34 = sub i64 9223372036854775807, %33
  %35 = icmp ult i64 %34, %32
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0)) #23
          to label %37 unwind label %56

37:                                               ; preds = %36
  unreachable

38:                                               ; preds = %29
  %39 = add i64 %33, %32
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8, !tbaa !20
  %42 = icmp eq i8* %41, %12
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = select i1 %42, i64 15, i64 %44
  %46 = icmp ugt i64 %39, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = icmp eq i64 %32, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds i8, i8* %41, i64 %33
  %51 = icmp eq i64 %32, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i8, i8* %2, align 1, !tbaa !15
  store i8 %53, i8* %50, align 1, !tbaa !15
  br label %63

54:                                               ; preds = %49
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 1 %2, i64 %32, i1 false) #22
  br label %63

55:                                               ; preds = %38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull %0, i64 %33, i64 0, i8* %2, i64 %32)
          to label %63 unwind label %56

56:                                               ; preds = %55, %36
  %57 = landingpad { i8*, i32 }
          cleanup
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8, !tbaa !20
  %60 = icmp eq i8* %59, %12
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void @_ZdlPv(i8* %59) #22
  br label %62

62:                                               ; preds = %56, %61
  resume { i8*, i32 } %57

63:                                               ; preds = %54, %52, %47, %55
  store i64 %39, i64* %30, align 8, !tbaa !23
  %64 = load i8*, i8** %40, align 8, !tbaa !20
  %65 = getelementptr inbounds i8, i8* %64, i64 %39
  store i8 0, i8* %65, align 1, !tbaa !15
  ret void
}

declare dso_local void @_ZN3fmt2v76detail7vformatB5cxx11ENS0_17basic_string_viewIcEENS0_11format_argsE(%"class.std::__cxx11::basic_string"* sret align 8, i8*, i64, i64, %"class.fmt::v7::detail::value"*) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* %0, i64 %1, i64 %2, i8* %3, i64 %4) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  br label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !23
  %9 = sub i64 %8, %1
  %10 = sub i64 %9, %2
  %11 = sub i64 %4, %2
  %12 = add i64 %11, %8
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !20
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %16 = bitcast %union.anon* %15 to i8*
  %17 = icmp eq i8* %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %20 = load i64, i64* %19, align 8, !tbaa !15
  br label %21

21:                                               ; preds = %6, %18
  %22 = phi i64 [ %20, %18 ], [ 15, %6 ]
  %23 = icmp slt i64 %12, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
  unreachable

25:                                               ; preds = %21
  %26 = icmp ugt i64 %12, %22
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = shl i64 %22, 1
  %29 = icmp ult i64 %12, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = icmp ult i64 %28, 9223372036854775807
  %32 = select i1 %31, i64 %28, i64 9223372036854775807
  br label %33

33:                                               ; preds = %30, %27, %25
  %34 = phi i64 [ %32, %30 ], [ %12, %27 ], [ %12, %25 ]
  %35 = add nuw i64 %34, 1
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

38:                                               ; preds = %33
  %39 = tail call noalias nonnull i8* @_Znwm(i64 %35) #24
  %40 = icmp eq i64 %1, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %13, align 8, !tbaa !20
  %43 = icmp eq i64 %1, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8, i8* %42, align 1, !tbaa !15
  store i8 %45, i8* %39, align 1, !tbaa !15
  br label %47

46:                                               ; preds = %41
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %39, i8* align 1 %42, i64 %1, i1 false) #22
  br label %47

47:                                               ; preds = %46, %44, %38
  %48 = icmp ne i8* %3, null
  %49 = icmp ne i64 %4, 0
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, i8* %39, i64 %1
  %53 = icmp eq i64 %4, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i8, i8* %3, align 1, !tbaa !15
  store i8 %55, i8* %52, align 1, !tbaa !15
  br label %57

56:                                               ; preds = %51
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %52, i8* nonnull align 1 %3, i64 %4, i1 false) #22
  br label %57

57:                                               ; preds = %56, %54, %47
  %58 = icmp eq i64 %10, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = load i8*, i8** %13, align 8, !tbaa !20
  br label %71

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, i8* %39, i64 %1
  %63 = getelementptr inbounds i8, i8* %62, i64 %4
  %64 = load i8*, i8** %13, align 8, !tbaa !20
  %65 = getelementptr inbounds i8, i8* %64, i64 %1
  %66 = getelementptr inbounds i8, i8* %65, i64 %2
  %67 = icmp eq i64 %10, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i8, i8* %66, align 1, !tbaa !15
  store i8 %69, i8* %63, align 1, !tbaa !15
  br label %71

70:                                               ; preds = %61
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %63, i8* align 1 %66, i64 %10, i1 false) #22
  br label %71

71:                                               ; preds = %59, %70, %68
  %72 = phi i8* [ %60, %59 ], [ %64, %70 ], [ %64, %68 ]
  %73 = icmp eq i8* %72, %16
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call void @_ZdlPv(i8* %72) #22
  br label %75

75:                                               ; preds = %71, %74
  store i8* %39, i8** %13, align 8, !tbaa !20
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %34, i64* %76, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #13

; Function Attrs: noreturn
declare dso_local void @_ZSt24__throw_out_of_range_fmtPKcz(i8*, ...) local_unnamed_addr #7

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #14

; Function Attrs: noreturn
declare dso_local void @_ZSt24__throw_invalid_argumentPKc(i8*) local_unnamed_addr #7

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() local_unnamed_addr #15

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_out_of_rangePKc(i8*) local_unnamed_addr #7

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* %0, i64 %1, i64 %2, i8* %3, i64 %4) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  br label %6

6:                                                ; preds = %5
  %7 = sub i64 0, %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !23
  %10 = add i64 %2, 9223372036854775807
  %11 = sub i64 %10, %9
  %12 = icmp ult i64 %11, %4
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0)) #23
  unreachable

14:                                               ; preds = %6
  %15 = sub i64 %4, %2
  %16 = add i64 %15, %9
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !20
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %20 = bitcast %union.anon* %19 to i8*
  %21 = icmp eq i8* %18, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !15
  br label %25

25:                                               ; preds = %14, %22
  %26 = phi i64 [ %24, %22 ], [ 15, %14 ]
  %27 = icmp ugt i64 %16, %26
  br i1 %27, label %103, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, i8* %18, i64 %1
  %30 = sub i64 %9, %1
  %31 = sub i64 %30, %2
  %32 = icmp ugt i8* %18, %3
  %33 = getelementptr inbounds i8, i8* %18, i64 %9
  %34 = icmp ult i8* %33, %3
  %35 = or i1 %32, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = icmp eq i64 %31, 0
  %38 = icmp eq i64 %4, %2
  %39 = or i1 %38, %37
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, i8* %29, i64 %4
  %42 = getelementptr inbounds i8, i8* %29, i64 %2
  %43 = icmp eq i64 %31, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i8, i8* %42, align 1, !tbaa !15
  store i8 %45, i8* %41, align 1, !tbaa !15
  br label %47

46:                                               ; preds = %40
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 %42, i64 %31, i1 false) #22
  br label %47

47:                                               ; preds = %46, %44, %36
  switch i64 %4, label %50 [
    i64 0, label %104
    i64 1, label %48
  ]

48:                                               ; preds = %47
  %49 = load i8, i8* %3, align 1, !tbaa !15
  store i8 %49, i8* %29, align 1, !tbaa !15
  br label %104

50:                                               ; preds = %47
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %3, i64 %4, i1 false) #22
  br label %104

51:                                               ; preds = %28
  %52 = icmp ugt i64 %4, %2
  %53 = add i64 %4, -1
  %54 = icmp ult i64 %53, %2
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = icmp eq i64 %4, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = load i8, i8* %3, align 1, !tbaa !15
  store i8 %58, i8* %29, align 1, !tbaa !15
  br label %60

59:                                               ; preds = %55
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %3, i64 %4, i1 false) #22
  br label %60

60:                                               ; preds = %51, %59, %57
  %61 = icmp eq i64 %31, 0
  %62 = icmp eq i64 %4, %2
  %63 = or i1 %62, %61
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, i8* %29, i64 %4
  %66 = getelementptr inbounds i8, i8* %29, i64 %2
  %67 = icmp eq i64 %31, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i8, i8* %66, align 1, !tbaa !15
  store i8 %69, i8* %65, align 1, !tbaa !15
  br label %71

70:                                               ; preds = %64
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 %66, i64 %31, i1 false) #22
  br label %71

71:                                               ; preds = %70, %68, %60
  br i1 %52, label %72, label %104

72:                                               ; preds = %71
  %73 = getelementptr inbounds i8, i8* %3, i64 %4
  %74 = getelementptr inbounds i8, i8* %29, i64 %2
  %75 = icmp ugt i8* %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = icmp eq i64 %4, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = load i8, i8* %3, align 1, !tbaa !15
  store i8 %79, i8* %29, align 1, !tbaa !15
  br label %104

80:                                               ; preds = %76
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %3, i64 %4, i1 false) #22
  br label %104

81:                                               ; preds = %72
  %82 = icmp ugt i8* %74, %3
  br i1 %82, label %89, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, i8* %73, i64 %7
  %85 = icmp eq i64 %4, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i8, i8* %84, align 1, !tbaa !15
  store i8 %87, i8* %29, align 1, !tbaa !15
  br label %104

88:                                               ; preds = %83
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %84, i64 %4, i1 false) #22
  br label %104

89:                                               ; preds = %81
  %90 = ptrtoint i8* %74 to i64
  %91 = ptrtoint i8* %3 to i64
  %92 = sub i64 %90, %91
  switch i64 %92, label %95 [
    i64 1, label %93
    i64 0, label %96
  ]

93:                                               ; preds = %89
  %94 = load i8, i8* %3, align 1, !tbaa !15
  store i8 %94, i8* %29, align 1, !tbaa !15
  br label %96

95:                                               ; preds = %89
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %3, i64 %92, i1 false) #22
  br label %96

96:                                               ; preds = %89, %93, %95
  %97 = getelementptr inbounds i8, i8* %29, i64 %92
  %98 = getelementptr inbounds i8, i8* %29, i64 %4
  %99 = sub i64 %4, %92
  switch i64 %99, label %102 [
    i64 1, label %100
    i64 0, label %104
  ]

100:                                              ; preds = %96
  %101 = load i8, i8* %98, align 1, !tbaa !15
  store i8 %101, i8* %97, align 1, !tbaa !15
  br label %104

102:                                              ; preds = %96
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %97, i8* align 1 %98, i64 %99, i1 false) #22
  br label %104

103:                                              ; preds = %25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull %0, i64 %1, i64 %2, i8* %3, i64 %4)
  br label %104

104:                                              ; preds = %47, %102, %100, %96, %88, %86, %80, %78, %50, %48, %71, %103
  store i64 %16, i64* %8, align 8, !tbaa !23
  %105 = load i8*, i8** %17, align 8, !tbaa !20
  %106 = getelementptr inbounds i8, i8* %105, i64 %16
  store i8 0, i8* %106, align 1, !tbaa !15
  ret %"class.std::__cxx11::basic_string"* %0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE9_M_invokeERKSt9_Any_dataS7_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  br label %4

4:                                                ; preds = %2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5)
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %7 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %6, %union.anon** %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !20
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %11 = load i64, i64* %10, align 8, !tbaa !23
  %12 = icmp ugt i64 %11, 15
  %13 = bitcast %union.anon* %6 to i8*
  br i1 %12, label %14, label %25

14:                                               ; preds = %4
  %15 = icmp slt i64 %11, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
  unreachable

17:                                               ; preds = %14
  %18 = add nuw i64 %11, 1
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

21:                                               ; preds = %17
  %22 = call noalias nonnull i8* @_Znwm(i64 %18) #24
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  store i8* %22, i8** %23, align 8, !tbaa !20
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  store i64 %11, i64* %24, align 8, !tbaa !15
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i8* [ %22, %21 ], [ %13, %4 ]
  switch i64 %11, label %29 [
    i64 1, label %27
    i64 0, label %30
  ]

27:                                               ; preds = %25
  %28 = load i8, i8* %9, align 1, !tbaa !15
  store i8 %28, i8* %26, align 1, !tbaa !15
  br label %30

29:                                               ; preds = %25
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %26, i8* align 1 %9, i64 %11, i1 false) #22
  br label %30

30:                                               ; preds = %29, %27, %25
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  store i64 %11, i64* %31, align 8, !tbaa !23
  %32 = getelementptr inbounds i8, i8* %26, i64 %11
  store i8 0, i8* %32, align 1, !tbaa !15
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8, !tbaa !20
  %35 = icmp eq i8* %34, %13
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  call void @_ZdlPv(i8* %34) #22
  br label %37

37:                                               ; preds = %30, %36
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5)
  ret i1 false
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_EE10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #0 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %9 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIN8partdiff9askparams15argument_parser20argument_description16read_from_stringMUlT_E_E to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %9

7:                                                ; preds = %4
  %8 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %8, align 8, !tbaa !67
  br label %9

9:                                                ; preds = %4, %7, %5
  ret i1 false
}

declare dso_local void @_ZN3fmt2v76vprintENS0_17basic_string_viewIcEENS0_11format_argsE(i8*, i64, i64, %"class.fmt::v7::detail::value"*) local_unnamed_addr #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"*, i8 signext) local_unnamed_addr #4

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"*) local_unnamed_addr #4

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) local_unnamed_addr #4

; Function Attrs: noreturn
declare dso_local void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #7

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #4

declare dso_local nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i8 signext) local_unnamed_addr #4

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISF_E4typeESt15__invoke_resultIRSO_JS7_EEEE5valueERS9_E4typeEOSF_(%"class.std::function"* %0, %class.anon.29* nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"union.std::any::_Arg", align 8
  %6 = alloca { i64, i64 }, align 8
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"class.std::function", align 8
  %9 = alloca %class.anon.29, align 8
  br label %10

10:                                               ; preds = %2
  %11 = bitcast %"class.std::function"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #22
  %12 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %class.anon.29, %class.anon.29* %1, i64 0, i32 0, i32 0
  %14 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %13, align 8, !tbaa !16
  %15 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %17, align 8, !tbaa !16
  br label %30

18:                                               ; preds = %10
  %19 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 0
  %20 = getelementptr inbounds %class.anon.29, %class.anon.29* %1, i64 0, i32 0
  %21 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #22
  %22 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %19, %"class.std::any"** %22, align 8, !tbaa !15
  invoke void %14(i32 4, %"class.std::any"* nonnull %20, %"union.std::any::_Arg"* nonnull %7)
          to label %23 unwind label %27

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  %24 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 1, i32 1
  %25 = bitcast i1 (%"union.std::_Any_data"*)** %24 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  br label %30

27:                                               ; preds = %18
  %28 = landingpad { i8*, i32 }
          catch i8* null
  %29 = extractvalue { i8*, i32 } %28, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  call void @__clang_call_terminate(i8* %29) #25
  unreachable

30:                                               ; preds = %16, %23
  %31 = phi i64 [ undef, %16 ], [ %26, %23 ]
  %32 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 1
  %33 = getelementptr inbounds %class.anon.29, %class.anon.29* %1, i64 0, i32 1
  %34 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 1, i32 0, i32 1
  %35 = bitcast { i64, i64 }* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35)
  %36 = bitcast %"class.std::function.10"* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %35, i8* nonnull align 8 dereferenceable(16) %36, i64 16, i1 false) #22, !tbaa.struct !196
  %37 = bitcast %"class.std::function.10"* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %36, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %35, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35)
  %38 = getelementptr inbounds %class.anon.29, %class.anon.29* %1, i64 0, i32 1, i32 0, i32 1
  %39 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %38 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !67
  %41 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34 to i64*
  store i64 0, i64* %39, align 8, !tbaa !67
  store i64 %40, i64* %41, align 8, !tbaa !67
  %42 = getelementptr inbounds %class.anon.29, %class.anon.29* %1, i64 0, i32 1, i32 1
  %43 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 1, i32 1
  %44 = bitcast i1 (%"union.std::_Any_data"*)** %42 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !67
  %46 = bitcast i1 (%"union.std::_Any_data"*)** %43 to i64*
  store i64 %31, i64* %44, align 8, !tbaa !67
  store i64 %45, i64* %46, align 8, !tbaa !67
  %47 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47, align 8, !tbaa !24
  %48 = inttoptr i64 %40 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %49 = invoke noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
          to label %50 unwind label %71

50:                                               ; preds = %30
  %51 = getelementptr inbounds i8, i8* %49, i64 8
  %52 = bitcast i8* %51 to i8**
  store i8* null, i8** %52, align 8, !tbaa !15
  %53 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 0, i32 0
  %54 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %55 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = bitcast i8* %49 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %57, align 8, !tbaa !16
  br label %74

58:                                               ; preds = %50
  %59 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 0
  %60 = bitcast %"union.std::any::_Arg"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #22
  %61 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %5, i64 0, i32 0
  store i8* %49, i8** %61, align 8, !tbaa !15
  invoke void %54(i32 4, %"class.std::any"* nonnull %59, %"union.std::any::_Arg"* nonnull %5)
          to label %62 unwind label %68

62:                                               ; preds = %58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  %63 = getelementptr inbounds i8, i8* %49, i64 40
  %64 = bitcast i8* %63 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !67
  %66 = load i64, i64* %41, align 8, !tbaa !67
  %67 = load i64, i64* %46, align 8, !tbaa !67
  br label %74

68:                                               ; preds = %58
  %69 = landingpad { i8*, i32 }
          catch i8* null
  %70 = extractvalue { i8*, i32 } %69, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  call void @__clang_call_terminate(i8* %70) #25
  unreachable

71:                                               ; preds = %30
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = icmp eq i64 %40, 0
  br i1 %73, label %129, label %123

74:                                               ; preds = %56, %62
  %75 = phi i64 [ %45, %56 ], [ %67, %62 ]
  %76 = phi i64 [ %40, %56 ], [ %66, %62 ]
  %77 = phi i64 [ undef, %56 ], [ %65, %62 ]
  %78 = getelementptr inbounds i8, i8* %49, i64 16
  %79 = getelementptr inbounds i8, i8* %49, i64 32
  %80 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %80)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %80, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %78, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %78, i8* nonnull align 8 dereferenceable(16) %80, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %80)
  %81 = bitcast i8* %79 to i64*
  store i64 0, i64* %41, align 8, !tbaa !67
  store i64 %76, i64* %81, align 8, !tbaa !67
  %82 = getelementptr inbounds i8, i8* %49, i64 40
  %83 = bitcast i8* %82 to i64*
  store i64 %77, i64* %46, align 8, !tbaa !67
  store i64 %75, i64* %83, align 8, !tbaa !67
  %84 = bitcast %"class.std::function"* %8 to i8**
  store i8* %49, i8** %84, align 8, !tbaa !67
  %85 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 1
  %86 = bitcast { i64, i64 }* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %86, i8* nonnull align 8 dereferenceable(16) %11, i64 16, i1 false) #22, !tbaa.struct !196
  %87 = bitcast %"class.std::function"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %11, i8* nonnull align 8 dereferenceable(16) %87, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %87, i8* nonnull align 8 dereferenceable(16) %86, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86)
  %88 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 0, i32 1
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47 to i64*
  %90 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %88 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !67
  store i64 %91, i64* %89, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation to i64), i64* %90, align 8, !tbaa !67
  %92 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 1
  %93 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %85 to i64*
  %94 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %92 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !67
  store i64 %95, i64* %93, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ to i64), i64* %94, align 8, !tbaa !67
  %96 = icmp eq i64 %91, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %74
  %98 = inttoptr i64 %91 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %99 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 0
  %100 = invoke zeroext i1 %98(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, i32 3)
          to label %104 unwind label %101

101:                                              ; preds = %97
  %102 = landingpad { i8*, i32 }
          catch i8* null
  %103 = extractvalue { i8*, i32 } %102, 0
  call void @__clang_call_terminate(i8* %103) #25
  unreachable

104:                                              ; preds = %97
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %74, %107, %104
  %114 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %115 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 0
  invoke void %114(i32 3, %"class.std::any"* nonnull %117, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %116
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %116
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  ret %"class.std::function"* %0

123:                                              ; preds = %71
  %124 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 1, i32 0, i32 0
  %125 = invoke zeroext i1 %48(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, i32 3)
          to label %129 unwind label %126

126:                                              ; preds = %123
  %127 = landingpad { i8*, i32 }
          catch i8* null
  %128 = extractvalue { i8*, i32 } %127, 0
  call void @__clang_call_terminate(i8* %128) #25
  unreachable

129:                                              ; preds = %123, %71
  %130 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 0, i32 0
  %131 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  %132 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %class.anon.29, %class.anon.29* %9, i64 0, i32 0
  invoke void %131(i32 3, %"class.std::any"* nonnull %134, %"union.std::any::_Arg"* null)
          to label %135 unwind label %136

135:                                              ; preds = %133
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  br label %139

136:                                              ; preds = %133
  %137 = landingpad { i8*, i32 }
          catch i8* null
  %138 = extractvalue { i8*, i32 } %137, 0
  call void @__clang_call_terminate(i8* %138) #25
  unreachable

139:                                              ; preds = %129, %135
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  resume { i8*, i32 } %72
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_internalIPmE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 %0, %"class.std::any"* %1, %"union.std::any::_Arg"* %2) #11 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 1
  switch i32 %0, label %33 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
    i32 4, label %21
  ]

6:                                                ; preds = %4
  %7 = bitcast %"union.std::any::_Arg"* %2 to %"union.std::any::_Storage"**
  store %"union.std::any::_Storage"* %5, %"union.std::any::_Storage"** %7, align 8, !tbaa !15
  br label %33

8:                                                ; preds = %4
  %9 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast (i8** @_ZTIPm to %"class.std::type_info"*), %"class.std::type_info"** %9, align 8, !tbaa !15
  br label %33

10:                                               ; preds = %4
  %11 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %12 = load %"class.std::any"*, %"class.std::any"** %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %"class.std::any", %"class.std::any"* %12, i64 0, i32 1
  %14 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !67
  %16 = bitcast %"union.std::any::_Storage"* %13 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !67
  %17 = bitcast %"class.std::any"* %1 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !16
  %19 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %20 = load i64*, i64** %19, align 8, !tbaa !15
  store i64 %18, i64* %20, align 8, !tbaa !16
  br label %33

21:                                               ; preds = %4
  %22 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %23 = load %"class.std::any"*, %"class.std::any"** %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %"class.std::any", %"class.std::any"* %23, i64 0, i32 1
  %25 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  %27 = bitcast %"union.std::any::_Storage"* %24 to i64*
  store i64 %26, i64* %27, align 8, !tbaa !67
  %28 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 0
  %29 = bitcast %"class.std::any"* %1 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !16
  %31 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %32 = load i64*, i64** %31, align 8, !tbaa !15
  store i64 %30, i64* %32, align 8, !tbaa !16
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %28, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %4, %21, %10, %8, %6
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  br label %3

3:                                                ; preds = %2
  %4 = bitcast %"union.std::_Any_data"* %0 to %class.anon.29**
  %5 = load %class.anon.29*, %class.anon.29** %4, align 8, !tbaa !67
  %6 = tail call zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEENKUlRKS8_E_clESF_(%class.anon.29* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
  ret i1 %6
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #0 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %11 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %9, i64* %10, align 8, !tbaa !67
  br label %13

11:                                               ; preds = %4
  %12 = tail call zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2)
  br label %13

13:                                               ; preds = %11, %7, %5
  ret i1 false
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEENKUlRKS8_E_clESF_(%class.anon.29* %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"union.std::any::_Arg", align 8
  %4 = alloca %"union.std::any::_Arg", align 8
  %5 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  br label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.anon.29, %class.anon.29* %0, i64 0, i32 0
  %8 = getelementptr inbounds %class.anon.29, %class.anon.29* %0, i64 0, i32 0, i32 0
  %9 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %8, align 8, !tbaa !16
  %10 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %9, @_ZNSt3any17_Manager_internalIPmE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %9, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = bitcast %"union.std::any::_Arg"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #22
  invoke void %9(i32 1, %"class.std::any"* nonnull %7, %"union.std::any::_Arg"* nonnull %3)
          to label %15 unwind label %18

15:                                               ; preds = %13
  %16 = bitcast %"union.std::any::_Arg"* %3 to %"class.std::type_info"**
  %17 = load %"class.std::type_info"*, %"class.std::type_info"** %16, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #22
  br label %21

18:                                               ; preds = %13
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #22
  call void @__clang_call_terminate(i8* %20) #25
  unreachable

21:                                               ; preds = %15, %11
  %22 = phi %"class.std::type_info"* [ %17, %15 ], [ bitcast (i8** @_ZTIv to %"class.std::type_info"*), %11 ]
  %23 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %22, i64 0, i32 1
  %24 = load i8*, i8** %23, align 8, !tbaa !197
  %25 = load i8*, i8** getelementptr inbounds (i8*, i8** @_ZTIPm, i64 1), align 8, !tbaa !197
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8, i8* %24, align 1, !tbaa !15
  %29 = icmp eq i8 %28, 42
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = call i32 @strcmp(i8* nonnull %24, i8* nonnull dereferenceable(1) %25) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %21, %6
  %34 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #22
  %35 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %8, align 8, !tbaa !16
  invoke void %35(i32 0, %"class.std::any"* nonnull %7, %"union.std::any::_Arg"* nonnull %4)
          to label %39 unwind label %36

36:                                               ; preds = %33
  %37 = landingpad { i8*, i32 }
          catch i8* null
  %38 = extractvalue { i8*, i32 } %37, 0
  call void @__clang_call_terminate(i8* %38) #25
  unreachable

39:                                               ; preds = %33
  %40 = bitcast %"union.std::any::_Arg"* %4 to i64***
  %41 = load i64**, i64*** %40, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #22
  %42 = icmp eq i64** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %30, %27
  call void @_ZSt20__throw_bad_any_castv() #23
  unreachable

44:                                               ; preds = %39
  %45 = load i64*, i64** %41, align 8, !tbaa !67
  %46 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %46) #22
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(%"class.std::__cxx11::basic_istringstream"* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, i32 8)
  %47 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to %"class.std::basic_istream"*
  %48 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractImEERSiRT_(%"class.std::basic_istream"* nonnull %47, i64* nonnull align 8 dereferenceable(8) %45)
          to label %49 unwind label %102

49:                                               ; preds = %44
  %50 = bitcast %"class.std::basic_istream"* %48 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !34
  %52 = getelementptr i8, i8* %51, i64 -24
  %53 = bitcast i8* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %"class.std::basic_istream"* %48 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  %57 = getelementptr inbounds i8, i8* %56, i64 32
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* %58, align 8, !tbaa !199
  %60 = getelementptr inbounds %class.anon.29, %class.anon.29* %0, i64 0, i32 1, i32 0, i32 1
  %61 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %60, align 8, !tbaa !24
  %62 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %64 unwind label %102

64:                                               ; preds = %63
  unreachable

65:                                               ; preds = %49
  %66 = getelementptr inbounds %class.anon.29, %class.anon.29* %0, i64 0, i32 1, i32 1
  %67 = load i1 (%"union.std::_Any_data"*)*, i1 (%"union.std::_Any_data"*)** %66, align 8, !tbaa !100
  %68 = getelementptr inbounds %class.anon.29, %class.anon.29* %0, i64 0, i32 1, i32 0, i32 0
  %69 = invoke zeroext i1 %67(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %68)
          to label %70 unwind label %102

70:                                               ; preds = %65
  %71 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %72 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %71, i64* %72, align 8, !tbaa !34
  %73 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %74 = inttoptr i64 %71 to i8*
  %75 = getelementptr i8, i8* %74, i64 -24
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* %46, i64 %77
  %79 = bitcast i8* %78 to i64*
  store i64 %73, i64* %79, align 8, !tbaa !34
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %80, align 8, !tbaa !34
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8, !tbaa !20
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %84 = bitcast %union.anon* %83 to i8*
  %85 = icmp eq i8* %82, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %70
  call void @_ZdlPv(i8* %82) #22
  br label %87

87:                                               ; preds = %70, %86
  %88 = and i32 %59, 5
  %89 = icmp eq i32 %88, 0
  %90 = and i1 %89, %69
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %80, align 8, !tbaa !34
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %91) #22
  %92 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %92, i64* %72, align 8, !tbaa !34
  %93 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %94 = inttoptr i64 %92 to i8*
  %95 = getelementptr i8, i8* %94, i64 -24
  %96 = bitcast i8* %95 to i64*
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i8, i8* %46, i64 %97
  %99 = bitcast i8* %98 to i64*
  store i64 %93, i64* %99, align 8, !tbaa !34
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %100, align 8, !tbaa !205
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %101) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  ret i1 %90

102:                                              ; preds = %65, %63, %44
  %103 = landingpad { i8*, i32 }
          cleanup
  %104 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %105 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %104, i64* %105, align 8, !tbaa !34
  %106 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %107 = inttoptr i64 %104 to i8*
  %108 = getelementptr i8, i8* %107, i64 -24
  %109 = bitcast i8* %108 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i8, i8* %46, i64 %110
  %112 = bitcast i8* %111 to i64*
  store i64 %106, i64* %112, align 8, !tbaa !34
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %113, align 8, !tbaa !34
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8, !tbaa !20
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %117 = bitcast %union.anon* %116 to i8*
  %118 = icmp eq i8* %115, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %102
  call void @_ZdlPv(i8* %115) #22
  br label %120

120:                                              ; preds = %102, %119
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %113, align 8, !tbaa !34
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %121) #22
  %122 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %122, i64* %105, align 8, !tbaa !34
  %123 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %124 = inttoptr i64 %122 to i8*
  %125 = getelementptr i8, i8* %124, i64 -24
  %126 = bitcast i8* %125 to i64*
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i8, i8* %46, i64 %127
  %129 = bitcast i8* %128 to i64*
  store i64 %123, i64* %129, align 8, !tbaa !34
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %130, align 8, !tbaa !205
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %131) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  resume { i8*, i32 } %103
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(%"class.std::__cxx11::basic_istringstream"* %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, i32 %2) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  br label %4

4:                                                ; preds = %3
  %5 = bitcast %"class.std::__cxx11::basic_istringstream"* %0 to i8*
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 2
  %7 = getelementptr %"class.std::basic_ios", %"class.std::basic_ios"* %6, i64 0, i32 0
  tail call void @_ZNSt8ios_baseC2Ev(%"class.std::ios_base"* nonnull %7) #22
  %8 = getelementptr %"class.std::basic_ios", %"class.std::basic_ios"* %6, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %8, align 8, !tbaa !34
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 2, i32 1
  store %"class.std::basic_ostream"* null, %"class.std::basic_ostream"** %9, align 8, !tbaa !207
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 2, i32 2
  store i8 0, i8* %10, align 8, !tbaa !208
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %11, align 1, !tbaa !209
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 2, i32 4
  %13 = bitcast %"class.std::basic_streambuf"** %12 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false) #22
  %14 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  %15 = bitcast %"class.std::__cxx11::basic_istringstream"* %0 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !34
  %16 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %17 = bitcast %"class.std::__cxx11::basic_istringstream"* %0 to i8**
  %18 = inttoptr i64 %14 to i8*
  %19 = getelementptr i8, i8* %18, i64 -24
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %5, i64 %21
  %23 = bitcast i8* %22 to i64*
  store i64 %16, i64* %23, align 8, !tbaa !34
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 0, i32 1
  store i64 0, i64* %24, align 8, !tbaa !205
  %25 = load i8*, i8** %17, align 8, !tbaa !34
  %26 = getelementptr i8, i8* %25, i64 -24
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %5, i64 %28
  %30 = bitcast i8* %29 to %"class.std::basic_ios"*
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %30, %"class.std::basic_streambuf"* null)
          to label %31 unwind label %44

31:                                               ; preds = %4
  %32 = getelementptr %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 3) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !34
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %8, align 8, !tbaa !34
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 1
  %34 = or i32 %2, 8
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringbuf"* nonnull %33, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, i32 %34)
          to label %35 unwind label %48

35:                                               ; preds = %31
  %36 = load i8*, i8** %17, align 8, !tbaa !34
  %37 = getelementptr i8, i8* %36, i64 -24
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %5, i64 %39
  %41 = bitcast i8* %40 to %"class.std::basic_ios"*
  %42 = getelementptr %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %33, i64 0, i32 0
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* %41, %"class.std::basic_streambuf"* nonnull %42)
          to label %43 unwind label %52

43:                                               ; preds = %35
  ret void

44:                                               ; preds = %4
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = extractvalue { i8*, i32 } %45, 1
  br label %71

48:                                               ; preds = %31
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = extractvalue { i8*, i32 } %49, 0
  %51 = extractvalue { i8*, i32 } %49, 1
  br label %65

52:                                               ; preds = %35
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = extractvalue { i8*, i32 } %53, 0
  %55 = extractvalue { i8*, i32 } %53, 1
  %56 = getelementptr %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %33, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %56, align 8, !tbaa !34
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 1, i32 2, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8, !tbaa !20
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 1, i32 2, i32 2
  %60 = bitcast %union.anon* %59 to i8*
  %61 = icmp eq i8* %58, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  tail call void @_ZdlPv(i8* %58) #22
  br label %63

63:                                               ; preds = %52, %62
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %56, align 8, !tbaa !34
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %0, i64 0, i32 1, i32 0, i32 7
  tail call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %64) #22
  br label %65

65:                                               ; preds = %63, %48
  %66 = phi i8* [ %54, %63 ], [ %50, %48 ]
  %67 = phi i32 [ %55, %63 ], [ %51, %48 ]
  store i64 %14, i64* %15, align 8, !tbaa !34
  %68 = load i64, i64* %20, align 8
  %69 = getelementptr inbounds i8, i8* %5, i64 %68
  %70 = bitcast i8* %69 to i64*
  store i64 %16, i64* %70, align 8, !tbaa !34
  store i64 0, i64* %24, align 8, !tbaa !205
  br label %71

71:                                               ; preds = %65, %44
  %72 = phi i8* [ %66, %65 ], [ %46, %44 ]
  %73 = phi i32 [ %67, %65 ], [ %47, %44 ]
  tail call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %7) #22
  %74 = insertvalue { i8*, i32 } undef, i8* %72, 0
  %75 = insertvalue { i8*, i32 } %74, i32 %73, 1
  resume { i8*, i32 } %75
}

; Function Attrs: inlinehint noreturn uwtable
define linkonce_odr dso_local void @_ZSt20__throw_bad_any_castv() local_unnamed_addr #17 comdat {
  br label %1

1:                                                ; preds = %0
  %2 = tail call i8* @__cxa_allocate_exception(i64 8) #22
  %3 = bitcast i8* %2 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt12bad_any_cast, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !34
  tail call void @__cxa_throw(i8* %2, i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt12bad_any_cast to i8*), i8* bitcast (void (%"class.std::bad_cast"*)* @_ZNSt8bad_castD2Ev to i8*)) #23
  unreachable
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #13

declare dso_local i8* @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt8bad_castD2Ev(%"class.std::bad_cast"*) unnamed_addr #5

declare dso_local void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12bad_any_castD0Ev(%"class.std::bad_any_cast"* %0) unnamed_addr #18 comdat align 2 {
  br label %2

2:                                                ; preds = %1
  %3 = getelementptr %"class.std::bad_any_cast", %"class.std::bad_any_cast"* %0, i64 0, i32 0
  tail call void @_ZNSt8bad_castD2Ev(%"class.std::bad_cast"* %3) #22
  %4 = bitcast %"class.std::bad_any_cast"* %0 to i8*
  tail call void @_ZdlPv(i8* %4) #28
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i8* @_ZNKSt12bad_any_cast4whatEv(%"class.std::bad_any_cast"* %0) unnamed_addr #11 comdat align 2 {
  br label %2

2:                                                ; preds = %1
  ret i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0)
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(%"class.std::__cxx11::basic_stringbuf"* %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, i32 %2) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %0, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %0, i64 0, i32 0, i32 1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %0, i64 0, i32 0, i32 7
  %8 = bitcast i8** %6 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false) #22
  tail call void @_ZNSt6localeC1Ev(%"class.std::locale"* nonnull %7) #22
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %5, align 8, !tbaa !34
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %0, i64 0, i32 1
  store i32 0, i32* %9, align 8, !tbaa !210
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8, !tbaa !20
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %14 = load i64, i64* %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %0, i64 0, i32 2, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %10 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !18
  %17 = icmp ugt i64 %14, 15
  %18 = bitcast %union.anon* %15 to i8*
  br i1 %17, label %19, label %33

19:                                               ; preds = %4
  %20 = icmp slt i64 %14, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
          to label %22 unwind label %50

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %19
  %24 = add nuw i64 %14, 1
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %27 unwind label %50

27:                                               ; preds = %26
  unreachable

28:                                               ; preds = %23
  %29 = invoke noalias nonnull i8* @_Znwm(i64 %24) #24
          to label %30 unwind label %50

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  store i8* %29, i8** %31, align 8, !tbaa !20
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %0, i64 0, i32 2, i32 2, i32 0
  store i64 %14, i64* %32, align 8, !tbaa !15
  br label %33

33:                                               ; preds = %30, %4
  %34 = phi i8* [ %29, %30 ], [ %18, %4 ]
  switch i64 %14, label %37 [
    i64 1, label %35
    i64 0, label %38
  ]

35:                                               ; preds = %33
  %36 = load i8, i8* %12, align 1, !tbaa !15
  store i8 %36, i8* %34, align 1, !tbaa !15
  br label %38

37:                                               ; preds = %33
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %34, i8* align 1 %12, i64 %14, i1 false) #22
  br label %38

38:                                               ; preds = %37, %35, %33
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %0, i64 0, i32 2, i32 1
  store i64 %14, i64* %39, align 8, !tbaa !23
  %40 = getelementptr inbounds i8, i8* %34, i64 %14
  store i8 0, i8* %40, align 1, !tbaa !15
  store i32 %2, i32* %9, align 8, !tbaa !210
  %41 = and i32 %2, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %39, align 8, !tbaa !23
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi i64 [ %44, %43 ], [ 0, %38 ]
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %0, i64 0, i32 2, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(%"class.std::__cxx11::basic_stringbuf"* nonnull %0, i8* %48, i64 0, i64 %46)
          to label %49 unwind label %54

49:                                               ; preds = %45
  ret void

50:                                               ; preds = %28, %26, %21
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = extractvalue { i8*, i32 } %51, 0
  %53 = extractvalue { i8*, i32 } %51, 1
  br label %62

54:                                               ; preds = %45
  %55 = landingpad { i8*, i32 }
          cleanup
  %56 = extractvalue { i8*, i32 } %55, 0
  %57 = extractvalue { i8*, i32 } %55, 1
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8, !tbaa !20
  %60 = icmp eq i8* %59, %18
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  tail call void @_ZdlPv(i8* %59) #22
  br label %62

62:                                               ; preds = %61, %54, %50
  %63 = phi i8* [ %52, %50 ], [ %56, %54 ], [ %56, %61 ]
  %64 = phi i32 [ %53, %50 ], [ %57, %54 ], [ %57, %61 ]
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %5, align 8, !tbaa !34
  tail call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %7) #22
  %65 = insertvalue { i8*, i32 } undef, i8* %63, 0
  %66 = insertvalue { i8*, i32 } %65, i32 %64, 1
  resume { i8*, i32 } %66
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"*, %"class.std::basic_streambuf"*) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseC2Ev(%"class.std::ios_base"*) unnamed_addr #5

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeC1Ev(%"class.std::locale"*) unnamed_addr #5

declare dso_local void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(%"class.std::__cxx11::basic_stringbuf"*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"*) unnamed_addr #5

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"*) unnamed_addr #5

declare dso_local nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractImEERSiRT_(%"class.std::basic_istream"*, i64* nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"union.std::any::_Arg", align 8
  br label %5

5:                                                ; preds = %3
  switch i32 %2, label %97 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %12
    i32 3, label %72
  ]

6:                                                ; preds = %5
  %7 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionImEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ to %"class.std::type_info"*), %"class.std::type_info"** %7, align 8, !tbaa !67
  br label %97

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %10, i64* %11, align 8, !tbaa !67
  br label %97

12:                                               ; preds = %5
  %13 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %14 = bitcast %"union.std::_Any_data"* %1 to %class.anon.29**
  %15 = load %class.anon.29*, %class.anon.29** %14, align 8, !tbaa !67
  %16 = bitcast i8* %13 to %"class.std::any"*
  %17 = getelementptr inbounds i8, i8* %13, i64 8
  %18 = bitcast i8* %17 to i8**
  store i8* null, i8** %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %class.anon.29, %class.anon.29* %15, i64 0, i32 0, i32 0
  %20 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %19, align 8, !tbaa !16
  %21 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %23, align 8, !tbaa !16
  br label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds %class.anon.29, %class.anon.29* %15, i64 0, i32 0
  %26 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #22
  %27 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %4, i64 0, i32 0
  store i8* %13, i8** %27, align 8, !tbaa !15
  invoke void %20(i32 2, %"class.std::any"* nonnull %25, %"union.std::any::_Arg"* nonnull %4)
          to label %28 unwind label %66

28:                                               ; preds = %24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #22
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds i8, i8* %13, i64 32
  %31 = bitcast i8* %30 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)**
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %class.anon.29, %class.anon.29* %15, i64 0, i32 1, i32 0, i32 1
  %33 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32, align 8, !tbaa !24
  %34 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %13, i64 16
  %37 = bitcast i8* %36 to %"union.std::_Any_data"*
  %38 = getelementptr inbounds %class.anon.29, %class.anon.29* %15, i64 0, i32 1, i32 0, i32 0
  %39 = invoke zeroext i1 %33(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %38, i32 2)
          to label %40 unwind label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %class.anon.29, %class.anon.29* %15, i64 0, i32 1, i32 1
  %42 = bitcast i1 (%"union.std::_Any_data"*)** %41 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !100
  %44 = getelementptr inbounds i8, i8* %13, i64 40
  %45 = bitcast i8* %44 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !100
  %46 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !24
  %48 = bitcast i8* %30 to i64*
  store i64 %47, i64* %48, align 8, !tbaa !24
  br label %70

49:                                               ; preds = %35
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %52 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = invoke zeroext i1 %51(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, i32 3)
          to label %58 unwind label %55

55:                                               ; preds = %53
  %56 = landingpad { i8*, i32 }
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #25
  unreachable

58:                                               ; preds = %53, %49
  %59 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  %60 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %59, align 8, !tbaa !16
  %61 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  invoke void %60(i32 3, %"class.std::any"* nonnull %16, %"union.std::any::_Arg"* null)
          to label %68 unwind label %63

63:                                               ; preds = %62
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #25
  unreachable

66:                                               ; preds = %24
  %67 = landingpad { i8*, i32 }
          cleanup
  br label %68

68:                                               ; preds = %62, %58, %66
  %69 = phi { i8*, i32 } [ %67, %66 ], [ %50, %58 ], [ %50, %62 ]
  call void @_ZdlPv(i8* nonnull %13) #28
  resume { i8*, i32 } %69

70:                                               ; preds = %40, %29
  %71 = bitcast %"union.std::_Any_data"* %0 to i8**
  store i8* %13, i8** %71, align 8, !tbaa !67
  br label %97

72:                                               ; preds = %5
  %73 = bitcast %"union.std::_Any_data"* %0 to %class.anon.29**
  %74 = load %class.anon.29*, %class.anon.29** %73, align 8, !tbaa !67
  %75 = icmp eq %class.anon.29* %74, null
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %class.anon.29, %class.anon.29* %74, i64 0, i32 1, i32 0, i32 1
  %78 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %77, align 8, !tbaa !24
  %79 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %class.anon.29, %class.anon.29* %74, i64 0, i32 1, i32 0, i32 0
  %82 = invoke zeroext i1 %78(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 3)
          to label %86 unwind label %83

83:                                               ; preds = %80
  %84 = landingpad { i8*, i32 }
          catch i8* null
  %85 = extractvalue { i8*, i32 } %84, 0
  tail call void @__clang_call_terminate(i8* %85) #25
  unreachable

86:                                               ; preds = %80, %76
  %87 = getelementptr inbounds %class.anon.29, %class.anon.29* %74, i64 0, i32 0, i32 0
  %88 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %87, align 8, !tbaa !16
  %89 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %class.anon.29, %class.anon.29* %74, i64 0, i32 0
  invoke void %88(i32 3, %"class.std::any"* nonnull %91, %"union.std::any::_Arg"* null)
          to label %95 unwind label %92

92:                                               ; preds = %90
  %93 = landingpad { i8*, i32 }
          catch i8* null
  %94 = extractvalue { i8*, i32 } %93, 0
  tail call void @__clang_call_terminate(i8* %94) #25
  unreachable

95:                                               ; preds = %90, %86
  %96 = bitcast %class.anon.29* %74 to i8*
  tail call void @_ZdlPv(i8* %96) #28
  br label %97

97:                                               ; preds = %95, %72, %5, %70, %8, %6
  ret i1 false
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture nonnull readonly align 8 dereferenceable(16) %0) #19 align 2 {
  br label %2

2:                                                ; preds = %1
  %3 = bitcast %"union.std::_Any_data"* %0 to i64**
  %4 = load i64*, i64** %3, align 8, !tbaa !213
  %5 = load i64, i64* %4, align 8, !tbaa !68
  %6 = add i64 %5, -1
  %7 = icmp ult i64 %6, 1024
  ret i1 %7
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(%"union.std::_Any_data"* nocapture nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #20 align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %13 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1" to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %8, align 8, !tbaa !67
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  %12 = load i64, i64* %10, align 8, !tbaa !67
  store i64 %12, i64* %11, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %4, %9, %7, %5
  ret i1 false
}

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionINSC_19calculation_options18calculation_methodEEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISH_E4typeESt15__invoke_resultIRSQ_JS7_EEEE5valueERS9_E4typeEOSH_(%"class.std::function"* %0, %class.anon.34* nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"union.std::any::_Arg", align 8
  %6 = alloca { i64, i64 }, align 8
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"class.std::function", align 8
  %9 = alloca %class.anon.34, align 8
  br label %10

10:                                               ; preds = %2
  %11 = bitcast %"class.std::function"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #22
  %12 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %class.anon.34, %class.anon.34* %1, i64 0, i32 0, i32 0
  %14 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %13, align 8, !tbaa !16
  %15 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %17, align 8, !tbaa !16
  br label %30

18:                                               ; preds = %10
  %19 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 0
  %20 = getelementptr inbounds %class.anon.34, %class.anon.34* %1, i64 0, i32 0
  %21 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #22
  %22 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %19, %"class.std::any"** %22, align 8, !tbaa !15
  invoke void %14(i32 4, %"class.std::any"* nonnull %20, %"union.std::any::_Arg"* nonnull %7)
          to label %23 unwind label %27

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  %24 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 1, i32 1
  %25 = bitcast i1 (%"union.std::_Any_data"*)** %24 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  br label %30

27:                                               ; preds = %18
  %28 = landingpad { i8*, i32 }
          catch i8* null
  %29 = extractvalue { i8*, i32 } %28, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  call void @__clang_call_terminate(i8* %29) #25
  unreachable

30:                                               ; preds = %16, %23
  %31 = phi i64 [ undef, %16 ], [ %26, %23 ]
  %32 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 1
  %33 = getelementptr inbounds %class.anon.34, %class.anon.34* %1, i64 0, i32 1
  %34 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 1, i32 0, i32 1
  %35 = bitcast { i64, i64 }* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35)
  %36 = bitcast %"class.std::function.10"* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %35, i8* nonnull align 8 dereferenceable(16) %36, i64 16, i1 false) #22, !tbaa.struct !196
  %37 = bitcast %"class.std::function.10"* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %36, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %35, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35)
  %38 = getelementptr inbounds %class.anon.34, %class.anon.34* %1, i64 0, i32 1, i32 0, i32 1
  %39 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %38 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !67
  %41 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34 to i64*
  store i64 0, i64* %39, align 8, !tbaa !67
  store i64 %40, i64* %41, align 8, !tbaa !67
  %42 = getelementptr inbounds %class.anon.34, %class.anon.34* %1, i64 0, i32 1, i32 1
  %43 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 1, i32 1
  %44 = bitcast i1 (%"union.std::_Any_data"*)** %42 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !67
  %46 = bitcast i1 (%"union.std::_Any_data"*)** %43 to i64*
  store i64 %31, i64* %44, align 8, !tbaa !67
  store i64 %45, i64* %46, align 8, !tbaa !67
  %47 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47, align 8, !tbaa !24
  %48 = inttoptr i64 %40 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %49 = invoke noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
          to label %50 unwind label %71

50:                                               ; preds = %30
  %51 = getelementptr inbounds i8, i8* %49, i64 8
  %52 = bitcast i8* %51 to i8**
  store i8* null, i8** %52, align 8, !tbaa !15
  %53 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 0, i32 0
  %54 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %55 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = bitcast i8* %49 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %57, align 8, !tbaa !16
  br label %74

58:                                               ; preds = %50
  %59 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 0
  %60 = bitcast %"union.std::any::_Arg"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #22
  %61 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %5, i64 0, i32 0
  store i8* %49, i8** %61, align 8, !tbaa !15
  invoke void %54(i32 4, %"class.std::any"* nonnull %59, %"union.std::any::_Arg"* nonnull %5)
          to label %62 unwind label %68

62:                                               ; preds = %58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  %63 = getelementptr inbounds i8, i8* %49, i64 40
  %64 = bitcast i8* %63 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !67
  %66 = load i64, i64* %41, align 8, !tbaa !67
  %67 = load i64, i64* %46, align 8, !tbaa !67
  br label %74

68:                                               ; preds = %58
  %69 = landingpad { i8*, i32 }
          catch i8* null
  %70 = extractvalue { i8*, i32 } %69, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  call void @__clang_call_terminate(i8* %70) #25
  unreachable

71:                                               ; preds = %30
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = icmp eq i64 %40, 0
  br i1 %73, label %129, label %123

74:                                               ; preds = %56, %62
  %75 = phi i64 [ %45, %56 ], [ %67, %62 ]
  %76 = phi i64 [ %40, %56 ], [ %66, %62 ]
  %77 = phi i64 [ undef, %56 ], [ %65, %62 ]
  %78 = getelementptr inbounds i8, i8* %49, i64 16
  %79 = getelementptr inbounds i8, i8* %49, i64 32
  %80 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %80)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %80, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %78, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %78, i8* nonnull align 8 dereferenceable(16) %80, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %80)
  %81 = bitcast i8* %79 to i64*
  store i64 0, i64* %41, align 8, !tbaa !67
  store i64 %76, i64* %81, align 8, !tbaa !67
  %82 = getelementptr inbounds i8, i8* %49, i64 40
  %83 = bitcast i8* %82 to i64*
  store i64 %77, i64* %46, align 8, !tbaa !67
  store i64 %75, i64* %83, align 8, !tbaa !67
  %84 = bitcast %"class.std::function"* %8 to i8**
  store i8* %49, i8** %84, align 8, !tbaa !67
  %85 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 1
  %86 = bitcast { i64, i64 }* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %86, i8* nonnull align 8 dereferenceable(16) %11, i64 16, i1 false) #22, !tbaa.struct !196
  %87 = bitcast %"class.std::function"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %11, i8* nonnull align 8 dereferenceable(16) %87, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %87, i8* nonnull align 8 dereferenceable(16) %86, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86)
  %88 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 0, i32 1
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47 to i64*
  %90 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %88 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !67
  store i64 %91, i64* %89, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options18calculation_methodEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation to i64), i64* %90, align 8, !tbaa !67
  %92 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 1
  %93 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %85 to i64*
  %94 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %92 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !67
  store i64 %95, i64* %93, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options18calculation_methodEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ to i64), i64* %94, align 8, !tbaa !67
  %96 = icmp eq i64 %91, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %74
  %98 = inttoptr i64 %91 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %99 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 0
  %100 = invoke zeroext i1 %98(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, i32 3)
          to label %104 unwind label %101

101:                                              ; preds = %97
  %102 = landingpad { i8*, i32 }
          catch i8* null
  %103 = extractvalue { i8*, i32 } %102, 0
  call void @__clang_call_terminate(i8* %103) #25
  unreachable

104:                                              ; preds = %97
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %74, %107, %104
  %114 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %115 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 0
  invoke void %114(i32 3, %"class.std::any"* nonnull %117, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %116
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %116
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  ret %"class.std::function"* %0

123:                                              ; preds = %71
  %124 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 1, i32 0, i32 0
  %125 = invoke zeroext i1 %48(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, i32 3)
          to label %129 unwind label %126

126:                                              ; preds = %123
  %127 = landingpad { i8*, i32 }
          catch i8* null
  %128 = extractvalue { i8*, i32 } %127, 0
  call void @__clang_call_terminate(i8* %128) #25
  unreachable

129:                                              ; preds = %123, %71
  %130 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 0, i32 0
  %131 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  %132 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %class.anon.34, %class.anon.34* %9, i64 0, i32 0
  invoke void %131(i32 3, %"class.std::any"* nonnull %134, %"union.std::any::_Arg"* null)
          to label %135 unwind label %136

135:                                              ; preds = %133
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  br label %139

136:                                              ; preds = %133
  %137 = landingpad { i8*, i32 }
          catch i8* null
  %138 = extractvalue { i8*, i32 } %137, 0
  call void @__clang_call_terminate(i8* %138) #25
  unreachable

139:                                              ; preds = %129, %135
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  resume { i8*, i32 } %72
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options18calculation_methodEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 %0, %"class.std::any"* %1, %"union.std::any::_Arg"* %2) #11 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 1
  switch i32 %0, label %33 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
    i32 4, label %21
  ]

6:                                                ; preds = %4
  %7 = bitcast %"union.std::any::_Arg"* %2 to %"union.std::any::_Storage"**
  store %"union.std::any::_Storage"* %5, %"union.std::any::_Storage"** %7, align 8, !tbaa !15
  br label %33

8:                                                ; preds = %4
  %9 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPN8partdiff9askparams19calculation_options18calculation_methodE to %"class.std::type_info"*), %"class.std::type_info"** %9, align 8, !tbaa !15
  br label %33

10:                                               ; preds = %4
  %11 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %12 = load %"class.std::any"*, %"class.std::any"** %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %"class.std::any", %"class.std::any"* %12, i64 0, i32 1
  %14 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !67
  %16 = bitcast %"union.std::any::_Storage"* %13 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !67
  %17 = bitcast %"class.std::any"* %1 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !16
  %19 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %20 = load i64*, i64** %19, align 8, !tbaa !15
  store i64 %18, i64* %20, align 8, !tbaa !16
  br label %33

21:                                               ; preds = %4
  %22 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %23 = load %"class.std::any"*, %"class.std::any"** %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %"class.std::any", %"class.std::any"* %23, i64 0, i32 1
  %25 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  %27 = bitcast %"union.std::any::_Storage"* %24 to i64*
  store i64 %26, i64* %27, align 8, !tbaa !67
  %28 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 0
  %29 = bitcast %"class.std::any"* %1 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !16
  %31 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %32 = load i64*, i64** %31, align 8, !tbaa !15
  store i64 %30, i64* %32, align 8, !tbaa !16
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %28, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %4, %21, %10, %8, %6
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options18calculation_methodEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  br label %3

3:                                                ; preds = %2
  %4 = bitcast %"union.std::_Any_data"* %0 to %class.anon.34**
  %5 = load %class.anon.34*, %class.anon.34** %4, align 8, !tbaa !67
  %6 = tail call zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEENKUlRKSA_E_clESH_(%class.anon.34* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
  ret i1 %6
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options18calculation_methodEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #0 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %11 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %9, i64* %10, align 8, !tbaa !67
  br label %13

11:                                               ; preds = %4
  %12 = tail call zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS2_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SC_SC_St8functionIFbvEEEUlRKSC_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2)
  br label %13

13:                                               ; preds = %11, %7, %5
  ret i1 false
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEENKUlRKSA_E_clESH_(%class.anon.34* %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"union.std::any::_Arg", align 8
  %4 = alloca %"union.std::any::_Arg", align 8
  %5 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %6 = alloca i64, align 8
  br label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.anon.34, %class.anon.34* %0, i64 0, i32 0
  %9 = getelementptr inbounds %class.anon.34, %class.anon.34* %0, i64 0, i32 0, i32 0
  %10 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %9, align 8, !tbaa !16
  %11 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %10, @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options18calculation_methodEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %10, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = bitcast %"union.std::any::_Arg"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #22
  invoke void %10(i32 1, %"class.std::any"* nonnull %8, %"union.std::any::_Arg"* nonnull %3)
          to label %16 unwind label %19

16:                                               ; preds = %14
  %17 = bitcast %"union.std::any::_Arg"* %3 to %"class.std::type_info"**
  %18 = load %"class.std::type_info"*, %"class.std::type_info"** %17, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #22
  br label %22

19:                                               ; preds = %14
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #22
  call void @__clang_call_terminate(i8* %21) #25
  unreachable

22:                                               ; preds = %16, %12
  %23 = phi %"class.std::type_info"* [ %18, %16 ], [ bitcast (i8** @_ZTIv to %"class.std::type_info"*), %12 ]
  %24 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %23, i64 0, i32 1
  %25 = load i8*, i8** %24, align 8, !tbaa !197
  %26 = icmp eq i8* %25, getelementptr inbounds ([64 x i8], [64 x i8]* @_ZTSPN8partdiff9askparams19calculation_options18calculation_methodE, i64 0, i64 0)
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i8, i8* %25, align 1, !tbaa !15
  %29 = icmp eq i8 %28, 42
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = call i32 @strcmp(i8* nonnull %25, i8* nonnull dereferenceable(64) getelementptr inbounds ([64 x i8], [64 x i8]* @_ZTSPN8partdiff9askparams19calculation_options18calculation_methodE, i64 0, i64 0)) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %22, %7
  %34 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #22
  %35 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %9, align 8, !tbaa !16
  invoke void %35(i32 0, %"class.std::any"* nonnull %8, %"union.std::any::_Arg"* nonnull %4)
          to label %39 unwind label %36

36:                                               ; preds = %33
  %37 = landingpad { i8*, i32 }
          catch i8* null
  %38 = extractvalue { i8*, i32 } %37, 0
  call void @__clang_call_terminate(i8* %38) #25
  unreachable

39:                                               ; preds = %33
  %40 = bitcast %"union.std::any::_Arg"* %4 to i64***
  %41 = load i64**, i64*** %40, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #22
  %42 = icmp eq i64** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %30, %27
  call void @_ZSt20__throw_bad_any_castv() #23
  unreachable

44:                                               ; preds = %39
  %45 = load i64*, i64** %41, align 8, !tbaa !67
  %46 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %46) #22
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(%"class.std::__cxx11::basic_istringstream"* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, i32 8)
  %47 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #22
  %48 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to %"class.std::basic_istream"*
  %49 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractImEERSiRT_(%"class.std::basic_istream"* nonnull %48, i64* nonnull align 8 dereferenceable(8) %6)
          to label %50 unwind label %104

50:                                               ; preds = %44
  %51 = bitcast %"class.std::basic_istream"* %49 to i8**
  %52 = load i8*, i8** %51, align 8, !tbaa !34
  %53 = getelementptr i8, i8* %52, i64 -24
  %54 = bitcast i8* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = bitcast %"class.std::basic_istream"* %49 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  %58 = getelementptr inbounds i8, i8* %57, i64 32
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 8, !tbaa !199
  %61 = load i64, i64* %6, align 8, !tbaa !68
  store i64 %61, i64* %45, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #22
  %62 = getelementptr inbounds %class.anon.34, %class.anon.34* %0, i64 0, i32 1, i32 0, i32 1
  %63 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %62, align 8, !tbaa !24
  %64 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %66 unwind label %108

66:                                               ; preds = %65
  unreachable

67:                                               ; preds = %50
  %68 = getelementptr inbounds %class.anon.34, %class.anon.34* %0, i64 0, i32 1, i32 1
  %69 = load i1 (%"union.std::_Any_data"*)*, i1 (%"union.std::_Any_data"*)** %68, align 8, !tbaa !100
  %70 = getelementptr inbounds %class.anon.34, %class.anon.34* %0, i64 0, i32 1, i32 0, i32 0
  %71 = invoke zeroext i1 %69(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %70)
          to label %72 unwind label %108

72:                                               ; preds = %67
  %73 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %74 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %73, i64* %74, align 8, !tbaa !34
  %75 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %76 = inttoptr i64 %73 to i8*
  %77 = getelementptr i8, i8* %76, i64 -24
  %78 = bitcast i8* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i8, i8* %46, i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 %75, i64* %81, align 8, !tbaa !34
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %82, align 8, !tbaa !34
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8, !tbaa !20
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %86 = bitcast %union.anon* %85 to i8*
  %87 = icmp eq i8* %84, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %72
  call void @_ZdlPv(i8* %84) #22
  br label %89

89:                                               ; preds = %72, %88
  %90 = and i32 %60, 5
  %91 = icmp eq i32 %90, 0
  %92 = and i1 %91, %71
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %82, align 8, !tbaa !34
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %93) #22
  %94 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %94, i64* %74, align 8, !tbaa !34
  %95 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %96 = inttoptr i64 %94 to i8*
  %97 = getelementptr i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8, i8* %46, i64 %99
  %101 = bitcast i8* %100 to i64*
  store i64 %95, i64* %101, align 8, !tbaa !34
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %102, align 8, !tbaa !205
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %103) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  ret i1 %92

104:                                              ; preds = %44
  %105 = landingpad { i8*, i32 }
          cleanup
  %106 = extractvalue { i8*, i32 } %105, 0
  %107 = extractvalue { i8*, i32 } %105, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #22
  br label %112

108:                                              ; preds = %67, %65
  %109 = landingpad { i8*, i32 }
          cleanup
  %110 = extractvalue { i8*, i32 } %109, 0
  %111 = extractvalue { i8*, i32 } %109, 1
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i8* [ %110, %108 ], [ %106, %104 ]
  %114 = phi i32 [ %111, %108 ], [ %107, %104 ]
  %115 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %116 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %115, i64* %116, align 8, !tbaa !34
  %117 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %118 = inttoptr i64 %115 to i8*
  %119 = getelementptr i8, i8* %118, i64 -24
  %120 = bitcast i8* %119 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i8, i8* %46, i64 %121
  %123 = bitcast i8* %122 to i64*
  store i64 %117, i64* %123, align 8, !tbaa !34
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %124, align 8, !tbaa !34
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8, !tbaa !20
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %128 = bitcast %union.anon* %127 to i8*
  %129 = icmp eq i8* %126, %128
  br i1 %129, label %131, label %130

130:                                              ; preds = %112
  call void @_ZdlPv(i8* %126) #22
  br label %131

131:                                              ; preds = %112, %130
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %124, align 8, !tbaa !34
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %132) #22
  %133 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %133, i64* %116, align 8, !tbaa !34
  %134 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %135 = inttoptr i64 %133 to i8*
  %136 = getelementptr i8, i8* %135, i64 -24
  %137 = bitcast i8* %136 to i64*
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i8, i8* %46, i64 %138
  %140 = bitcast i8* %139 to i64*
  store i64 %134, i64* %140, align 8, !tbaa !34
  %141 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %141, align 8, !tbaa !205
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %142) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  %143 = insertvalue { i8*, i32 } undef, i8* %113, 0
  %144 = insertvalue { i8*, i32 } %143, i32 %114, 1
  resume { i8*, i32 } %144
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS2_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SC_SC_St8functionIFbvEEEUlRKSC_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"union.std::any::_Arg", align 8
  br label %5

5:                                                ; preds = %3
  switch i32 %2, label %97 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %12
    i32 3, label %72
  ]

6:                                                ; preds = %5
  %7 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options18calculation_methodEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ to %"class.std::type_info"*), %"class.std::type_info"** %7, align 8, !tbaa !67
  br label %97

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %10, i64* %11, align 8, !tbaa !67
  br label %97

12:                                               ; preds = %5
  %13 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %14 = bitcast %"union.std::_Any_data"* %1 to %class.anon.34**
  %15 = load %class.anon.34*, %class.anon.34** %14, align 8, !tbaa !67
  %16 = bitcast i8* %13 to %"class.std::any"*
  %17 = getelementptr inbounds i8, i8* %13, i64 8
  %18 = bitcast i8* %17 to i8**
  store i8* null, i8** %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %class.anon.34, %class.anon.34* %15, i64 0, i32 0, i32 0
  %20 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %19, align 8, !tbaa !16
  %21 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %23, align 8, !tbaa !16
  br label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds %class.anon.34, %class.anon.34* %15, i64 0, i32 0
  %26 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #22
  %27 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %4, i64 0, i32 0
  store i8* %13, i8** %27, align 8, !tbaa !15
  invoke void %20(i32 2, %"class.std::any"* nonnull %25, %"union.std::any::_Arg"* nonnull %4)
          to label %28 unwind label %66

28:                                               ; preds = %24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #22
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds i8, i8* %13, i64 32
  %31 = bitcast i8* %30 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)**
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %class.anon.34, %class.anon.34* %15, i64 0, i32 1, i32 0, i32 1
  %33 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32, align 8, !tbaa !24
  %34 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %13, i64 16
  %37 = bitcast i8* %36 to %"union.std::_Any_data"*
  %38 = getelementptr inbounds %class.anon.34, %class.anon.34* %15, i64 0, i32 1, i32 0, i32 0
  %39 = invoke zeroext i1 %33(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %38, i32 2)
          to label %40 unwind label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %class.anon.34, %class.anon.34* %15, i64 0, i32 1, i32 1
  %42 = bitcast i1 (%"union.std::_Any_data"*)** %41 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !100
  %44 = getelementptr inbounds i8, i8* %13, i64 40
  %45 = bitcast i8* %44 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !100
  %46 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !24
  %48 = bitcast i8* %30 to i64*
  store i64 %47, i64* %48, align 8, !tbaa !24
  br label %70

49:                                               ; preds = %35
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %52 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = invoke zeroext i1 %51(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, i32 3)
          to label %58 unwind label %55

55:                                               ; preds = %53
  %56 = landingpad { i8*, i32 }
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #25
  unreachable

58:                                               ; preds = %53, %49
  %59 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  %60 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %59, align 8, !tbaa !16
  %61 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  invoke void %60(i32 3, %"class.std::any"* nonnull %16, %"union.std::any::_Arg"* null)
          to label %68 unwind label %63

63:                                               ; preds = %62
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #25
  unreachable

66:                                               ; preds = %24
  %67 = landingpad { i8*, i32 }
          cleanup
  br label %68

68:                                               ; preds = %62, %58, %66
  %69 = phi { i8*, i32 } [ %67, %66 ], [ %50, %58 ], [ %50, %62 ]
  call void @_ZdlPv(i8* nonnull %13) #28
  resume { i8*, i32 } %69

70:                                               ; preds = %40, %29
  %71 = bitcast %"union.std::_Any_data"* %0 to i8**
  store i8* %13, i8** %71, align 8, !tbaa !67
  br label %97

72:                                               ; preds = %5
  %73 = bitcast %"union.std::_Any_data"* %0 to %class.anon.34**
  %74 = load %class.anon.34*, %class.anon.34** %73, align 8, !tbaa !67
  %75 = icmp eq %class.anon.34* %74, null
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %class.anon.34, %class.anon.34* %74, i64 0, i32 1, i32 0, i32 1
  %78 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %77, align 8, !tbaa !24
  %79 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %class.anon.34, %class.anon.34* %74, i64 0, i32 1, i32 0, i32 0
  %82 = invoke zeroext i1 %78(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 3)
          to label %86 unwind label %83

83:                                               ; preds = %80
  %84 = landingpad { i8*, i32 }
          catch i8* null
  %85 = extractvalue { i8*, i32 } %84, 0
  tail call void @__clang_call_terminate(i8* %85) #25
  unreachable

86:                                               ; preds = %80, %76
  %87 = getelementptr inbounds %class.anon.34, %class.anon.34* %74, i64 0, i32 0, i32 0
  %88 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %87, align 8, !tbaa !16
  %89 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %class.anon.34, %class.anon.34* %74, i64 0, i32 0
  invoke void %88(i32 3, %"class.std::any"* nonnull %91, %"union.std::any::_Arg"* null)
          to label %95 unwind label %92

92:                                               ; preds = %90
  %93 = landingpad { i8*, i32 }
          catch i8* null
  %94 = extractvalue { i8*, i32 } %93, 0
  tail call void @__clang_call_terminate(i8* %94) #25
  unreachable

95:                                               ; preds = %90, %86
  %96 = bitcast %class.anon.34* %74 to i8*
  tail call void @_ZdlPv(i8* %96) #28
  br label %97

97:                                               ; preds = %95, %72, %5, %70, %8, %6
  ret i1 false
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture nonnull readonly align 8 dereferenceable(16) %0) #19 align 2 {
  br label %2

2:                                                ; preds = %1
  %3 = bitcast %"union.std::_Any_data"* %0 to i64**
  %4 = load i64*, i64** %3, align 8, !tbaa !215
  %5 = load i64, i64* %4, align 8, !tbaa !190
  %6 = add i64 %5, -1
  %7 = icmp ult i64 %6, 2
  ret i1 %7
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(%"union.std::_Any_data"* nocapture nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #20 align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %13 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2" to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %8, align 8, !tbaa !67
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  %12 = load i64, i64* %10, align 8, !tbaa !67
  store i64 %12, i64* %11, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %4, %9, %7, %5
  ret i1 false
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture nonnull readonly align 8 dereferenceable(16) %0) #19 align 2 {
  br label %2

2:                                                ; preds = %1
  %3 = bitcast %"union.std::_Any_data"* %0 to i64**
  %4 = load i64*, i64** %3, align 8, !tbaa !217
  %5 = load i64, i64* %4, align 8, !tbaa !68
  %6 = icmp ult i64 %5, 10241
  ret i1 %6
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(%"union.std::_Any_data"* nocapture nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #20 align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %13 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3" to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %8, align 8, !tbaa !67
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  %12 = load i64, i64* %10, align 8, !tbaa !67
  store i64 %12, i64* %11, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %4, %9, %7, %5
  ret i1 false
}

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionINSC_19calculation_options21interference_functionEEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISH_E4typeESt15__invoke_resultIRSQ_JS7_EEEE5valueERS9_E4typeEOSH_(%"class.std::function"* %0, %class.anon.36* nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"union.std::any::_Arg", align 8
  %6 = alloca { i64, i64 }, align 8
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"class.std::function", align 8
  %9 = alloca %class.anon.36, align 8
  br label %10

10:                                               ; preds = %2
  %11 = bitcast %"class.std::function"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #22
  %12 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %class.anon.36, %class.anon.36* %1, i64 0, i32 0, i32 0
  %14 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %13, align 8, !tbaa !16
  %15 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %17, align 8, !tbaa !16
  br label %30

18:                                               ; preds = %10
  %19 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 0
  %20 = getelementptr inbounds %class.anon.36, %class.anon.36* %1, i64 0, i32 0
  %21 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #22
  %22 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %19, %"class.std::any"** %22, align 8, !tbaa !15
  invoke void %14(i32 4, %"class.std::any"* nonnull %20, %"union.std::any::_Arg"* nonnull %7)
          to label %23 unwind label %27

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  %24 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 1, i32 1
  %25 = bitcast i1 (%"union.std::_Any_data"*)** %24 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  br label %30

27:                                               ; preds = %18
  %28 = landingpad { i8*, i32 }
          catch i8* null
  %29 = extractvalue { i8*, i32 } %28, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  call void @__clang_call_terminate(i8* %29) #25
  unreachable

30:                                               ; preds = %16, %23
  %31 = phi i64 [ undef, %16 ], [ %26, %23 ]
  %32 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 1
  %33 = getelementptr inbounds %class.anon.36, %class.anon.36* %1, i64 0, i32 1
  %34 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 1, i32 0, i32 1
  %35 = bitcast { i64, i64 }* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35)
  %36 = bitcast %"class.std::function.10"* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %35, i8* nonnull align 8 dereferenceable(16) %36, i64 16, i1 false) #22, !tbaa.struct !196
  %37 = bitcast %"class.std::function.10"* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %36, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %35, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35)
  %38 = getelementptr inbounds %class.anon.36, %class.anon.36* %1, i64 0, i32 1, i32 0, i32 1
  %39 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %38 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !67
  %41 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34 to i64*
  store i64 0, i64* %39, align 8, !tbaa !67
  store i64 %40, i64* %41, align 8, !tbaa !67
  %42 = getelementptr inbounds %class.anon.36, %class.anon.36* %1, i64 0, i32 1, i32 1
  %43 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 1, i32 1
  %44 = bitcast i1 (%"union.std::_Any_data"*)** %42 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !67
  %46 = bitcast i1 (%"union.std::_Any_data"*)** %43 to i64*
  store i64 %31, i64* %44, align 8, !tbaa !67
  store i64 %45, i64* %46, align 8, !tbaa !67
  %47 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47, align 8, !tbaa !24
  %48 = inttoptr i64 %40 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %49 = invoke noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
          to label %50 unwind label %71

50:                                               ; preds = %30
  %51 = getelementptr inbounds i8, i8* %49, i64 8
  %52 = bitcast i8* %51 to i8**
  store i8* null, i8** %52, align 8, !tbaa !15
  %53 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 0, i32 0
  %54 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %55 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = bitcast i8* %49 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %57, align 8, !tbaa !16
  br label %74

58:                                               ; preds = %50
  %59 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 0
  %60 = bitcast %"union.std::any::_Arg"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #22
  %61 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %5, i64 0, i32 0
  store i8* %49, i8** %61, align 8, !tbaa !15
  invoke void %54(i32 4, %"class.std::any"* nonnull %59, %"union.std::any::_Arg"* nonnull %5)
          to label %62 unwind label %68

62:                                               ; preds = %58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  %63 = getelementptr inbounds i8, i8* %49, i64 40
  %64 = bitcast i8* %63 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !67
  %66 = load i64, i64* %41, align 8, !tbaa !67
  %67 = load i64, i64* %46, align 8, !tbaa !67
  br label %74

68:                                               ; preds = %58
  %69 = landingpad { i8*, i32 }
          catch i8* null
  %70 = extractvalue { i8*, i32 } %69, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  call void @__clang_call_terminate(i8* %70) #25
  unreachable

71:                                               ; preds = %30
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = icmp eq i64 %40, 0
  br i1 %73, label %129, label %123

74:                                               ; preds = %56, %62
  %75 = phi i64 [ %45, %56 ], [ %67, %62 ]
  %76 = phi i64 [ %40, %56 ], [ %66, %62 ]
  %77 = phi i64 [ undef, %56 ], [ %65, %62 ]
  %78 = getelementptr inbounds i8, i8* %49, i64 16
  %79 = getelementptr inbounds i8, i8* %49, i64 32
  %80 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %80)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %80, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %78, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %78, i8* nonnull align 8 dereferenceable(16) %80, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %80)
  %81 = bitcast i8* %79 to i64*
  store i64 0, i64* %41, align 8, !tbaa !67
  store i64 %76, i64* %81, align 8, !tbaa !67
  %82 = getelementptr inbounds i8, i8* %49, i64 40
  %83 = bitcast i8* %82 to i64*
  store i64 %77, i64* %46, align 8, !tbaa !67
  store i64 %75, i64* %83, align 8, !tbaa !67
  %84 = bitcast %"class.std::function"* %8 to i8**
  store i8* %49, i8** %84, align 8, !tbaa !67
  %85 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 1
  %86 = bitcast { i64, i64 }* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %86, i8* nonnull align 8 dereferenceable(16) %11, i64 16, i1 false) #22, !tbaa.struct !196
  %87 = bitcast %"class.std::function"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %11, i8* nonnull align 8 dereferenceable(16) %87, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %87, i8* nonnull align 8 dereferenceable(16) %86, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86)
  %88 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 0, i32 1
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47 to i64*
  %90 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %88 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !67
  store i64 %91, i64* %89, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21interference_functionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation to i64), i64* %90, align 8, !tbaa !67
  %92 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 1
  %93 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %85 to i64*
  %94 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %92 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !67
  store i64 %95, i64* %93, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21interference_functionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ to i64), i64* %94, align 8, !tbaa !67
  %96 = icmp eq i64 %91, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %74
  %98 = inttoptr i64 %91 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %99 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 0
  %100 = invoke zeroext i1 %98(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, i32 3)
          to label %104 unwind label %101

101:                                              ; preds = %97
  %102 = landingpad { i8*, i32 }
          catch i8* null
  %103 = extractvalue { i8*, i32 } %102, 0
  call void @__clang_call_terminate(i8* %103) #25
  unreachable

104:                                              ; preds = %97
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %74, %107, %104
  %114 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %115 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 0
  invoke void %114(i32 3, %"class.std::any"* nonnull %117, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %116
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %116
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  ret %"class.std::function"* %0

123:                                              ; preds = %71
  %124 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 1, i32 0, i32 0
  %125 = invoke zeroext i1 %48(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, i32 3)
          to label %129 unwind label %126

126:                                              ; preds = %123
  %127 = landingpad { i8*, i32 }
          catch i8* null
  %128 = extractvalue { i8*, i32 } %127, 0
  call void @__clang_call_terminate(i8* %128) #25
  unreachable

129:                                              ; preds = %123, %71
  %130 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 0, i32 0
  %131 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  %132 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %class.anon.36, %class.anon.36* %9, i64 0, i32 0
  invoke void %131(i32 3, %"class.std::any"* nonnull %134, %"union.std::any::_Arg"* null)
          to label %135 unwind label %136

135:                                              ; preds = %133
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  br label %139

136:                                              ; preds = %133
  %137 = landingpad { i8*, i32 }
          catch i8* null
  %138 = extractvalue { i8*, i32 } %137, 0
  call void @__clang_call_terminate(i8* %138) #25
  unreachable

139:                                              ; preds = %129, %135
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  resume { i8*, i32 } %72
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21interference_functionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 %0, %"class.std::any"* %1, %"union.std::any::_Arg"* %2) #11 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 1
  switch i32 %0, label %33 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
    i32 4, label %21
  ]

6:                                                ; preds = %4
  %7 = bitcast %"union.std::any::_Arg"* %2 to %"union.std::any::_Storage"**
  store %"union.std::any::_Storage"* %5, %"union.std::any::_Storage"** %7, align 8, !tbaa !15
  br label %33

8:                                                ; preds = %4
  %9 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPN8partdiff9askparams19calculation_options21interference_functionE to %"class.std::type_info"*), %"class.std::type_info"** %9, align 8, !tbaa !15
  br label %33

10:                                               ; preds = %4
  %11 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %12 = load %"class.std::any"*, %"class.std::any"** %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %"class.std::any", %"class.std::any"* %12, i64 0, i32 1
  %14 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !67
  %16 = bitcast %"union.std::any::_Storage"* %13 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !67
  %17 = bitcast %"class.std::any"* %1 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !16
  %19 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %20 = load i64*, i64** %19, align 8, !tbaa !15
  store i64 %18, i64* %20, align 8, !tbaa !16
  br label %33

21:                                               ; preds = %4
  %22 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %23 = load %"class.std::any"*, %"class.std::any"** %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %"class.std::any", %"class.std::any"* %23, i64 0, i32 1
  %25 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  %27 = bitcast %"union.std::any::_Storage"* %24 to i64*
  store i64 %26, i64* %27, align 8, !tbaa !67
  %28 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 0
  %29 = bitcast %"class.std::any"* %1 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !16
  %31 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %32 = load i64*, i64** %31, align 8, !tbaa !15
  store i64 %30, i64* %32, align 8, !tbaa !16
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %28, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %4, %21, %10, %8, %6
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21interference_functionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  br label %3

3:                                                ; preds = %2
  %4 = bitcast %"union.std::_Any_data"* %0 to %class.anon.36**
  %5 = load %class.anon.36*, %class.anon.36** %4, align 8, !tbaa !67
  %6 = tail call zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEENKUlRKSA_E_clESH_(%class.anon.36* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
  ret i1 %6
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21interference_functionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #0 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %11 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %9, i64* %10, align 8, !tbaa !67
  br label %13

11:                                               ; preds = %4
  %12 = tail call zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS2_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SC_SC_St8functionIFbvEEEUlRKSC_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2)
  br label %13

13:                                               ; preds = %11, %7, %5
  ret i1 false
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEENKUlRKSA_E_clESH_(%class.anon.36* %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"union.std::any::_Arg", align 8
  %4 = alloca %"union.std::any::_Arg", align 8
  %5 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %6 = alloca i64, align 8
  br label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.anon.36, %class.anon.36* %0, i64 0, i32 0
  %9 = getelementptr inbounds %class.anon.36, %class.anon.36* %0, i64 0, i32 0, i32 0
  %10 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %9, align 8, !tbaa !16
  %11 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %10, @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21interference_functionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %10, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = bitcast %"union.std::any::_Arg"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #22
  invoke void %10(i32 1, %"class.std::any"* nonnull %8, %"union.std::any::_Arg"* nonnull %3)
          to label %16 unwind label %19

16:                                               ; preds = %14
  %17 = bitcast %"union.std::any::_Arg"* %3 to %"class.std::type_info"**
  %18 = load %"class.std::type_info"*, %"class.std::type_info"** %17, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #22
  br label %22

19:                                               ; preds = %14
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #22
  call void @__clang_call_terminate(i8* %21) #25
  unreachable

22:                                               ; preds = %16, %12
  %23 = phi %"class.std::type_info"* [ %18, %16 ], [ bitcast (i8** @_ZTIv to %"class.std::type_info"*), %12 ]
  %24 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %23, i64 0, i32 1
  %25 = load i8*, i8** %24, align 8, !tbaa !197
  %26 = icmp eq i8* %25, getelementptr inbounds ([67 x i8], [67 x i8]* @_ZTSPN8partdiff9askparams19calculation_options21interference_functionE, i64 0, i64 0)
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i8, i8* %25, align 1, !tbaa !15
  %29 = icmp eq i8 %28, 42
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = call i32 @strcmp(i8* nonnull %25, i8* nonnull dereferenceable(67) getelementptr inbounds ([67 x i8], [67 x i8]* @_ZTSPN8partdiff9askparams19calculation_options21interference_functionE, i64 0, i64 0)) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %22, %7
  %34 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #22
  %35 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %9, align 8, !tbaa !16
  invoke void %35(i32 0, %"class.std::any"* nonnull %8, %"union.std::any::_Arg"* nonnull %4)
          to label %39 unwind label %36

36:                                               ; preds = %33
  %37 = landingpad { i8*, i32 }
          catch i8* null
  %38 = extractvalue { i8*, i32 } %37, 0
  call void @__clang_call_terminate(i8* %38) #25
  unreachable

39:                                               ; preds = %33
  %40 = bitcast %"union.std::any::_Arg"* %4 to i64***
  %41 = load i64**, i64*** %40, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #22
  %42 = icmp eq i64** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %30, %27
  call void @_ZSt20__throw_bad_any_castv() #23
  unreachable

44:                                               ; preds = %39
  %45 = load i64*, i64** %41, align 8, !tbaa !67
  %46 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %46) #22
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(%"class.std::__cxx11::basic_istringstream"* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, i32 8)
  %47 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #22
  %48 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to %"class.std::basic_istream"*
  %49 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractImEERSiRT_(%"class.std::basic_istream"* nonnull %48, i64* nonnull align 8 dereferenceable(8) %6)
          to label %50 unwind label %104

50:                                               ; preds = %44
  %51 = bitcast %"class.std::basic_istream"* %49 to i8**
  %52 = load i8*, i8** %51, align 8, !tbaa !34
  %53 = getelementptr i8, i8* %52, i64 -24
  %54 = bitcast i8* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = bitcast %"class.std::basic_istream"* %49 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  %58 = getelementptr inbounds i8, i8* %57, i64 32
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 8, !tbaa !199
  %61 = load i64, i64* %6, align 8, !tbaa !68
  store i64 %61, i64* %45, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #22
  %62 = getelementptr inbounds %class.anon.36, %class.anon.36* %0, i64 0, i32 1, i32 0, i32 1
  %63 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %62, align 8, !tbaa !24
  %64 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %66 unwind label %108

66:                                               ; preds = %65
  unreachable

67:                                               ; preds = %50
  %68 = getelementptr inbounds %class.anon.36, %class.anon.36* %0, i64 0, i32 1, i32 1
  %69 = load i1 (%"union.std::_Any_data"*)*, i1 (%"union.std::_Any_data"*)** %68, align 8, !tbaa !100
  %70 = getelementptr inbounds %class.anon.36, %class.anon.36* %0, i64 0, i32 1, i32 0, i32 0
  %71 = invoke zeroext i1 %69(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %70)
          to label %72 unwind label %108

72:                                               ; preds = %67
  %73 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %74 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %73, i64* %74, align 8, !tbaa !34
  %75 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %76 = inttoptr i64 %73 to i8*
  %77 = getelementptr i8, i8* %76, i64 -24
  %78 = bitcast i8* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i8, i8* %46, i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 %75, i64* %81, align 8, !tbaa !34
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %82, align 8, !tbaa !34
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8, !tbaa !20
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %86 = bitcast %union.anon* %85 to i8*
  %87 = icmp eq i8* %84, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %72
  call void @_ZdlPv(i8* %84) #22
  br label %89

89:                                               ; preds = %72, %88
  %90 = and i32 %60, 5
  %91 = icmp eq i32 %90, 0
  %92 = and i1 %91, %71
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %82, align 8, !tbaa !34
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %93) #22
  %94 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %94, i64* %74, align 8, !tbaa !34
  %95 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %96 = inttoptr i64 %94 to i8*
  %97 = getelementptr i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8, i8* %46, i64 %99
  %101 = bitcast i8* %100 to i64*
  store i64 %95, i64* %101, align 8, !tbaa !34
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %102, align 8, !tbaa !205
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %103) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  ret i1 %92

104:                                              ; preds = %44
  %105 = landingpad { i8*, i32 }
          cleanup
  %106 = extractvalue { i8*, i32 } %105, 0
  %107 = extractvalue { i8*, i32 } %105, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #22
  br label %112

108:                                              ; preds = %67, %65
  %109 = landingpad { i8*, i32 }
          cleanup
  %110 = extractvalue { i8*, i32 } %109, 0
  %111 = extractvalue { i8*, i32 } %109, 1
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i8* [ %110, %108 ], [ %106, %104 ]
  %114 = phi i32 [ %111, %108 ], [ %107, %104 ]
  %115 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %116 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %115, i64* %116, align 8, !tbaa !34
  %117 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %118 = inttoptr i64 %115 to i8*
  %119 = getelementptr i8, i8* %118, i64 -24
  %120 = bitcast i8* %119 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i8, i8* %46, i64 %121
  %123 = bitcast i8* %122 to i64*
  store i64 %117, i64* %123, align 8, !tbaa !34
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %124, align 8, !tbaa !34
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8, !tbaa !20
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %128 = bitcast %union.anon* %127 to i8*
  %129 = icmp eq i8* %126, %128
  br i1 %129, label %131, label %130

130:                                              ; preds = %112
  call void @_ZdlPv(i8* %126) #22
  br label %131

131:                                              ; preds = %112, %130
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %124, align 8, !tbaa !34
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %132) #22
  %133 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %133, i64* %116, align 8, !tbaa !34
  %134 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %135 = inttoptr i64 %133 to i8*
  %136 = getelementptr i8, i8* %135, i64 -24
  %137 = bitcast i8* %136 to i64*
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i8, i8* %46, i64 %138
  %140 = bitcast i8* %139 to i64*
  store i64 %134, i64* %140, align 8, !tbaa !34
  %141 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %141, align 8, !tbaa !205
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %142) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  %143 = insertvalue { i8*, i32 } undef, i8* %113, 0
  %144 = insertvalue { i8*, i32 } %143, i32 %114, 1
  resume { i8*, i32 } %144
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS2_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SC_SC_St8functionIFbvEEEUlRKSC_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"union.std::any::_Arg", align 8
  br label %5

5:                                                ; preds = %3
  switch i32 %2, label %97 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %12
    i32 3, label %72
  ]

6:                                                ; preds = %5
  %7 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21interference_functionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ to %"class.std::type_info"*), %"class.std::type_info"** %7, align 8, !tbaa !67
  br label %97

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %10, i64* %11, align 8, !tbaa !67
  br label %97

12:                                               ; preds = %5
  %13 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %14 = bitcast %"union.std::_Any_data"* %1 to %class.anon.36**
  %15 = load %class.anon.36*, %class.anon.36** %14, align 8, !tbaa !67
  %16 = bitcast i8* %13 to %"class.std::any"*
  %17 = getelementptr inbounds i8, i8* %13, i64 8
  %18 = bitcast i8* %17 to i8**
  store i8* null, i8** %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %class.anon.36, %class.anon.36* %15, i64 0, i32 0, i32 0
  %20 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %19, align 8, !tbaa !16
  %21 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %23, align 8, !tbaa !16
  br label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds %class.anon.36, %class.anon.36* %15, i64 0, i32 0
  %26 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #22
  %27 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %4, i64 0, i32 0
  store i8* %13, i8** %27, align 8, !tbaa !15
  invoke void %20(i32 2, %"class.std::any"* nonnull %25, %"union.std::any::_Arg"* nonnull %4)
          to label %28 unwind label %66

28:                                               ; preds = %24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #22
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds i8, i8* %13, i64 32
  %31 = bitcast i8* %30 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)**
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %class.anon.36, %class.anon.36* %15, i64 0, i32 1, i32 0, i32 1
  %33 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32, align 8, !tbaa !24
  %34 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %13, i64 16
  %37 = bitcast i8* %36 to %"union.std::_Any_data"*
  %38 = getelementptr inbounds %class.anon.36, %class.anon.36* %15, i64 0, i32 1, i32 0, i32 0
  %39 = invoke zeroext i1 %33(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %38, i32 2)
          to label %40 unwind label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %class.anon.36, %class.anon.36* %15, i64 0, i32 1, i32 1
  %42 = bitcast i1 (%"union.std::_Any_data"*)** %41 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !100
  %44 = getelementptr inbounds i8, i8* %13, i64 40
  %45 = bitcast i8* %44 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !100
  %46 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !24
  %48 = bitcast i8* %30 to i64*
  store i64 %47, i64* %48, align 8, !tbaa !24
  br label %70

49:                                               ; preds = %35
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %52 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = invoke zeroext i1 %51(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, i32 3)
          to label %58 unwind label %55

55:                                               ; preds = %53
  %56 = landingpad { i8*, i32 }
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #25
  unreachable

58:                                               ; preds = %53, %49
  %59 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  %60 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %59, align 8, !tbaa !16
  %61 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  invoke void %60(i32 3, %"class.std::any"* nonnull %16, %"union.std::any::_Arg"* null)
          to label %68 unwind label %63

63:                                               ; preds = %62
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #25
  unreachable

66:                                               ; preds = %24
  %67 = landingpad { i8*, i32 }
          cleanup
  br label %68

68:                                               ; preds = %62, %58, %66
  %69 = phi { i8*, i32 } [ %67, %66 ], [ %50, %58 ], [ %50, %62 ]
  call void @_ZdlPv(i8* nonnull %13) #28
  resume { i8*, i32 } %69

70:                                               ; preds = %40, %29
  %71 = bitcast %"union.std::_Any_data"* %0 to i8**
  store i8* %13, i8** %71, align 8, !tbaa !67
  br label %97

72:                                               ; preds = %5
  %73 = bitcast %"union.std::_Any_data"* %0 to %class.anon.36**
  %74 = load %class.anon.36*, %class.anon.36** %73, align 8, !tbaa !67
  %75 = icmp eq %class.anon.36* %74, null
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %class.anon.36, %class.anon.36* %74, i64 0, i32 1, i32 0, i32 1
  %78 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %77, align 8, !tbaa !24
  %79 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %class.anon.36, %class.anon.36* %74, i64 0, i32 1, i32 0, i32 0
  %82 = invoke zeroext i1 %78(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 3)
          to label %86 unwind label %83

83:                                               ; preds = %80
  %84 = landingpad { i8*, i32 }
          catch i8* null
  %85 = extractvalue { i8*, i32 } %84, 0
  tail call void @__clang_call_terminate(i8* %85) #25
  unreachable

86:                                               ; preds = %80, %76
  %87 = getelementptr inbounds %class.anon.36, %class.anon.36* %74, i64 0, i32 0, i32 0
  %88 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %87, align 8, !tbaa !16
  %89 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %class.anon.36, %class.anon.36* %74, i64 0, i32 0
  invoke void %88(i32 3, %"class.std::any"* nonnull %91, %"union.std::any::_Arg"* null)
          to label %95 unwind label %92

92:                                               ; preds = %90
  %93 = landingpad { i8*, i32 }
          catch i8* null
  %94 = extractvalue { i8*, i32 } %93, 0
  tail call void @__clang_call_terminate(i8* %94) #25
  unreachable

95:                                               ; preds = %90, %86
  %96 = bitcast %class.anon.36* %74 to i8*
  tail call void @_ZdlPv(i8* %96) #28
  br label %97

97:                                               ; preds = %95, %72, %5, %70, %8, %6
  ret i1 false
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture nonnull readonly align 8 dereferenceable(16) %0) #19 align 2 {
  br label %2

2:                                                ; preds = %1
  %3 = bitcast %"union.std::_Any_data"* %0 to i64**
  %4 = load i64*, i64** %3, align 8, !tbaa !219
  %5 = load i64, i64* %4, align 8, !tbaa !191
  %6 = add i64 %5, -1
  %7 = icmp ult i64 %6, 2
  ret i1 %7
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(%"union.std::_Any_data"* nocapture nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #20 align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %13 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4" to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %8, align 8, !tbaa !67
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  %12 = load i64, i64* %10, align 8, !tbaa !67
  store i64 %12, i64* %11, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %4, %9, %7, %5
  ret i1 false
}

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionINSC_19calculation_options21termination_conditionEEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISH_E4typeESt15__invoke_resultIRSQ_JS7_EEEE5valueERS9_E4typeEOSH_(%"class.std::function"* %0, %class.anon.40* nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"union.std::any::_Arg", align 8
  %6 = alloca { i64, i64 }, align 8
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"class.std::function", align 8
  %9 = alloca %class.anon.40, align 8
  br label %10

10:                                               ; preds = %2
  %11 = bitcast %"class.std::function"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #22
  %12 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %class.anon.40, %class.anon.40* %1, i64 0, i32 0, i32 0
  %14 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %13, align 8, !tbaa !16
  %15 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %17, align 8, !tbaa !16
  br label %30

18:                                               ; preds = %10
  %19 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 0
  %20 = getelementptr inbounds %class.anon.40, %class.anon.40* %1, i64 0, i32 0
  %21 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #22
  %22 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %19, %"class.std::any"** %22, align 8, !tbaa !15
  invoke void %14(i32 4, %"class.std::any"* nonnull %20, %"union.std::any::_Arg"* nonnull %7)
          to label %23 unwind label %27

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  %24 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 1, i32 1
  %25 = bitcast i1 (%"union.std::_Any_data"*)** %24 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  br label %30

27:                                               ; preds = %18
  %28 = landingpad { i8*, i32 }
          catch i8* null
  %29 = extractvalue { i8*, i32 } %28, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  call void @__clang_call_terminate(i8* %29) #25
  unreachable

30:                                               ; preds = %16, %23
  %31 = phi i64 [ undef, %16 ], [ %26, %23 ]
  %32 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 1
  %33 = getelementptr inbounds %class.anon.40, %class.anon.40* %1, i64 0, i32 1
  %34 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 1, i32 0, i32 1
  %35 = bitcast { i64, i64 }* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35)
  %36 = bitcast %"class.std::function.10"* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %35, i8* nonnull align 8 dereferenceable(16) %36, i64 16, i1 false) #22, !tbaa.struct !196
  %37 = bitcast %"class.std::function.10"* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %36, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %35, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35)
  %38 = getelementptr inbounds %class.anon.40, %class.anon.40* %1, i64 0, i32 1, i32 0, i32 1
  %39 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %38 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !67
  %41 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34 to i64*
  store i64 0, i64* %39, align 8, !tbaa !67
  store i64 %40, i64* %41, align 8, !tbaa !67
  %42 = getelementptr inbounds %class.anon.40, %class.anon.40* %1, i64 0, i32 1, i32 1
  %43 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 1, i32 1
  %44 = bitcast i1 (%"union.std::_Any_data"*)** %42 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !67
  %46 = bitcast i1 (%"union.std::_Any_data"*)** %43 to i64*
  store i64 %31, i64* %44, align 8, !tbaa !67
  store i64 %45, i64* %46, align 8, !tbaa !67
  %47 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47, align 8, !tbaa !24
  %48 = inttoptr i64 %40 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %49 = invoke noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
          to label %50 unwind label %71

50:                                               ; preds = %30
  %51 = getelementptr inbounds i8, i8* %49, i64 8
  %52 = bitcast i8* %51 to i8**
  store i8* null, i8** %52, align 8, !tbaa !15
  %53 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 0, i32 0
  %54 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %55 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = bitcast i8* %49 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %57, align 8, !tbaa !16
  br label %74

58:                                               ; preds = %50
  %59 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 0
  %60 = bitcast %"union.std::any::_Arg"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #22
  %61 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %5, i64 0, i32 0
  store i8* %49, i8** %61, align 8, !tbaa !15
  invoke void %54(i32 4, %"class.std::any"* nonnull %59, %"union.std::any::_Arg"* nonnull %5)
          to label %62 unwind label %68

62:                                               ; preds = %58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  %63 = getelementptr inbounds i8, i8* %49, i64 40
  %64 = bitcast i8* %63 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !67
  %66 = load i64, i64* %41, align 8, !tbaa !67
  %67 = load i64, i64* %46, align 8, !tbaa !67
  br label %74

68:                                               ; preds = %58
  %69 = landingpad { i8*, i32 }
          catch i8* null
  %70 = extractvalue { i8*, i32 } %69, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  call void @__clang_call_terminate(i8* %70) #25
  unreachable

71:                                               ; preds = %30
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = icmp eq i64 %40, 0
  br i1 %73, label %129, label %123

74:                                               ; preds = %56, %62
  %75 = phi i64 [ %45, %56 ], [ %67, %62 ]
  %76 = phi i64 [ %40, %56 ], [ %66, %62 ]
  %77 = phi i64 [ undef, %56 ], [ %65, %62 ]
  %78 = getelementptr inbounds i8, i8* %49, i64 16
  %79 = getelementptr inbounds i8, i8* %49, i64 32
  %80 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %80)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %80, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %78, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %78, i8* nonnull align 8 dereferenceable(16) %80, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %80)
  %81 = bitcast i8* %79 to i64*
  store i64 0, i64* %41, align 8, !tbaa !67
  store i64 %76, i64* %81, align 8, !tbaa !67
  %82 = getelementptr inbounds i8, i8* %49, i64 40
  %83 = bitcast i8* %82 to i64*
  store i64 %77, i64* %46, align 8, !tbaa !67
  store i64 %75, i64* %83, align 8, !tbaa !67
  %84 = bitcast %"class.std::function"* %8 to i8**
  store i8* %49, i8** %84, align 8, !tbaa !67
  %85 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 1
  %86 = bitcast { i64, i64 }* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %86, i8* nonnull align 8 dereferenceable(16) %11, i64 16, i1 false) #22, !tbaa.struct !196
  %87 = bitcast %"class.std::function"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %11, i8* nonnull align 8 dereferenceable(16) %87, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %87, i8* nonnull align 8 dereferenceable(16) %86, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86)
  %88 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 0, i32 1
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47 to i64*
  %90 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %88 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !67
  store i64 %91, i64* %89, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21termination_conditionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation to i64), i64* %90, align 8, !tbaa !67
  %92 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 1
  %93 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %85 to i64*
  %94 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %92 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !67
  store i64 %95, i64* %93, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21termination_conditionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ to i64), i64* %94, align 8, !tbaa !67
  %96 = icmp eq i64 %91, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %74
  %98 = inttoptr i64 %91 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %99 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 0
  %100 = invoke zeroext i1 %98(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, i32 3)
          to label %104 unwind label %101

101:                                              ; preds = %97
  %102 = landingpad { i8*, i32 }
          catch i8* null
  %103 = extractvalue { i8*, i32 } %102, 0
  call void @__clang_call_terminate(i8* %103) #25
  unreachable

104:                                              ; preds = %97
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %74, %107, %104
  %114 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %115 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 0
  invoke void %114(i32 3, %"class.std::any"* nonnull %117, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %116
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %116
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  ret %"class.std::function"* %0

123:                                              ; preds = %71
  %124 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 1, i32 0, i32 0
  %125 = invoke zeroext i1 %48(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, i32 3)
          to label %129 unwind label %126

126:                                              ; preds = %123
  %127 = landingpad { i8*, i32 }
          catch i8* null
  %128 = extractvalue { i8*, i32 } %127, 0
  call void @__clang_call_terminate(i8* %128) #25
  unreachable

129:                                              ; preds = %123, %71
  %130 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 0, i32 0
  %131 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  %132 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %class.anon.40, %class.anon.40* %9, i64 0, i32 0
  invoke void %131(i32 3, %"class.std::any"* nonnull %134, %"union.std::any::_Arg"* null)
          to label %135 unwind label %136

135:                                              ; preds = %133
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  br label %139

136:                                              ; preds = %133
  %137 = landingpad { i8*, i32 }
          catch i8* null
  %138 = extractvalue { i8*, i32 } %137, 0
  call void @__clang_call_terminate(i8* %138) #25
  unreachable

139:                                              ; preds = %129, %135
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  resume { i8*, i32 } %72
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21termination_conditionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 %0, %"class.std::any"* %1, %"union.std::any::_Arg"* %2) #11 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 1
  switch i32 %0, label %33 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
    i32 4, label %21
  ]

6:                                                ; preds = %4
  %7 = bitcast %"union.std::any::_Arg"* %2 to %"union.std::any::_Storage"**
  store %"union.std::any::_Storage"* %5, %"union.std::any::_Storage"** %7, align 8, !tbaa !15
  br label %33

8:                                                ; preds = %4
  %9 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPN8partdiff9askparams19calculation_options21termination_conditionE to %"class.std::type_info"*), %"class.std::type_info"** %9, align 8, !tbaa !15
  br label %33

10:                                               ; preds = %4
  %11 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %12 = load %"class.std::any"*, %"class.std::any"** %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %"class.std::any", %"class.std::any"* %12, i64 0, i32 1
  %14 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !67
  %16 = bitcast %"union.std::any::_Storage"* %13 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !67
  %17 = bitcast %"class.std::any"* %1 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !16
  %19 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %20 = load i64*, i64** %19, align 8, !tbaa !15
  store i64 %18, i64* %20, align 8, !tbaa !16
  br label %33

21:                                               ; preds = %4
  %22 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %23 = load %"class.std::any"*, %"class.std::any"** %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %"class.std::any", %"class.std::any"* %23, i64 0, i32 1
  %25 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  %27 = bitcast %"union.std::any::_Storage"* %24 to i64*
  store i64 %26, i64* %27, align 8, !tbaa !67
  %28 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 0
  %29 = bitcast %"class.std::any"* %1 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !16
  %31 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %32 = load i64*, i64** %31, align 8, !tbaa !15
  store i64 %30, i64* %32, align 8, !tbaa !16
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %28, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %4, %21, %10, %8, %6
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21termination_conditionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  br label %3

3:                                                ; preds = %2
  %4 = bitcast %"union.std::_Any_data"* %0 to %class.anon.40**
  %5 = load %class.anon.40*, %class.anon.40** %4, align 8, !tbaa !67
  %6 = tail call zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEENKUlRKSA_E_clESH_(%class.anon.40* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
  ret i1 %6
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionINSA_19calculation_options21termination_conditionEEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #0 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %11 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %9, i64* %10, align 8, !tbaa !67
  br label %13

11:                                               ; preds = %4
  %12 = tail call zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS2_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SC_SC_St8functionIFbvEEEUlRKSC_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2)
  br label %13

13:                                               ; preds = %11, %7, %5
  ret i1 false
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEENKUlRKSA_E_clESH_(%class.anon.40* %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"union.std::any::_Arg", align 8
  %4 = alloca %"union.std::any::_Arg", align 8
  %5 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %6 = alloca i64, align 8
  br label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.anon.40, %class.anon.40* %0, i64 0, i32 0
  %9 = getelementptr inbounds %class.anon.40, %class.anon.40* %0, i64 0, i32 0, i32 0
  %10 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %9, align 8, !tbaa !16
  %11 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %10, @_ZNSt3any17_Manager_internalIPN8partdiff9askparams19calculation_options21termination_conditionEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %10, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = bitcast %"union.std::any::_Arg"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #22
  invoke void %10(i32 1, %"class.std::any"* nonnull %8, %"union.std::any::_Arg"* nonnull %3)
          to label %16 unwind label %19

16:                                               ; preds = %14
  %17 = bitcast %"union.std::any::_Arg"* %3 to %"class.std::type_info"**
  %18 = load %"class.std::type_info"*, %"class.std::type_info"** %17, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #22
  br label %22

19:                                               ; preds = %14
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #22
  call void @__clang_call_terminate(i8* %21) #25
  unreachable

22:                                               ; preds = %16, %12
  %23 = phi %"class.std::type_info"* [ %18, %16 ], [ bitcast (i8** @_ZTIv to %"class.std::type_info"*), %12 ]
  %24 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %23, i64 0, i32 1
  %25 = load i8*, i8** %24, align 8, !tbaa !197
  %26 = icmp eq i8* %25, getelementptr inbounds ([67 x i8], [67 x i8]* @_ZTSPN8partdiff9askparams19calculation_options21termination_conditionE, i64 0, i64 0)
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i8, i8* %25, align 1, !tbaa !15
  %29 = icmp eq i8 %28, 42
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = call i32 @strcmp(i8* nonnull %25, i8* nonnull dereferenceable(67) getelementptr inbounds ([67 x i8], [67 x i8]* @_ZTSPN8partdiff9askparams19calculation_options21termination_conditionE, i64 0, i64 0)) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %22, %7
  %34 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #22
  %35 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %9, align 8, !tbaa !16
  invoke void %35(i32 0, %"class.std::any"* nonnull %8, %"union.std::any::_Arg"* nonnull %4)
          to label %39 unwind label %36

36:                                               ; preds = %33
  %37 = landingpad { i8*, i32 }
          catch i8* null
  %38 = extractvalue { i8*, i32 } %37, 0
  call void @__clang_call_terminate(i8* %38) #25
  unreachable

39:                                               ; preds = %33
  %40 = bitcast %"union.std::any::_Arg"* %4 to i64***
  %41 = load i64**, i64*** %40, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #22
  %42 = icmp eq i64** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %30, %27
  call void @_ZSt20__throw_bad_any_castv() #23
  unreachable

44:                                               ; preds = %39
  %45 = load i64*, i64** %41, align 8, !tbaa !67
  %46 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %46) #22
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(%"class.std::__cxx11::basic_istringstream"* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, i32 8)
  %47 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #22
  %48 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to %"class.std::basic_istream"*
  %49 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractImEERSiRT_(%"class.std::basic_istream"* nonnull %48, i64* nonnull align 8 dereferenceable(8) %6)
          to label %50 unwind label %104

50:                                               ; preds = %44
  %51 = bitcast %"class.std::basic_istream"* %49 to i8**
  %52 = load i8*, i8** %51, align 8, !tbaa !34
  %53 = getelementptr i8, i8* %52, i64 -24
  %54 = bitcast i8* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = bitcast %"class.std::basic_istream"* %49 to i8*
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  %58 = getelementptr inbounds i8, i8* %57, i64 32
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 8, !tbaa !199
  %61 = load i64, i64* %6, align 8, !tbaa !68
  store i64 %61, i64* %45, align 8, !tbaa !192
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #22
  %62 = getelementptr inbounds %class.anon.40, %class.anon.40* %0, i64 0, i32 1, i32 0, i32 1
  %63 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %62, align 8, !tbaa !24
  %64 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %66 unwind label %108

66:                                               ; preds = %65
  unreachable

67:                                               ; preds = %50
  %68 = getelementptr inbounds %class.anon.40, %class.anon.40* %0, i64 0, i32 1, i32 1
  %69 = load i1 (%"union.std::_Any_data"*)*, i1 (%"union.std::_Any_data"*)** %68, align 8, !tbaa !100
  %70 = getelementptr inbounds %class.anon.40, %class.anon.40* %0, i64 0, i32 1, i32 0, i32 0
  %71 = invoke zeroext i1 %69(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %70)
          to label %72 unwind label %108

72:                                               ; preds = %67
  %73 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %74 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %73, i64* %74, align 8, !tbaa !34
  %75 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %76 = inttoptr i64 %73 to i8*
  %77 = getelementptr i8, i8* %76, i64 -24
  %78 = bitcast i8* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i8, i8* %46, i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 %75, i64* %81, align 8, !tbaa !34
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %82, align 8, !tbaa !34
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8, !tbaa !20
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %86 = bitcast %union.anon* %85 to i8*
  %87 = icmp eq i8* %84, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %72
  call void @_ZdlPv(i8* %84) #22
  br label %89

89:                                               ; preds = %72, %88
  %90 = and i32 %60, 5
  %91 = icmp eq i32 %90, 0
  %92 = and i1 %91, %71
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %82, align 8, !tbaa !34
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %93) #22
  %94 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %94, i64* %74, align 8, !tbaa !34
  %95 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %96 = inttoptr i64 %94 to i8*
  %97 = getelementptr i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8, i8* %46, i64 %99
  %101 = bitcast i8* %100 to i64*
  store i64 %95, i64* %101, align 8, !tbaa !34
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %102, align 8, !tbaa !205
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %103) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  ret i1 %92

104:                                              ; preds = %44
  %105 = landingpad { i8*, i32 }
          cleanup
  %106 = extractvalue { i8*, i32 } %105, 0
  %107 = extractvalue { i8*, i32 } %105, 1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #22
  br label %112

108:                                              ; preds = %67, %65
  %109 = landingpad { i8*, i32 }
          cleanup
  %110 = extractvalue { i8*, i32 } %109, 0
  %111 = extractvalue { i8*, i32 } %109, 1
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i8* [ %110, %108 ], [ %106, %104 ]
  %114 = phi i32 [ %111, %108 ], [ %107, %104 ]
  %115 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %116 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %115, i64* %116, align 8, !tbaa !34
  %117 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %118 = inttoptr i64 %115 to i8*
  %119 = getelementptr i8, i8* %118, i64 -24
  %120 = bitcast i8* %119 to i64*
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i8, i8* %46, i64 %121
  %123 = bitcast i8* %122 to i64*
  store i64 %117, i64* %123, align 8, !tbaa !34
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %124, align 8, !tbaa !34
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8, !tbaa !20
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %128 = bitcast %union.anon* %127 to i8*
  %129 = icmp eq i8* %126, %128
  br i1 %129, label %131, label %130

130:                                              ; preds = %112
  call void @_ZdlPv(i8* %126) #22
  br label %131

131:                                              ; preds = %112, %130
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %124, align 8, !tbaa !34
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %132) #22
  %133 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %133, i64* %116, align 8, !tbaa !34
  %134 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %135 = inttoptr i64 %133 to i8*
  %136 = getelementptr i8, i8* %135, i64 -24
  %137 = bitcast i8* %136 to i64*
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i8, i8* %46, i64 %138
  %140 = bitcast i8* %139 to i64*
  store i64 %134, i64* %140, align 8, !tbaa !34
  %141 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %141, align 8, !tbaa !205
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %142) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  %143 = insertvalue { i8*, i32 } undef, i8* %113, 0
  %144 = insertvalue { i8*, i32 } %143, i32 %114, 1
  resume { i8*, i32 } %144
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS2_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SC_SC_St8functionIFbvEEEUlRKSC_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"union.std::any::_Arg", align 8
  br label %5

5:                                                ; preds = %3
  switch i32 %2, label %97 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %12
    i32 3, label %72
  ]

6:                                                ; preds = %5
  %7 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionINS0_19calculation_options21termination_conditionEEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_ to %"class.std::type_info"*), %"class.std::type_info"** %7, align 8, !tbaa !67
  br label %97

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %10, i64* %11, align 8, !tbaa !67
  br label %97

12:                                               ; preds = %5
  %13 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %14 = bitcast %"union.std::_Any_data"* %1 to %class.anon.40**
  %15 = load %class.anon.40*, %class.anon.40** %14, align 8, !tbaa !67
  %16 = bitcast i8* %13 to %"class.std::any"*
  %17 = getelementptr inbounds i8, i8* %13, i64 8
  %18 = bitcast i8* %17 to i8**
  store i8* null, i8** %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %class.anon.40, %class.anon.40* %15, i64 0, i32 0, i32 0
  %20 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %19, align 8, !tbaa !16
  %21 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %23, align 8, !tbaa !16
  br label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds %class.anon.40, %class.anon.40* %15, i64 0, i32 0
  %26 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #22
  %27 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %4, i64 0, i32 0
  store i8* %13, i8** %27, align 8, !tbaa !15
  invoke void %20(i32 2, %"class.std::any"* nonnull %25, %"union.std::any::_Arg"* nonnull %4)
          to label %28 unwind label %66

28:                                               ; preds = %24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #22
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds i8, i8* %13, i64 32
  %31 = bitcast i8* %30 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)**
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %class.anon.40, %class.anon.40* %15, i64 0, i32 1, i32 0, i32 1
  %33 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32, align 8, !tbaa !24
  %34 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %13, i64 16
  %37 = bitcast i8* %36 to %"union.std::_Any_data"*
  %38 = getelementptr inbounds %class.anon.40, %class.anon.40* %15, i64 0, i32 1, i32 0, i32 0
  %39 = invoke zeroext i1 %33(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %38, i32 2)
          to label %40 unwind label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %class.anon.40, %class.anon.40* %15, i64 0, i32 1, i32 1
  %42 = bitcast i1 (%"union.std::_Any_data"*)** %41 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !100
  %44 = getelementptr inbounds i8, i8* %13, i64 40
  %45 = bitcast i8* %44 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !100
  %46 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !24
  %48 = bitcast i8* %30 to i64*
  store i64 %47, i64* %48, align 8, !tbaa !24
  br label %70

49:                                               ; preds = %35
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %52 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = invoke zeroext i1 %51(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, i32 3)
          to label %58 unwind label %55

55:                                               ; preds = %53
  %56 = landingpad { i8*, i32 }
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #25
  unreachable

58:                                               ; preds = %53, %49
  %59 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  %60 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %59, align 8, !tbaa !16
  %61 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  invoke void %60(i32 3, %"class.std::any"* nonnull %16, %"union.std::any::_Arg"* null)
          to label %68 unwind label %63

63:                                               ; preds = %62
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #25
  unreachable

66:                                               ; preds = %24
  %67 = landingpad { i8*, i32 }
          cleanup
  br label %68

68:                                               ; preds = %62, %58, %66
  %69 = phi { i8*, i32 } [ %67, %66 ], [ %50, %58 ], [ %50, %62 ]
  call void @_ZdlPv(i8* nonnull %13) #28
  resume { i8*, i32 } %69

70:                                               ; preds = %40, %29
  %71 = bitcast %"union.std::_Any_data"* %0 to i8**
  store i8* %13, i8** %71, align 8, !tbaa !67
  br label %97

72:                                               ; preds = %5
  %73 = bitcast %"union.std::_Any_data"* %0 to %class.anon.40**
  %74 = load %class.anon.40*, %class.anon.40** %73, align 8, !tbaa !67
  %75 = icmp eq %class.anon.40* %74, null
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %class.anon.40, %class.anon.40* %74, i64 0, i32 1, i32 0, i32 1
  %78 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %77, align 8, !tbaa !24
  %79 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %class.anon.40, %class.anon.40* %74, i64 0, i32 1, i32 0, i32 0
  %82 = invoke zeroext i1 %78(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 3)
          to label %86 unwind label %83

83:                                               ; preds = %80
  %84 = landingpad { i8*, i32 }
          catch i8* null
  %85 = extractvalue { i8*, i32 } %84, 0
  tail call void @__clang_call_terminate(i8* %85) #25
  unreachable

86:                                               ; preds = %80, %76
  %87 = getelementptr inbounds %class.anon.40, %class.anon.40* %74, i64 0, i32 0, i32 0
  %88 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %87, align 8, !tbaa !16
  %89 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %class.anon.40, %class.anon.40* %74, i64 0, i32 0
  invoke void %88(i32 3, %"class.std::any"* nonnull %91, %"union.std::any::_Arg"* null)
          to label %95 unwind label %92

92:                                               ; preds = %90
  %93 = landingpad { i8*, i32 }
          catch i8* null
  %94 = extractvalue { i8*, i32 } %93, 0
  tail call void @__clang_call_terminate(i8* %94) #25
  unreachable

95:                                               ; preds = %90, %86
  %96 = bitcast %class.anon.40* %74 to i8*
  tail call void @_ZdlPv(i8* %96) #28
  br label %97

97:                                               ; preds = %95, %72, %5, %70, %8, %6
  ret i1 false
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture nonnull readonly align 8 dereferenceable(16) %0) #19 align 2 {
  br label %2

2:                                                ; preds = %1
  %3 = bitcast %"union.std::_Any_data"* %0 to i64**
  %4 = load i64*, i64** %3, align 8, !tbaa !221
  %5 = load i64, i64* %4, align 8, !tbaa !192
  %6 = add i64 %5, -1
  %7 = icmp ult i64 %6, 2
  ret i1 %7
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(%"union.std::_Any_data"* nocapture nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #20 align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %13 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5" to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %8, align 8, !tbaa !67
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  %12 = load i64, i64* %10, align 8, !tbaa !67
  store i64 %12, i64* %11, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %4, %9, %7, %5
  ret i1 false
}

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::function"* @_ZNSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEaSIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvS5_PT_S5_S5_S_IFbvEEEUlS7_E_EENSt9enable_ifIXsrNS9_9_CallableINSt5decayISF_E4typeESt15__invoke_resultIRSO_JS7_EEEE5valueERS9_E4typeEOSF_(%"class.std::function"* %0, %class.anon.44* nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"union.std::any::_Arg", align 8
  %6 = alloca { i64, i64 }, align 8
  %7 = alloca %"union.std::any::_Arg", align 8
  %8 = alloca %"class.std::function", align 8
  %9 = alloca %class.anon.44, align 8
  br label %10

10:                                               ; preds = %2
  %11 = bitcast %"class.std::function"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #22
  %12 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %class.anon.44, %class.anon.44* %1, i64 0, i32 0, i32 0
  %14 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %13, align 8, !tbaa !16
  %15 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %17, align 8, !tbaa !16
  br label %30

18:                                               ; preds = %10
  %19 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 0
  %20 = getelementptr inbounds %class.anon.44, %class.anon.44* %1, i64 0, i32 0
  %21 = bitcast %"union.std::any::_Arg"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #22
  %22 = bitcast %"union.std::any::_Arg"* %7 to %"class.std::any"**
  store %"class.std::any"* %19, %"class.std::any"** %22, align 8, !tbaa !15
  invoke void %14(i32 4, %"class.std::any"* nonnull %20, %"union.std::any::_Arg"* nonnull %7)
          to label %23 unwind label %27

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  %24 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 1, i32 1
  %25 = bitcast i1 (%"union.std::_Any_data"*)** %24 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  br label %30

27:                                               ; preds = %18
  %28 = landingpad { i8*, i32 }
          catch i8* null
  %29 = extractvalue { i8*, i32 } %28, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #22
  call void @__clang_call_terminate(i8* %29) #25
  unreachable

30:                                               ; preds = %16, %23
  %31 = phi i64 [ undef, %16 ], [ %26, %23 ]
  %32 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 1
  %33 = getelementptr inbounds %class.anon.44, %class.anon.44* %1, i64 0, i32 1
  %34 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 1, i32 0, i32 1
  %35 = bitcast { i64, i64 }* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35)
  %36 = bitcast %"class.std::function.10"* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %35, i8* nonnull align 8 dereferenceable(16) %36, i64 16, i1 false) #22, !tbaa.struct !196
  %37 = bitcast %"class.std::function.10"* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %36, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %35, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35)
  %38 = getelementptr inbounds %class.anon.44, %class.anon.44* %1, i64 0, i32 1, i32 0, i32 1
  %39 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %38 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !67
  %41 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34 to i64*
  store i64 0, i64* %39, align 8, !tbaa !67
  store i64 %40, i64* %41, align 8, !tbaa !67
  %42 = getelementptr inbounds %class.anon.44, %class.anon.44* %1, i64 0, i32 1, i32 1
  %43 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 1, i32 1
  %44 = bitcast i1 (%"union.std::_Any_data"*)** %42 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !67
  %46 = bitcast i1 (%"union.std::_Any_data"*)** %43 to i64*
  store i64 %31, i64* %44, align 8, !tbaa !67
  store i64 %45, i64* %46, align 8, !tbaa !67
  %47 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47, align 8, !tbaa !24
  %48 = inttoptr i64 %40 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %49 = invoke noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
          to label %50 unwind label %71

50:                                               ; preds = %30
  %51 = getelementptr inbounds i8, i8* %49, i64 8
  %52 = bitcast i8* %51 to i8**
  store i8* null, i8** %52, align 8, !tbaa !15
  %53 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 0, i32 0
  %54 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %55 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = bitcast i8* %49 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %57, align 8, !tbaa !16
  br label %74

58:                                               ; preds = %50
  %59 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 0
  %60 = bitcast %"union.std::any::_Arg"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #22
  %61 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %5, i64 0, i32 0
  store i8* %49, i8** %61, align 8, !tbaa !15
  invoke void %54(i32 4, %"class.std::any"* nonnull %59, %"union.std::any::_Arg"* nonnull %5)
          to label %62 unwind label %68

62:                                               ; preds = %58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  %63 = getelementptr inbounds i8, i8* %49, i64 40
  %64 = bitcast i8* %63 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !67
  %66 = load i64, i64* %41, align 8, !tbaa !67
  %67 = load i64, i64* %46, align 8, !tbaa !67
  br label %74

68:                                               ; preds = %58
  %69 = landingpad { i8*, i32 }
          catch i8* null
  %70 = extractvalue { i8*, i32 } %69, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #22
  call void @__clang_call_terminate(i8* %70) #25
  unreachable

71:                                               ; preds = %30
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = icmp eq i64 %40, 0
  br i1 %73, label %129, label %123

74:                                               ; preds = %56, %62
  %75 = phi i64 [ %45, %56 ], [ %67, %62 ]
  %76 = phi i64 [ %40, %56 ], [ %66, %62 ]
  %77 = phi i64 [ undef, %56 ], [ %65, %62 ]
  %78 = getelementptr inbounds i8, i8* %49, i64 16
  %79 = getelementptr inbounds i8, i8* %49, i64 32
  %80 = bitcast { i64, i64 }* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %80)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %80, i8* nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %37, i8* nonnull align 8 dereferenceable(16) %78, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %78, i8* nonnull align 8 dereferenceable(16) %80, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %80)
  %81 = bitcast i8* %79 to i64*
  store i64 0, i64* %41, align 8, !tbaa !67
  store i64 %76, i64* %81, align 8, !tbaa !67
  %82 = getelementptr inbounds i8, i8* %49, i64 40
  %83 = bitcast i8* %82 to i64*
  store i64 %77, i64* %46, align 8, !tbaa !67
  store i64 %75, i64* %83, align 8, !tbaa !67
  %84 = bitcast %"class.std::function"* %8 to i8**
  store i8* %49, i8** %84, align 8, !tbaa !67
  %85 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 1
  %86 = bitcast { i64, i64 }* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %86, i8* nonnull align 8 dereferenceable(16) %11, i64 16, i1 false) #22, !tbaa.struct !196
  %87 = bitcast %"class.std::function"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %11, i8* nonnull align 8 dereferenceable(16) %87, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %87, i8* nonnull align 8 dereferenceable(16) %86, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86)
  %88 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 0, i32 1
  %89 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %47 to i64*
  %90 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %88 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !67
  store i64 %91, i64* %89, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation to i64), i64* %90, align 8, !tbaa !67
  %92 = getelementptr inbounds %"class.std::function", %"class.std::function"* %0, i64 0, i32 1
  %93 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %85 to i64*
  %94 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %92 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !67
  store i64 %95, i64* %93, align 8, !tbaa !67
  store i64 ptrtoint (i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)* @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_ to i64), i64* %94, align 8, !tbaa !67
  %96 = icmp eq i64 %91, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %74
  %98 = inttoptr i64 %91 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*
  %99 = getelementptr inbounds %"class.std::function", %"class.std::function"* %8, i64 0, i32 0, i32 0
  %100 = invoke zeroext i1 %98(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %99, i32 3)
          to label %104 unwind label %101

101:                                              ; preds = %97
  %102 = landingpad { i8*, i32 }
          catch i8* null
  %103 = extractvalue { i8*, i32 } %102, 0
  call void @__clang_call_terminate(i8* %103) #25
  unreachable

104:                                              ; preds = %97
  %105 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %34, align 8, !tbaa !24
  %106 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 1, i32 0, i32 0
  %109 = invoke zeroext i1 %105(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %108, i32 3)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { i8*, i32 }
          catch i8* null
  %112 = extractvalue { i8*, i32 } %111, 0
  call void @__clang_call_terminate(i8* %112) #25
  unreachable

113:                                              ; preds = %74, %107, %104
  %114 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  %115 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 0
  invoke void %114(i32 3, %"class.std::any"* nonnull %117, %"union.std::any::_Arg"* null)
          to label %118 unwind label %119

118:                                              ; preds = %116
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %53, align 8, !tbaa !16
  br label %122

119:                                              ; preds = %116
  %120 = landingpad { i8*, i32 }
          catch i8* null
  %121 = extractvalue { i8*, i32 } %120, 0
  call void @__clang_call_terminate(i8* %121) #25
  unreachable

122:                                              ; preds = %113, %118
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  ret %"class.std::function"* %0

123:                                              ; preds = %71
  %124 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 1, i32 0, i32 0
  %125 = invoke zeroext i1 %48(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %124, i32 3)
          to label %129 unwind label %126

126:                                              ; preds = %123
  %127 = landingpad { i8*, i32 }
          catch i8* null
  %128 = extractvalue { i8*, i32 } %127, 0
  call void @__clang_call_terminate(i8* %128) #25
  unreachable

129:                                              ; preds = %123, %71
  %130 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 0, i32 0
  %131 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  %132 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %class.anon.44, %class.anon.44* %9, i64 0, i32 0
  invoke void %131(i32 3, %"class.std::any"* nonnull %134, %"union.std::any::_Arg"* null)
          to label %135 unwind label %136

135:                                              ; preds = %133
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %130, align 8, !tbaa !16
  br label %139

136:                                              ; preds = %133
  %137 = landingpad { i8*, i32 }
          catch i8* null
  %138 = extractvalue { i8*, i32 } %137, 0
  call void @__clang_call_terminate(i8* %138) #25
  unreachable

139:                                              ; preds = %129, %135
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #22
  resume { i8*, i32 } %72
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_internalIPdE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 %0, %"class.std::any"* %1, %"union.std::any::_Arg"* %2) #11 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 1
  switch i32 %0, label %33 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
    i32 4, label %21
  ]

6:                                                ; preds = %4
  %7 = bitcast %"union.std::any::_Arg"* %2 to %"union.std::any::_Storage"**
  store %"union.std::any::_Storage"* %5, %"union.std::any::_Storage"** %7, align 8, !tbaa !15
  br label %33

8:                                                ; preds = %4
  %9 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast (i8** @_ZTIPd to %"class.std::type_info"*), %"class.std::type_info"** %9, align 8, !tbaa !15
  br label %33

10:                                               ; preds = %4
  %11 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %12 = load %"class.std::any"*, %"class.std::any"** %11, align 8, !tbaa !15
  %13 = getelementptr inbounds %"class.std::any", %"class.std::any"* %12, i64 0, i32 1
  %14 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !67
  %16 = bitcast %"union.std::any::_Storage"* %13 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !67
  %17 = bitcast %"class.std::any"* %1 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !16
  %19 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %20 = load i64*, i64** %19, align 8, !tbaa !15
  store i64 %18, i64* %20, align 8, !tbaa !16
  br label %33

21:                                               ; preds = %4
  %22 = bitcast %"union.std::any::_Arg"* %2 to %"class.std::any"**
  %23 = load %"class.std::any"*, %"class.std::any"** %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %"class.std::any", %"class.std::any"* %23, i64 0, i32 1
  %25 = bitcast %"union.std::any::_Storage"* %5 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !67
  %27 = bitcast %"union.std::any::_Storage"* %24 to i64*
  store i64 %26, i64* %27, align 8, !tbaa !67
  %28 = getelementptr inbounds %"class.std::any", %"class.std::any"* %1, i64 0, i32 0
  %29 = bitcast %"class.std::any"* %1 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !16
  %31 = bitcast %"union.std::any::_Arg"* %2 to i64**
  %32 = load i64*, i64** %31, align 8, !tbaa !15
  store i64 %30, i64* %32, align 8, !tbaa !16
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %28, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %4, %21, %10, %8, %6
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E9_M_invokeERKSt9_Any_dataS7_(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  br label %3

3:                                                ; preds = %2
  %4 = bitcast %"union.std::_Any_data"* %0 to %class.anon.44**
  %5 = load %class.anon.44*, %class.anon.44** %4, align 8, !tbaa !67
  %6 = tail call zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEENKUlRKS8_E_clESF_(%class.anon.44* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1)
  ret i1 %6
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvS5_PT_S5_S5_St8functionIFbvEEEUlS7_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #0 comdat align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %11 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %9, i64* %10, align 8, !tbaa !67
  br label %13

11:                                               ; preds = %4
  %12 = tail call zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2)
  br label %13

13:                                               ; preds = %11, %7, %5
  ret i1 false
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local zeroext i1 @_ZZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEENKUlRKS8_E_clESF_(%class.anon.44* %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"union.std::any::_Arg", align 8
  %4 = alloca %"union.std::any::_Arg", align 8
  %5 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  br label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.anon.44, %class.anon.44* %0, i64 0, i32 0
  %8 = getelementptr inbounds %class.anon.44, %class.anon.44* %0, i64 0, i32 0, i32 0
  %9 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %8, align 8, !tbaa !16
  %10 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %9, @_ZNSt3any17_Manager_internalIPdE9_S_manageENS_3_OpEPKS_PNS_4_ArgE
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %9, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = bitcast %"union.std::any::_Arg"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #22
  invoke void %9(i32 1, %"class.std::any"* nonnull %7, %"union.std::any::_Arg"* nonnull %3)
          to label %15 unwind label %18

15:                                               ; preds = %13
  %16 = bitcast %"union.std::any::_Arg"* %3 to %"class.std::type_info"**
  %17 = load %"class.std::type_info"*, %"class.std::type_info"** %16, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #22
  br label %21

18:                                               ; preds = %13
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #22
  call void @__clang_call_terminate(i8* %20) #25
  unreachable

21:                                               ; preds = %15, %11
  %22 = phi %"class.std::type_info"* [ %17, %15 ], [ bitcast (i8** @_ZTIv to %"class.std::type_info"*), %11 ]
  %23 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %22, i64 0, i32 1
  %24 = load i8*, i8** %23, align 8, !tbaa !197
  %25 = load i8*, i8** getelementptr inbounds (i8*, i8** @_ZTIPd, i64 1), align 8, !tbaa !197
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8, i8* %24, align 1, !tbaa !15
  %29 = icmp eq i8 %28, 42
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = call i32 @strcmp(i8* nonnull %24, i8* nonnull dereferenceable(1) %25) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %21, %6
  %34 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #22
  %35 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %8, align 8, !tbaa !16
  invoke void %35(i32 0, %"class.std::any"* nonnull %7, %"union.std::any::_Arg"* nonnull %4)
          to label %39 unwind label %36

36:                                               ; preds = %33
  %37 = landingpad { i8*, i32 }
          catch i8* null
  %38 = extractvalue { i8*, i32 } %37, 0
  call void @__clang_call_terminate(i8* %38) #25
  unreachable

39:                                               ; preds = %33
  %40 = bitcast %"union.std::any::_Arg"* %4 to double***
  %41 = load double**, double*** %40, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #22
  %42 = icmp eq double** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %30, %27
  call void @_ZSt20__throw_bad_any_castv() #23
  unreachable

44:                                               ; preds = %39
  %45 = load double*, double** %41, align 8, !tbaa !67
  %46 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %46) #22
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(%"class.std::__cxx11::basic_istringstream"* nonnull %5, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1, i32 8)
  %47 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to %"class.std::basic_istream"*
  %48 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractIdEERSiRT_(%"class.std::basic_istream"* nonnull %47, double* nonnull align 8 dereferenceable(8) %45)
          to label %49 unwind label %102

49:                                               ; preds = %44
  %50 = bitcast %"class.std::basic_istream"* %48 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !34
  %52 = getelementptr i8, i8* %51, i64 -24
  %53 = bitcast i8* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %"class.std::basic_istream"* %48 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  %57 = getelementptr inbounds i8, i8* %56, i64 32
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* %58, align 8, !tbaa !199
  %60 = getelementptr inbounds %class.anon.44, %class.anon.44* %0, i64 0, i32 1, i32 0, i32 1
  %61 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %60, align 8, !tbaa !24
  %62 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %64 unwind label %102

64:                                               ; preds = %63
  unreachable

65:                                               ; preds = %49
  %66 = getelementptr inbounds %class.anon.44, %class.anon.44* %0, i64 0, i32 1, i32 1
  %67 = load i1 (%"union.std::_Any_data"*)*, i1 (%"union.std::_Any_data"*)** %66, align 8, !tbaa !100
  %68 = getelementptr inbounds %class.anon.44, %class.anon.44* %0, i64 0, i32 1, i32 0, i32 0
  %69 = invoke zeroext i1 %67(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %68)
          to label %70 unwind label %102

70:                                               ; preds = %65
  %71 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %72 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %71, i64* %72, align 8, !tbaa !34
  %73 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %74 = inttoptr i64 %71 to i8*
  %75 = getelementptr i8, i8* %74, i64 -24
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* %46, i64 %77
  %79 = bitcast i8* %78 to i64*
  store i64 %73, i64* %79, align 8, !tbaa !34
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %80, align 8, !tbaa !34
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8, !tbaa !20
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %84 = bitcast %union.anon* %83 to i8*
  %85 = icmp eq i8* %82, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %70
  call void @_ZdlPv(i8* %82) #22
  br label %87

87:                                               ; preds = %70, %86
  %88 = and i32 %59, 5
  %89 = icmp eq i32 %88, 0
  %90 = and i1 %89, %69
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %80, align 8, !tbaa !34
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %91) #22
  %92 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %92, i64* %72, align 8, !tbaa !34
  %93 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %94 = inttoptr i64 %92 to i8*
  %95 = getelementptr i8, i8* %94, i64 -24
  %96 = bitcast i8* %95 to i64*
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i8, i8* %46, i64 %97
  %99 = bitcast i8* %98 to i64*
  store i64 %93, i64* %99, align 8, !tbaa !34
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %100, align 8, !tbaa !205
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %101) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  ret i1 %90

102:                                              ; preds = %65, %63, %44
  %103 = landingpad { i8*, i32 }
          cleanup
  %104 = load i64, i64* bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE to i64*), align 8
  %105 = bitcast %"class.std::__cxx11::basic_istringstream"* %5 to i64*
  store i64 %104, i64* %105, align 8, !tbaa !34
  %106 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i64*), align 8
  %107 = inttoptr i64 %104 to i8*
  %108 = getelementptr i8, i8* %107, i64 -24
  %109 = bitcast i8* %108 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i8, i8* %46, i64 %110
  %112 = bitcast i8* %111 to i64*
  store i64 %106, i64* %112, align 8, !tbaa !34
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %113, align 8, !tbaa !34
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8, !tbaa !20
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 2, i32 2
  %117 = bitcast %union.anon* %116 to i8*
  %118 = icmp eq i8* %115, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %102
  call void @_ZdlPv(i8* %115) #22
  br label %120

120:                                              ; preds = %102, %119
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %113, align 8, !tbaa !34
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull %121) #22
  %122 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i64*), align 8
  store i64 %122, i64* %105, align 8, !tbaa !34
  %123 = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i64*), align 8
  %124 = inttoptr i64 %122 to i8*
  %125 = getelementptr i8, i8* %124, i64 -24
  %126 = bitcast i8* %125 to i64*
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i8, i8* %46, i64 %127
  %129 = bitcast i8* %128 to i64*
  store i64 %123, i64* %129, align 8, !tbaa !34
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 0, i32 1
  store i64 0, i64* %130, align 8, !tbaa !205
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_istringstream", %"class.std::__cxx11::basic_istringstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull %131) #22
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %46) #22
  resume { i8*, i32 } %103
}

declare dso_local nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractIdEERSiRT_(%"class.std::basic_istream"*, double* nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_SA_SA_St8functionIFbvEEEUlRKSA_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"union.std::any::_Arg", align 8
  br label %5

5:                                                ; preds = %3
  switch i32 %2, label %97 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %12
    i32 3, label %72
  ]

6:                                                ; preds = %5
  %7 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @_ZTIZN8partdiff9askparams15argument_parser24add_argument_descriptionIdEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_S8_S8_St8functionIFbvEEEUlRKS8_E_ to %"class.std::type_info"*), %"class.std::type_info"** %7, align 8, !tbaa !67
  br label %97

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  store i64 %10, i64* %11, align 8, !tbaa !67
  br label %97

12:                                               ; preds = %5
  %13 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %14 = bitcast %"union.std::_Any_data"* %1 to %class.anon.44**
  %15 = load %class.anon.44*, %class.anon.44** %14, align 8, !tbaa !67
  %16 = bitcast i8* %13 to %"class.std::any"*
  %17 = getelementptr inbounds i8, i8* %13, i64 8
  %18 = bitcast i8* %17 to i8**
  store i8* null, i8** %18, align 8, !tbaa !15
  %19 = getelementptr inbounds %class.anon.44, %class.anon.44* %15, i64 0, i32 0, i32 0
  %20 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %19, align 8, !tbaa !16
  %21 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %23, align 8, !tbaa !16
  br label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds %class.anon.44, %class.anon.44* %15, i64 0, i32 0
  %26 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #22
  %27 = getelementptr inbounds %"union.std::any::_Arg", %"union.std::any::_Arg"* %4, i64 0, i32 0
  store i8* %13, i8** %27, align 8, !tbaa !15
  invoke void %20(i32 2, %"class.std::any"* nonnull %25, %"union.std::any::_Arg"* nonnull %4)
          to label %28 unwind label %66

28:                                               ; preds = %24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #22
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds i8, i8* %13, i64 32
  %31 = bitcast i8* %30 to i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)**
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %32 = getelementptr inbounds %class.anon.44, %class.anon.44* %15, i64 0, i32 1, i32 0, i32 1
  %33 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32, align 8, !tbaa !24
  %34 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %13, i64 16
  %37 = bitcast i8* %36 to %"union.std::_Any_data"*
  %38 = getelementptr inbounds %class.anon.44, %class.anon.44* %15, i64 0, i32 1, i32 0, i32 0
  %39 = invoke zeroext i1 %33(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %38, i32 2)
          to label %40 unwind label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %class.anon.44, %class.anon.44* %15, i64 0, i32 1, i32 1
  %42 = bitcast i1 (%"union.std::_Any_data"*)** %41 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !100
  %44 = getelementptr inbounds i8, i8* %13, i64 40
  %45 = bitcast i8* %44 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !100
  %46 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %32 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !24
  %48 = bitcast i8* %30 to i64*
  store i64 %47, i64* %48, align 8, !tbaa !24
  br label %70

49:                                               ; preds = %35
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %31, align 8, !tbaa !24
  %52 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = invoke zeroext i1 %51(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %37, i32 3)
          to label %58 unwind label %55

55:                                               ; preds = %53
  %56 = landingpad { i8*, i32 }
          catch i8* null
  %57 = extractvalue { i8*, i32 } %56, 0
  call void @__clang_call_terminate(i8* %57) #25
  unreachable

58:                                               ; preds = %53, %49
  %59 = bitcast i8* %13 to void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)**
  %60 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %59, align 8, !tbaa !16
  %61 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  invoke void %60(i32 3, %"class.std::any"* nonnull %16, %"union.std::any::_Arg"* null)
          to label %68 unwind label %63

63:                                               ; preds = %62
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #25
  unreachable

66:                                               ; preds = %24
  %67 = landingpad { i8*, i32 }
          cleanup
  br label %68

68:                                               ; preds = %62, %58, %66
  %69 = phi { i8*, i32 } [ %67, %66 ], [ %50, %58 ], [ %50, %62 ]
  call void @_ZdlPv(i8* nonnull %13) #28
  resume { i8*, i32 } %69

70:                                               ; preds = %40, %29
  %71 = bitcast %"union.std::_Any_data"* %0 to i8**
  store i8* %13, i8** %71, align 8, !tbaa !67
  br label %97

72:                                               ; preds = %5
  %73 = bitcast %"union.std::_Any_data"* %0 to %class.anon.44**
  %74 = load %class.anon.44*, %class.anon.44** %73, align 8, !tbaa !67
  %75 = icmp eq %class.anon.44* %74, null
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %class.anon.44, %class.anon.44* %74, i64 0, i32 1, i32 0, i32 1
  %78 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %77, align 8, !tbaa !24
  %79 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %class.anon.44, %class.anon.44* %74, i64 0, i32 1, i32 0, i32 0
  %82 = invoke zeroext i1 %78(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %81, i32 3)
          to label %86 unwind label %83

83:                                               ; preds = %80
  %84 = landingpad { i8*, i32 }
          catch i8* null
  %85 = extractvalue { i8*, i32 } %84, 0
  tail call void @__clang_call_terminate(i8* %85) #25
  unreachable

86:                                               ; preds = %80, %76
  %87 = getelementptr inbounds %class.anon.44, %class.anon.44* %74, i64 0, i32 0, i32 0
  %88 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %87, align 8, !tbaa !16
  %89 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %class.anon.44, %class.anon.44* %74, i64 0, i32 0
  invoke void %88(i32 3, %"class.std::any"* nonnull %91, %"union.std::any::_Arg"* null)
          to label %95 unwind label %92

92:                                               ; preds = %90
  %93 = landingpad { i8*, i32 }
          catch i8* null
  %94 = extractvalue { i8*, i32 } %93, 0
  tail call void @__clang_call_terminate(i8* %94) #25
  unreachable

95:                                               ; preds = %90, %86
  %96 = bitcast %class.anon.44* %74 to i8*
  tail call void @_ZdlPv(i8* %96) #28
  br label %97

97:                                               ; preds = %95, %72, %5, %70, %8, %6
  ret i1 false
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture nonnull readonly align 8 dereferenceable(16) %0) #19 align 2 {
  br label %2

2:                                                ; preds = %1
  %3 = bitcast %"union.std::_Any_data"* %0 to double**
  %4 = load double*, double** %3, align 8, !tbaa !223
  %5 = load double, double* %4, align 8, !tbaa !63
  %6 = fcmp oge double %5, 0x3BC79CA10C924223
  %7 = fcmp ole double %5, 1.000000e-04
  %8 = and i1 %6, %7
  ret i1 %8
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(%"union.std::_Any_data"* nocapture nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #20 align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %13 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7" to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %8, align 8, !tbaa !67
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  %12 = load i64, i64* %10, align 8, !tbaa !67
  store i64 %12, i64* %11, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %4, %9, %7, %5
  ret i1 false
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* nocapture nonnull readonly align 8 dereferenceable(16) %0) #19 align 2 {
  br label %2

2:                                                ; preds = %1
  %3 = bitcast %"union.std::_Any_data"* %0 to i64**
  %4 = load i64*, i64** %3, align 8, !tbaa !225
  %5 = load i64, i64* %4, align 8, !tbaa !68
  %6 = add i64 %5, -1
  %7 = icmp ult i64 %6, 200000
  ret i1 %7
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(%"union.std::_Any_data"* nocapture nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %1, i32 %2) #20 align 2 {
  br label %4

4:                                                ; preds = %3
  switch i32 %2, label %13 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = bitcast %"union.std::_Any_data"* %0 to %"class.std::type_info"**
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8" to %"class.std::type_info"*), %"class.std::type_info"** %6, align 8, !tbaa !67
  br label %13

7:                                                ; preds = %4
  %8 = bitcast %"union.std::_Any_data"* %0 to %"union.std::_Any_data"**
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %8, align 8, !tbaa !67
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %1, i64 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"union.std::_Any_data", %"union.std::_Any_data"* %0, i64 0, i32 0, i32 0, i32 0
  %12 = load i64, i64* %10, align 8, !tbaa !67
  store i64 %12, i64* %11, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %4, %9, %7, %5
  ret i1 false
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  br label %3

3:                                                ; preds = %2
  %4 = icmp eq %"class.std::__cxx11::basic_string"* %0, %1
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !20
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %11 = bitcast %union.anon* %10 to i8*
  %12 = icmp eq i8* %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !15
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi i64 [ %15, %13 ], [ 15, %5 ]
  %18 = icmp ugt i64 %7, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = icmp slt i64 %7, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0)) #23
  unreachable

22:                                               ; preds = %19
  %23 = shl i64 %17, 1
  %24 = icmp ult i64 %7, %23
  %25 = icmp ult i64 %23, 9223372036854775807
  %26 = select i1 %25, i64 %23, i64 9223372036854775807
  %27 = select i1 %24, i64 %26, i64 %7
  %28 = add nuw i64 %27, 1
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

31:                                               ; preds = %22
  %32 = tail call noalias nonnull i8* @_Znwm(i64 %28) #24
  %33 = load i8*, i8** %8, align 8, !tbaa !20
  %34 = icmp eq i8* %33, %11
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @_ZdlPv(i8* %33) #22
  br label %36

36:                                               ; preds = %35, %31
  store i8* %32, i8** %8, align 8, !tbaa !20
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %27, i64* %37, align 8, !tbaa !15
  br label %42

38:                                               ; preds = %16
  %39 = icmp eq i64 %7, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %41, align 8, !tbaa !23
  store i8 0, i8* %9, align 1, !tbaa !15
  br label %54

42:                                               ; preds = %36, %38
  %43 = phi i8* [ %32, %36 ], [ %9, %38 ]
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !20
  %46 = icmp eq i64 %7, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i8, i8* %45, align 1, !tbaa !15
  store i8 %48, i8* %43, align 1, !tbaa !15
  br label %50

49:                                               ; preds = %42
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %45, i64 %7, i1 false) #22
  br label %50

50:                                               ; preds = %47, %49
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %7, i64* %51, align 8, !tbaa !23
  %52 = load i8*, i8** %8, align 8, !tbaa !20
  %53 = getelementptr inbounds i8, i8* %52, i64 %7
  store i8 0, i8* %53, align 1, !tbaa !15
  br label %54

54:                                               ; preds = %50, %40, %3
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector.3"* %0, %"struct.partdiff::askparams::argument_parser::argument_description"* %1, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %2) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.std::vector.3", %"class.std::vector.3"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %6 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !169
  %8 = bitcast %"class.std::vector.3"* %0 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !10
  %10 = sub i64 %7, %9
  %11 = sdiv exact i64 %10, 144
  %12 = icmp eq i64 %10, 9223372036854775728
  %13 = inttoptr i64 %9 to %"struct.partdiff::askparams::argument_parser::argument_description"*
  %14 = inttoptr i64 %7 to %"struct.partdiff::askparams::argument_parser::argument_description"*
  br i1 %12, label %15, label %16

15:                                               ; preds = %4
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0)) #23
  unreachable

16:                                               ; preds = %4
  %17 = ptrtoint %"struct.partdiff::askparams::argument_parser::argument_description"* %1 to i64
  %18 = icmp eq i64 %10, 0
  %19 = select i1 %18, i64 1, i64 %11
  %20 = add nsw i64 %19, %11
  %21 = icmp ult i64 %20, %11
  %22 = icmp ugt i64 %20, 64051194700380387
  %23 = or i1 %21, %22
  %24 = select i1 %23, i64 64051194700380387, i64 %20
  %25 = sub i64 %17, %9
  %26 = sdiv exact i64 %25, 144
  %27 = icmp eq i64 %24, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %16
  %29 = mul nuw nsw i64 %24, 144
  %30 = tail call noalias nonnull i8* @_Znwm(i64 %29) #24
  %31 = bitcast i8* %30 to %"struct.partdiff::askparams::argument_parser::argument_description"*
  br label %32

32:                                               ; preds = %16, %28
  %33 = phi %"struct.partdiff::askparams::argument_parser::argument_description"* [ %31, %28 ], [ null, %16 ]
  %34 = bitcast %"class.std::vector.3"* %0 to %"class.std::allocator.5"*
  %35 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %33, i64 %26
  invoke void @_ZN8partdiff9askparams15argument_parser20argument_descriptionC2ERKS2_(%"struct.partdiff::askparams::argument_parser::argument_description"* %35, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %2)
          to label %36 unwind label %65

36:                                               ; preds = %32
  %37 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %13, %1
  br i1 %37, label %45, label %38

38:                                               ; preds = %36, %38
  %39 = phi %"struct.partdiff::askparams::argument_parser::argument_description"* [ %43, %38 ], [ %33, %36 ]
  %40 = phi %"struct.partdiff::askparams::argument_parser::argument_description"* [ %42, %38 ], [ %13, %36 ]
  %41 = tail call %"struct.partdiff::askparams::argument_parser::argument_description"* @_ZSt12construct_atIN8partdiff9askparams15argument_parser20argument_descriptionEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_(%"struct.partdiff::askparams::argument_parser::argument_description"* %39, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %40) #22
  tail call void @_ZNSt16allocator_traitsISaIN8partdiff9askparams15argument_parser20argument_descriptionEEE7destroyIS3_EEvRS4_PT_(%"class.std::allocator.5"* nonnull align 1 dereferenceable(1) %34, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %40) #22
  %42 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %40, i64 1
  %43 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %39, i64 1
  %44 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %42, %1
  br i1 %44, label %45, label %38

45:                                               ; preds = %38, %36
  %46 = phi %"struct.partdiff::askparams::argument_parser::argument_description"* [ %33, %36 ], [ %43, %38 ]
  %47 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %46, i64 1
  %48 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %14, %1
  br i1 %48, label %56, label %49

49:                                               ; preds = %45, %49
  %50 = phi %"struct.partdiff::askparams::argument_parser::argument_description"* [ %54, %49 ], [ %47, %45 ]
  %51 = phi %"struct.partdiff::askparams::argument_parser::argument_description"* [ %53, %49 ], [ %1, %45 ]
  %52 = tail call %"struct.partdiff::askparams::argument_parser::argument_description"* @_ZSt12construct_atIN8partdiff9askparams15argument_parser20argument_descriptionEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_(%"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %50, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %51) #22
  tail call void @_ZNSt16allocator_traitsISaIN8partdiff9askparams15argument_parser20argument_descriptionEEE7destroyIS3_EEvRS4_PT_(%"class.std::allocator.5"* nonnull align 1 dereferenceable(1) %34, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull %51) #22
  %53 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %51, i64 1
  %54 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %50, i64 1
  %55 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %53, %14
  br i1 %55, label %56, label %49

56:                                               ; preds = %49, %45
  %57 = phi %"struct.partdiff::askparams::argument_parser::argument_description"* [ %47, %45 ], [ %54, %49 ]
  %58 = icmp eq i64 %9, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = inttoptr i64 %9 to i8*
  tail call void @_ZdlPv(i8* nonnull %60) #22
  br label %61

61:                                               ; preds = %56, %59
  %62 = getelementptr %"class.std::vector.3", %"class.std::vector.3"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %63 = getelementptr inbounds %"class.std::vector.3", %"class.std::vector.3"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  store %"struct.partdiff::askparams::argument_parser::argument_description"* %33, %"struct.partdiff::askparams::argument_parser::argument_description"** %62, align 8, !tbaa !10
  store %"struct.partdiff::askparams::argument_parser::argument_description"* %57, %"struct.partdiff::askparams::argument_parser::argument_description"** %5, align 8, !tbaa !169
  %64 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %33, i64 %24
  store %"struct.partdiff::askparams::argument_parser::argument_description"* %64, %"struct.partdiff::askparams::argument_parser::argument_description"** %63, align 8, !tbaa !170
  ret void

65:                                               ; preds = %32
  %66 = landingpad { i8*, i32 }
          catch i8* null
  %67 = extractvalue { i8*, i32 } %66, 0
  %68 = tail call i8* @__cxa_begin_catch(i8* %67) #22
  %69 = icmp eq %"struct.partdiff::askparams::argument_parser::argument_description"* %33, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  tail call void @_ZNSt16allocator_traitsISaIN8partdiff9askparams15argument_parser20argument_descriptionEEE7destroyIS3_EEvRS4_PT_(%"class.std::allocator.5"* nonnull align 1 dereferenceable(1) %34, %"struct.partdiff::askparams::argument_parser::argument_description"* %35) #22
  br label %75

71:                                               ; preds = %75
  %72 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %76 unwind label %77

73:                                               ; preds = %65
  %74 = bitcast %"struct.partdiff::askparams::argument_parser::argument_description"* %33 to i8*
  tail call void @_ZdlPv(i8* nonnull %74) #22
  br label %75

75:                                               ; preds = %73, %70
  invoke void @__cxa_rethrow() #23
          to label %80 unwind label %71

76:                                               ; preds = %71
  resume { i8*, i32 } %72

77:                                               ; preds = %71
  %78 = landingpad { i8*, i32 }
          catch i8* null
  %79 = extractvalue { i8*, i32 } %78, 0
  tail call void @__clang_call_terminate(i8* %79) #25
  unreachable

80:                                               ; preds = %75
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN8partdiff9askparams15argument_parser20argument_descriptionEEE7destroyIS3_EEvRS4_PT_(%"class.std::allocator.5"* nonnull align 1 dereferenceable(1) %0, %"struct.partdiff::askparams::argument_parser::argument_description"* %1) local_unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  br label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 4, i32 0, i32 1
  %5 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %4, align 8, !tbaa !24
  %6 = icmp eq i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 4, i32 0, i32 0
  %9 = invoke zeroext i1 %5(%"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %8, %"union.std::_Any_data"* nonnull align 8 dereferenceable(16) %8, i32 3)
          to label %13 unwind label %10

10:                                               ; preds = %7
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  tail call void @__clang_call_terminate(i8* %12) #25
  unreachable

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 3, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !20
  %16 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 3, i32 2
  %17 = bitcast %union.anon* %16 to i8*
  %18 = icmp eq i8* %15, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @_ZdlPv(i8* %15) #22
  br label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 2, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !tbaa !20
  %23 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 2, i32 2
  %24 = bitcast %union.anon* %23 to i8*
  %25 = icmp eq i8* %22, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @_ZdlPv(i8* %22) #22
  br label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 1, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8, !tbaa !20
  %30 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 1, i32 2
  %31 = bitcast %union.anon* %30 to i8*
  %32 = icmp eq i8* %29, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @_ZdlPv(i8* %29) #22
  br label %34

34:                                               ; preds = %33, %27
  %35 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 0, i32 0
  %36 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  %37 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 0
  invoke void %36(i32 3, %"class.std::any"* nonnull %39, %"union.std::any::_Arg"* null)
          to label %40 unwind label %41

40:                                               ; preds = %38
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %35, align 8, !tbaa !16
  br label %44

41:                                               ; preds = %38
  %42 = landingpad { i8*, i32 }
          catch i8* null
  %43 = extractvalue { i8*, i32 } %42, 0
  tail call void @__clang_call_terminate(i8* %43) #25
  unreachable

44:                                               ; preds = %34, %40
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local %"struct.partdiff::askparams::argument_parser::argument_description"* @_ZSt12construct_atIN8partdiff9askparams15argument_parser20argument_descriptionEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_(%"struct.partdiff::askparams::argument_parser::argument_description"* %0, %"struct.partdiff::askparams::argument_parser::argument_description"* nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #11 comdat personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"union.std::any::_Arg", align 8
  br label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 0, i32 1, i32 0
  store i8* null, i8** %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 0, i32 0
  %8 = load void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)*, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %7, align 8, !tbaa !16
  %9 = icmp eq void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 0, i32 0
  store void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)* null, void (i32, %"class.std::any"*, %"union.std::any::_Arg"*)** %11, align 8, !tbaa !16
  br label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 0
  %14 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 0
  %15 = bitcast %"union.std::any::_Arg"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #22
  %16 = bitcast %"union.std::any::_Arg"* %4 to %"class.std::any"**
  store %"class.std::any"* %13, %"class.std::any"** %16, align 8, !tbaa !15
  invoke void %8(i32 4, %"class.std::any"* nonnull %14, %"union.std::any::_Arg"* nonnull %4)
          to label %17 unwind label %18

17:                                               ; preds = %12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #22
  br label %21

18:                                               ; preds = %12
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #22
  call void @__clang_call_terminate(i8* %20) #25
  unreachable

21:                                               ; preds = %17, %10
  %22 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 1
  %23 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 1
  %24 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 1, i32 2
  %25 = bitcast %"class.std::__cxx11::basic_string"* %22 to %union.anon**
  store %union.anon* %24, %union.anon** %25, align 8, !tbaa !18
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 0, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8, !tbaa !20
  %28 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 1, i32 2
  %29 = bitcast %union.anon* %28 to i8*
  %30 = icmp eq i8* %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = bitcast %union.anon* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(16) %32, i8* nonnull align 8 dereferenceable(16) %27, i64 16, i1 false) #22
  br label %38

33:                                               ; preds = %21
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %22, i64 0, i32 0, i32 0
  store i8* %27, i8** %34, align 8, !tbaa !20
  %35 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 1, i32 2, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !15
  %37 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 1, i32 2, i32 0
  store i64 %36, i64* %37, align 8, !tbaa !15
  br label %38

38:                                               ; preds = %33, %31
  %39 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 1, i32 1
  %40 = load i64, i64* %39, align 8, !tbaa !23
  %41 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 1, i32 1
  store i64 %40, i64* %41, align 8, !tbaa !23
  %42 = bitcast %"class.std::__cxx11::basic_string"* %23 to %union.anon**
  store %union.anon* %28, %union.anon** %42, align 8, !tbaa !20
  store i64 0, i64* %39, align 8, !tbaa !23
  store i8 0, i8* %29, align 8, !tbaa !15
  %43 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 2
  %44 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 2
  %45 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 2, i32 2
  %46 = bitcast %"class.std::__cxx11::basic_string"* %43 to %union.anon**
  store %union.anon* %45, %union.anon** %46, align 8, !tbaa !18
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %44, i64 0, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8, !tbaa !20
  %49 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 2, i32 2
  %50 = bitcast %union.anon* %49 to i8*
  %51 = icmp eq i8* %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = bitcast %union.anon* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(16) %53, i8* nonnull align 8 dereferenceable(16) %48, i64 16, i1 false) #22
  br label %59

54:                                               ; preds = %38
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %43, i64 0, i32 0, i32 0
  store i8* %48, i8** %55, align 8, !tbaa !20
  %56 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 2, i32 2, i32 0
  %57 = load i64, i64* %56, align 8, !tbaa !15
  %58 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 2, i32 2, i32 0
  store i64 %57, i64* %58, align 8, !tbaa !15
  br label %59

59:                                               ; preds = %54, %52
  %60 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 2, i32 1
  %61 = load i64, i64* %60, align 8, !tbaa !23
  %62 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 2, i32 1
  store i64 %61, i64* %62, align 8, !tbaa !23
  %63 = bitcast %"class.std::__cxx11::basic_string"* %44 to %union.anon**
  store %union.anon* %49, %union.anon** %63, align 8, !tbaa !20
  store i64 0, i64* %60, align 8, !tbaa !23
  store i8 0, i8* %50, align 8, !tbaa !15
  %64 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 3
  %65 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 3
  %66 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 3, i32 2
  %67 = bitcast %"class.std::__cxx11::basic_string"* %64 to %union.anon**
  store %union.anon* %66, %union.anon** %67, align 8, !tbaa !18
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %65, i64 0, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8, !tbaa !20
  %70 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 3, i32 2
  %71 = bitcast %union.anon* %70 to i8*
  %72 = icmp eq i8* %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = bitcast %union.anon* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(16) %74, i8* nonnull align 8 dereferenceable(16) %69, i64 16, i1 false) #22
  br label %80

75:                                               ; preds = %59
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %64, i64 0, i32 0, i32 0
  store i8* %69, i8** %76, align 8, !tbaa !20
  %77 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 3, i32 2, i32 0
  %78 = load i64, i64* %77, align 8, !tbaa !15
  %79 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 3, i32 2, i32 0
  store i64 %78, i64* %79, align 8, !tbaa !15
  br label %80

80:                                               ; preds = %73, %75
  %81 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 3, i32 1
  %82 = load i64, i64* %81, align 8, !tbaa !23
  %83 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 3, i32 1
  store i64 %82, i64* %83, align 8, !tbaa !23
  %84 = bitcast %"class.std::__cxx11::basic_string"* %65 to %union.anon**
  store %union.anon* %70, %union.anon** %84, align 8, !tbaa !20
  store i64 0, i64* %81, align 8, !tbaa !23
  store i8 0, i8* %71, align 8, !tbaa !15
  %85 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 4
  %86 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 4
  %87 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 4, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %87, align 8, !tbaa !24
  %88 = bitcast { i64, i64 }* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %88)
  %89 = bitcast %"class.std::function"* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %88, i8* nonnull align 8 dereferenceable(16) %89, i64 16, i1 false) #22, !tbaa.struct !196
  %90 = bitcast %"class.std::function"* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %89, i8* nonnull align 8 dereferenceable(16) %90, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %90, i8* nonnull align 8 dereferenceable(16) %88, i64 16, i1 false) #22, !tbaa.struct !196
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %88)
  %91 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 4, i32 0, i32 1
  %92 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %91 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !67
  %94 = bitcast i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %87 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !67
  store i64 %95, i64* %92, align 8, !tbaa !67
  store i64 %93, i64* %94, align 8, !tbaa !67
  %96 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %1, i64 0, i32 4, i32 1
  %97 = getelementptr inbounds %"struct.partdiff::askparams::argument_parser::argument_description", %"struct.partdiff::askparams::argument_parser::argument_description"* %0, i64 0, i32 4, i32 1
  %98 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %96 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !67
  %100 = bitcast i1 (%"union.std::_Any_data"*, %"class.std::__cxx11::basic_string"*)** %97 to i64*
  %101 = load i64, i64* %100, align 8, !tbaa !67
  store i64 %101, i64* %98, align 8, !tbaa !67
  store i64 %99, i64* %100, align 8, !tbaa !67
  ret %"struct.partdiff::askparams::argument_parser::argument_description"* %0
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_askparams.cpp() #0 section ".text.startup" {
  br label %1

1:                                                ; preds = %0
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %2 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #22
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nofree allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nounwind willreturn writeonly }
attributes #17 = { inlinehint noreturn uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+64bit,+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt,-adx,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clflushopt,-clwb,-clzero,-enqcmd,-fma4,-gfni,-lwp,-movdir64b,-movdiri,-mwaitx,-pconfig,-pku,-prefetchwt1,-prfchw,-ptwrite,-rdpid,-rdseed,-rtm,-serialize,-sgx,-sha,-shstk,-sse4a,-tbm,-tsxldtrk,-vaes,-vpclmulqdq,-waitpkg,-wbnoinvd,-xop,-xsavec,-xsaves" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind readonly }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind readnone }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }

!llvm.linker.options = !{}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i64 16, !"_ZTSSt12bad_any_cast"}
!1 = !{i64 32, !"_ZTSMSt12bad_any_castKDoFPKcvE.virtual"}
!2 = !{i64 16, !"_ZTSSt8bad_cast"}
!3 = !{i64 32, !"_ZTSMSt8bad_castKDoFPKcvE.virtual"}
!4 = !{i64 16, !"_ZTSSt9exception"}
!5 = !{i64 32, !"_ZTSMSt9exceptionKDoFPKcvE.virtual"}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 1, !"ThinLTO", i32 0}
!8 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!9 = !{!"clang version 11.0.1"}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"any pointer", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!13, !13, i64 0}
!16 = !{!17, !12, i64 0}
!17 = !{!"_ZTSSt3any", !12, i64 0, !13, i64 8}
!18 = !{!19, !12, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !22, i64 8, !13, i64 16}
!22 = !{!"long", !13, i64 0}
!23 = !{!21, !22, i64 8}
!24 = !{!25, !12, i64 16}
!25 = !{!"_ZTSSt14_Function_base", !13, i64 0, !12, i64 16}
!26 = !{!27, !12, i64 24}
!27 = !{!"_ZTSSt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !12, i64 24}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm: argument 0"}
!30 = distinct !{!30, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm"}
!31 = !{!32, !13, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !12, i64 16, !33, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !13, i64 57, !13, i64 313, !13, i64 569}
!33 = !{!"bool", !13, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !14, i64 0}
!36 = !{!37, !12, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !12, i64 216, !13, i64 224, !33, i64 225, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm: argument 0"}
!40 = distinct !{!40, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZZNK8partdiff9askparams15argument_parser5usageEvENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!43 = distinct !{!43, !"_ZZNK8partdiff9askparams15argument_parser5usageEvENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!44 = !{!45, !42}
!45 = distinct !{!45, !46, !"_ZN3fmt2v76formatIA10_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcLi0EEENS4_IT1_S5_IS9_ESaIS9_EEERKT_DpOT0_: argument 0"}
!46 = distinct !{!46, !"_ZN3fmt2v76formatIA10_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcLi0EEENS4_IT1_S5_IS9_ESaIS9_EEERKT_DpOT0_"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm: argument 0"}
!49 = distinct !{!49, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN3fmt2v717make_args_checkedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EA6_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESD_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSJ_: argument 0"}
!52 = distinct !{!52, !"_ZN3fmt2v717make_args_checkedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EA6_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESD_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSJ_"}
!53 = !{i64 0, i64 4, !54, i64 0, i64 4, !54, i64 0, i64 8, !56, i64 0, i64 8, !56, i64 0, i64 16, !58, i64 0, i64 16, !58, i64 0, i64 1, !60, i64 0, i64 1, !15, i64 0, i64 4, !61, i64 0, i64 8, !63, i64 0, i64 16, !65, i64 0, i64 8, !67, i64 0, i64 8, !67, i64 8, i64 8, !68, i64 0, i64 8, !67, i64 8, i64 8, !67, i64 0, i64 8, !67, i64 8, i64 8, !68}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !13, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"long long", !13, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"__int128", !13, i64 0}
!60 = !{!33, !33, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !13, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"double", !13, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"long double", !13, i64 0}
!67 = !{!12, !12, i64 0}
!68 = !{!22, !22, i64 0}
!69 = !{!70, !12, i64 8}
!70 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!71 = !{!70, !12, i64 0}
!72 = !{!73, !77, i64 32}
!73 = !{!"_ZTSN8partdiff9askparams15argument_parserE", !74, i64 0, !21, i64 56, !78, i64 88, !79, i64 112}
!74 = !{!"_ZTSN8partdiff9askparams19calculation_optionsE", !22, i64 0, !22, i64 8, !75, i64 16, !76, i64 24, !77, i64 32, !22, i64 40, !64, i64 48}
!75 = !{!"_ZTSN8partdiff9askparams19calculation_options18calculation_methodE", !13, i64 0}
!76 = !{!"_ZTSN8partdiff9askparams19calculation_options21interference_functionE", !13, i64 0}
!77 = !{!"_ZTSN8partdiff9askparams19calculation_options21termination_conditionE", !13, i64 0}
!78 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE"}
!79 = !{!"_ZTSSt6vectorIN8partdiff9askparams15argument_parser20argument_descriptionESaIS3_EE"}
!80 = !{!73, !22, i64 40}
!81 = !{!73, !64, i64 48}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm: argument 0"}
!84 = distinct !{!84, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm: argument 0"}
!87 = distinct !{!87, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm: argument 0"}
!90 = distinct !{!90, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN3fmt2v76formatIA7_cJRA1_KcRKiEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsISA_ESaISA_EEERKT_DpOT0_: argument 0"}
!93 = distinct !{!93, !"_ZN3fmt2v76formatIA7_cJRA1_KcRKiEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsISA_ESaISA_EEERKT_DpOT0_"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN3fmt2v717make_args_checkedIJRA1_KcRKiEA7_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESC_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSI_: argument 0"}
!96 = distinct !{!96, !"_ZN3fmt2v717make_args_checkedIJRA1_KcRKiEA7_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESC_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSI_"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN3fmt2v76formatIA30_cJRKmEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS7_ESaIS7_EEERKT_DpOT0_: argument 0"}
!99 = distinct !{!99, !"_ZN3fmt2v76formatIA30_cJRKmEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS7_ESaIS7_EEERKT_DpOT0_"}
!100 = !{!101, !12, i64 24}
!101 = !{!"_ZTSSt8functionIFbvEE", !12, i64 24}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN3fmt2v76formatIA68_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_: argument 0"}
!104 = distinct !{!104, !"_ZN3fmt2v76formatIA68_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_"}
!105 = !{!106, !103}
!106 = distinct !{!106, !107, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmEA68_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_: argument 0"}
!107 = distinct !{!107, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmEA68_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_"}
!108 = !{!106}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN3fmt2v76formatIA74_cJmmEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS5_ESaIS5_EEERKT_DpOT0_: argument 0"}
!111 = distinct !{!111, !"_ZN3fmt2v76formatIA74_cJmmEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS5_ESaIS5_EEERKT_DpOT0_"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN3fmt2v717make_args_checkedIJmmEA74_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EES7_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSD_: argument 0"}
!114 = distinct !{!114, !"_ZN3fmt2v717make_args_checkedIJmmEA74_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EES7_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSD_"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN3fmt2v76formatIA71_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEcLi0EEENS4_IT1_S5_ISD_ESaISD_EEERKT_DpOT0_: argument 0"}
!117 = distinct !{!117, !"_ZN3fmt2v76formatIA71_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEcLi0EEENS4_IT1_S5_ISD_ESaISD_EEERKT_DpOT0_"}
!118 = !{!119, !116}
!119 = distinct !{!119, !120, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEA71_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESH_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSN_: argument 0"}
!120 = distinct !{!120, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEA71_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESH_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSN_"}
!121 = !{!119}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN3fmt2v76formatIA108_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_: argument 0"}
!124 = distinct !{!124, !"_ZN3fmt2v76formatIA108_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_"}
!125 = !{!126, !123}
!126 = distinct !{!126, !127, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmEA108_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_: argument 0"}
!127 = distinct !{!127, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmEA108_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_"}
!128 = !{!126}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN3fmt2v76formatIA111_cJmmEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS5_ESaIS5_EEERKT_DpOT0_: argument 0"}
!131 = distinct !{!131, !"_ZN3fmt2v76formatIA111_cJmmEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS5_ESaIS5_EEERKT_DpOT0_"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN3fmt2v717make_args_checkedIJmmEA111_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EES7_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSD_: argument 0"}
!134 = distinct !{!134, !"_ZN3fmt2v717make_args_checkedIJmmEA111_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EES7_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSD_"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN3fmt2v76formatIA89_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSA_mEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_: argument 0"}
!137 = distinct !{!137, !"_ZN3fmt2v76formatIA89_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSA_mEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_"}
!138 = !{!139, !136}
!139 = distinct !{!139, !140, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS9_mEA89_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_: argument 0"}
!140 = distinct !{!140, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS9_mEA89_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_"}
!141 = !{!139}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN3fmt2v76formatIA85_cJmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_: argument 0"}
!144 = distinct !{!144, !"_ZN3fmt2v76formatIA85_cJmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_"}
!145 = !{!146, !143}
!146 = distinct !{!146, !147, !"_ZN3fmt2v717make_args_checkedIJmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEA85_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_: argument 0"}
!147 = distinct !{!147, !"_ZN3fmt2v717make_args_checkedIJmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEA85_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_"}
!148 = !{!146}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN3fmt2v76formatIA8_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_: argument 0"}
!151 = distinct !{!151, !"_ZN3fmt2v76formatIA8_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN3fmt2v76formatIA75_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_S8_S8_RKmEcLi0EEENS4_IT1_S5_ISD_ESaISD_EEERKT_DpOT0_: argument 0"}
!154 = distinct !{!154, !"_ZN3fmt2v76formatIA75_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_S8_S8_RKmEcLi0EEENS4_IT1_S5_ISD_ESaISD_EEERKT_DpOT0_"}
!155 = !{!156, !153}
!156 = distinct !{!156, !157, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S7_S7_RKmEA75_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESH_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSN_: argument 0"}
!157 = distinct !{!157, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S7_S7_RKmEA75_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESH_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSN_"}
!158 = !{!156}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN3fmt2v76formatIA39_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_SA_EcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_: argument 0"}
!161 = distinct !{!161, !"_ZN3fmt2v76formatIA39_cJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_SA_EcLi0EEENS4_IT1_S5_ISB_ESaISB_EEERKT_DpOT0_"}
!162 = !{!163, !160}
!163 = distinct !{!163, !164, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S9_EA39_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_: argument 0"}
!164 = distinct !{!164, !"_ZN3fmt2v717make_args_checkedIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S9_EA39_ccEENS0_16format_arg_storeINS0_20basic_format_contextINS0_6detail15buffer_appenderIT1_EESF_EEJDpNSt16remove_referenceIT_E4typeEEEERKT0_DpRKSL_"}
!165 = !{!163}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN3fmt2v76formatIA62_cJRKmEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS7_ESaIS7_EEERKT_DpOT0_: argument 0"}
!168 = distinct !{!168, !"_ZN3fmt2v76formatIA62_cJRKmEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS7_ESaIS7_EEERKT_DpOT0_"}
!169 = !{!11, !12, i64 8}
!170 = !{!11, !12, i64 16}
!171 = !{i64 0, !172}
!172 = distinct !{}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN3fmt2v76formatIA7_cJRdEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS6_ESaIS6_EEERKT_DpOT0_: argument 0"}
!175 = distinct !{!175, !"_ZN3fmt2v76formatIA7_cJRdEcLi0EEENSt7__cxx1112basic_stringIT1_St11char_traitsIS6_ESaIS6_EEERKT_DpOT0_"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!178 = distinct !{!178, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!181 = distinct !{!181, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!184 = distinct !{!184, !"_ZNSt7__cxx119to_stringEi"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!187 = distinct !{!187, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!188 = !{!70, !12, i64 16}
!189 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 8, !190, i64 24, i64 8, !191, i64 32, i64 8, !192, i64 40, i64 8, !68, i64 48, i64 8, !63}
!190 = !{!75, !75, i64 0}
!191 = !{!76, !76, i64 0}
!192 = !{!77, !77, i64 0}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm: argument 0"}
!195 = distinct !{!195, !"_ZNK8partdiff9askparams15argument_parser15get_descriptionEm"}
!196 = !{i64 0, i64 8, !15, i64 0, i64 8, !15, i64 0, i64 8, !15, i64 0, i64 16, !15, i64 0, i64 16, !15}
!197 = !{!198, !12, i64 8}
!198 = !{!"_ZTSSt9type_info", !12, i64 8}
!199 = !{!200, !202, i64 32}
!200 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !201, i64 24, !202, i64 28, !202, i64 32, !12, i64 40, !203, i64 48, !13, i64 64, !55, i64 192, !12, i64 200, !204, i64 208}
!201 = !{!"_ZTSSt13_Ios_Fmtflags", !13, i64 0}
!202 = !{!"_ZTSSt12_Ios_Iostate", !13, i64 0}
!203 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !22, i64 8}
!204 = !{!"_ZTSSt6locale", !12, i64 0}
!205 = !{!206, !22, i64 8}
!206 = !{!"_ZTSSi", !22, i64 8}
!207 = !{!37, !12, i64 216}
!208 = !{!37, !13, i64 224}
!209 = !{!37, !33, i64 225}
!210 = !{!211, !212, i64 64}
!211 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !212, i64 64, !21, i64 72}
!212 = !{!"_ZTSSt13_Ios_Openmode", !13, i64 0}
!213 = !{!214, !12, i64 0}
!214 = !{!"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_1", !12, i64 0}
!215 = !{!216, !12, i64 0}
!216 = !{!"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_2", !12, i64 0}
!217 = !{!218, !12, i64 0}
!218 = !{!"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_3", !12, i64 0}
!219 = !{!220, !12, i64 0}
!220 = !{!"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_4", !12, i64 0}
!221 = !{!222, !12, i64 0}
!222 = !{!"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_5", !12, i64 0}
!223 = !{!224, !12, i64 0}
!224 = !{!"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_7", !12, i64 0}
!225 = !{!226, !12, i64 0}
!226 = !{!"_ZTSZN8partdiff9askparams15argument_parser26fill_argument_descriptionsEvE3$_8", !12, i64 0}
