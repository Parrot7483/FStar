open Prims
type source_info =
  {
  file_name: Prims.string;
  mod_name: Prims.string Prims.list;
  position: (Prims.int,Prims.int) FStar_Pervasives_Native.tuple2;}[@@deriving
                                                                    show]
and decl =
  | DGlobal of
  (flag Prims.list,(Prims.string Prims.list,Prims.string)
                     FStar_Pervasives_Native.tuple2,typ,expr)
  FStar_Pervasives_Native.tuple4
  | DFunction of
  (cc FStar_Pervasives_Native.option,flag Prims.list,Prims.int,typ,(Prims.string
                                                                    Prims.list,
                                                                    Prims.string)
                                                                    FStar_Pervasives_Native.tuple2,
  binder Prims.list,expr,source_info) FStar_Pervasives_Native.tuple8
  | DTypeAlias of
  ((Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
  Prims.int,typ) FStar_Pervasives_Native.tuple3
  | DTypeFlat of
  ((Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
  Prims.int,(Prims.string,(typ,Prims.bool) FStar_Pervasives_Native.tuple2)
              FStar_Pervasives_Native.tuple2 Prims.list)
  FStar_Pervasives_Native.tuple3
  | DExternal of
  (cc FStar_Pervasives_Native.option,(Prims.string Prims.list,Prims.string)
                                       FStar_Pervasives_Native.tuple2,
  typ,binder Prims.list) FStar_Pervasives_Native.tuple4
  | DTypeVariant of
  ((Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
  flag Prims.list,Prims.int,(Prims.string,(Prims.string,(typ,Prims.bool)
                                                          FStar_Pervasives_Native.tuple2)
                                            FStar_Pervasives_Native.tuple2
                                            Prims.list)
                              FStar_Pervasives_Native.tuple2 Prims.list)
  FStar_Pervasives_Native.tuple4
  | DTypeMutual of decl Prims.list
  | DFunctionMutual of decl Prims.list[@@deriving show]
and cc =
  | StdCall
  | CDecl
  | FastCall[@@deriving show]
and flag =
  | Private
  | NoExtract
  | CInline
  | Substitute
  | GCType
  | Comment of Prims.string[@@deriving show]
and lifetime =
  | Eternal
  | Stack[@@deriving show]
and expr =
  | EBound of Prims.int
  | EQualified of (Prims.string Prims.list,Prims.string)
  FStar_Pervasives_Native.tuple2
  | EConstant of (width,Prims.string) FStar_Pervasives_Native.tuple2
  | EUnit
  | EApp of (expr,expr Prims.list) FStar_Pervasives_Native.tuple2
  | ETypApp of (expr,typ Prims.list) FStar_Pervasives_Native.tuple2
  | ELet of (binder,expr,expr) FStar_Pervasives_Native.tuple3
  | EIfThenElse of (expr,expr,expr) FStar_Pervasives_Native.tuple3
  | ESequence of expr Prims.list
  | EAssign of (expr,expr) FStar_Pervasives_Native.tuple2
  | EBufCreate of (lifetime,expr,expr) FStar_Pervasives_Native.tuple3
  | EBufRead of (expr,expr) FStar_Pervasives_Native.tuple2
  | EBufWrite of (expr,expr,expr) FStar_Pervasives_Native.tuple3
  | EBufSub of (expr,expr) FStar_Pervasives_Native.tuple2
  | EBufBlit of (expr,expr,expr,expr,expr) FStar_Pervasives_Native.tuple5
  | EMatch of (expr,(pattern,expr) FStar_Pervasives_Native.tuple2 Prims.list)
  FStar_Pervasives_Native.tuple2
  | EOp of (op,width) FStar_Pervasives_Native.tuple2
  | ECast of (expr,typ) FStar_Pervasives_Native.tuple2
  | EPushFrame
  | EPopFrame
  | EBool of Prims.bool
  | EAny
  | EAbort
  | EReturn of expr
  | EFlat of
  (typ,(Prims.string,expr) FStar_Pervasives_Native.tuple2 Prims.list)
  FStar_Pervasives_Native.tuple2
  | EField of (typ,expr,Prims.string) FStar_Pervasives_Native.tuple3
  | EWhile of (expr,expr) FStar_Pervasives_Native.tuple2
  | EBufCreateL of (lifetime,expr Prims.list) FStar_Pervasives_Native.tuple2
  | ETuple of expr Prims.list
  | ECons of (typ,Prims.string,expr Prims.list)
  FStar_Pervasives_Native.tuple3
  | EBufFill of (expr,expr,expr) FStar_Pervasives_Native.tuple3
  | EString of Prims.string
  | EFun of (binder Prims.list,expr,typ) FStar_Pervasives_Native.tuple3
  | EAbortS of Prims.string[@@deriving show]
and op =
  | Add
  | AddW
  | Sub
  | SubW
  | Div
  | DivW
  | Mult
  | MultW
  | Mod
  | BOr
  | BAnd
  | BXor
  | BShiftL
  | BShiftR
  | BNot
  | Eq
  | Neq
  | Lt
  | Lte
  | Gt
  | Gte
  | And
  | Or
  | Xor
  | Not[@@deriving show]
and pattern =
  | PUnit
  | PBool of Prims.bool
  | PVar of binder
  | PCons of (Prims.string,pattern Prims.list)
  FStar_Pervasives_Native.tuple2
  | PTuple of pattern Prims.list
  | PRecord of (Prims.string,pattern) FStar_Pervasives_Native.tuple2
  Prims.list[@@deriving show]
and width =
  | UInt8
  | UInt16
  | UInt32
  | UInt64
  | Int8
  | Int16
  | Int32
  | Int64
  | Bool
  | CInt[@@deriving show]
and binder = {
  name: Prims.string;
  typ: typ;
  mut: Prims.bool;}[@@deriving show]
and typ =
  | TInt of width
  | TBuf of typ
  | TUnit
  | TQualified of (Prims.string Prims.list,Prims.string)
  FStar_Pervasives_Native.tuple2
  | TBool
  | TAny
  | TArrow of (typ,typ) FStar_Pervasives_Native.tuple2
  | TBound of Prims.int
  | TApp of
  ((Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
  typ Prims.list) FStar_Pervasives_Native.tuple2
  | TTuple of typ Prims.list[@@deriving show]
let __proj__Mksource_info__item__file_name: source_info -> Prims.string =
  fun projectee  ->
    match projectee with
    | { file_name = __fname__file_name; mod_name = __fname__mod_name;
        position = __fname__position;_} -> __fname__file_name
let __proj__Mksource_info__item__mod_name:
  source_info -> Prims.string Prims.list =
  fun projectee  ->
    match projectee with
    | { file_name = __fname__file_name; mod_name = __fname__mod_name;
        position = __fname__position;_} -> __fname__mod_name
let __proj__Mksource_info__item__position:
  source_info -> (Prims.int,Prims.int) FStar_Pervasives_Native.tuple2 =
  fun projectee  ->
    match projectee with
    | { file_name = __fname__file_name; mod_name = __fname__mod_name;
        position = __fname__position;_} -> __fname__position
let uu___is_DGlobal: decl -> Prims.bool =
  fun projectee  ->
    match projectee with | DGlobal _0 -> true | uu____611 -> false
let __proj__DGlobal__item___0:
  decl ->
    (flag Prims.list,(Prims.string Prims.list,Prims.string)
                       FStar_Pervasives_Native.tuple2,typ,expr)
      FStar_Pervasives_Native.tuple4
  = fun projectee  -> match projectee with | DGlobal _0 -> _0
let uu___is_DFunction: decl -> Prims.bool =
  fun projectee  ->
    match projectee with | DFunction _0 -> true | uu____701 -> false
let __proj__DFunction__item___0:
  decl ->
    (cc FStar_Pervasives_Native.option,flag Prims.list,Prims.int,typ,
      (Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
      binder Prims.list,expr,source_info) FStar_Pervasives_Native.tuple8
  = fun projectee  -> match projectee with | DFunction _0 -> _0
let uu___is_DTypeAlias: decl -> Prims.bool =
  fun projectee  ->
    match projectee with | DTypeAlias _0 -> true | uu____811 -> false
let __proj__DTypeAlias__item___0:
  decl ->
    ((Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
      Prims.int,typ) FStar_Pervasives_Native.tuple3
  = fun projectee  -> match projectee with | DTypeAlias _0 -> _0
let uu___is_DTypeFlat: decl -> Prims.bool =
  fun projectee  ->
    match projectee with | DTypeFlat _0 -> true | uu____883 -> false
let __proj__DTypeFlat__item___0:
  decl ->
    ((Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
      Prims.int,(Prims.string,(typ,Prims.bool) FStar_Pervasives_Native.tuple2)
                  FStar_Pervasives_Native.tuple2 Prims.list)
      FStar_Pervasives_Native.tuple3
  = fun projectee  -> match projectee with | DTypeFlat _0 -> _0
let uu___is_DExternal: decl -> Prims.bool =
  fun projectee  ->
    match projectee with | DExternal _0 -> true | uu____981 -> false
let __proj__DExternal__item___0:
  decl ->
    (cc FStar_Pervasives_Native.option,(Prims.string Prims.list,Prims.string)
                                         FStar_Pervasives_Native.tuple2,
      typ,binder Prims.list) FStar_Pervasives_Native.tuple4
  = fun projectee  -> match projectee with | DExternal _0 -> _0
let uu___is_DTypeVariant: decl -> Prims.bool =
  fun projectee  ->
    match projectee with | DTypeVariant _0 -> true | uu____1081 -> false
let __proj__DTypeVariant__item___0:
  decl ->
    ((Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
      flag Prims.list,Prims.int,(Prims.string,(Prims.string,(typ,Prims.bool)
                                                              FStar_Pervasives_Native.tuple2)
                                                FStar_Pervasives_Native.tuple2
                                                Prims.list)
                                  FStar_Pervasives_Native.tuple2 Prims.list)
      FStar_Pervasives_Native.tuple4
  = fun projectee  -> match projectee with | DTypeVariant _0 -> _0
let uu___is_DTypeMutual: decl -> Prims.bool =
  fun projectee  ->
    match projectee with | DTypeMutual _0 -> true | uu____1193 -> false
let __proj__DTypeMutual__item___0: decl -> decl Prims.list =
  fun projectee  -> match projectee with | DTypeMutual _0 -> _0
let uu___is_DFunctionMutual: decl -> Prims.bool =
  fun projectee  ->
    match projectee with | DFunctionMutual _0 -> true | uu____1215 -> false
let __proj__DFunctionMutual__item___0: decl -> decl Prims.list =
  fun projectee  -> match projectee with | DFunctionMutual _0 -> _0
let uu___is_StdCall: cc -> Prims.bool =
  fun projectee  ->
    match projectee with | StdCall  -> true | uu____1234 -> false
let uu___is_CDecl: cc -> Prims.bool =
  fun projectee  ->
    match projectee with | CDecl  -> true | uu____1239 -> false
let uu___is_FastCall: cc -> Prims.bool =
  fun projectee  ->
    match projectee with | FastCall  -> true | uu____1244 -> false
let uu___is_Private: flag -> Prims.bool =
  fun projectee  ->
    match projectee with | Private  -> true | uu____1249 -> false
let uu___is_NoExtract: flag -> Prims.bool =
  fun projectee  ->
    match projectee with | NoExtract  -> true | uu____1254 -> false
let uu___is_CInline: flag -> Prims.bool =
  fun projectee  ->
    match projectee with | CInline  -> true | uu____1259 -> false
let uu___is_Substitute: flag -> Prims.bool =
  fun projectee  ->
    match projectee with | Substitute  -> true | uu____1264 -> false
let uu___is_GCType: flag -> Prims.bool =
  fun projectee  ->
    match projectee with | GCType  -> true | uu____1269 -> false
let uu___is_Comment: flag -> Prims.bool =
  fun projectee  ->
    match projectee with | Comment _0 -> true | uu____1275 -> false
let __proj__Comment__item___0: flag -> Prims.string =
  fun projectee  -> match projectee with | Comment _0 -> _0
let uu___is_Eternal: lifetime -> Prims.bool =
  fun projectee  ->
    match projectee with | Eternal  -> true | uu____1288 -> false
let uu___is_Stack: lifetime -> Prims.bool =
  fun projectee  ->
    match projectee with | Stack  -> true | uu____1293 -> false
let uu___is_EBound: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EBound _0 -> true | uu____1299 -> false
let __proj__EBound__item___0: expr -> Prims.int =
  fun projectee  -> match projectee with | EBound _0 -> _0
let uu___is_EQualified: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EQualified _0 -> true | uu____1319 -> false
let __proj__EQualified__item___0:
  expr ->
    (Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | EQualified _0 -> _0
let uu___is_EConstant: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EConstant _0 -> true | uu____1355 -> false
let __proj__EConstant__item___0:
  expr -> (width,Prims.string) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | EConstant _0 -> _0
let uu___is_EUnit: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EUnit  -> true | uu____1380 -> false
let uu___is_EApp: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EApp _0 -> true | uu____1392 -> false
let __proj__EApp__item___0:
  expr -> (expr,expr Prims.list) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | EApp _0 -> _0
let uu___is_ETypApp: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | ETypApp _0 -> true | uu____1430 -> false
let __proj__ETypApp__item___0:
  expr -> (expr,typ Prims.list) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | ETypApp _0 -> _0
let uu___is_ELet: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | ELet _0 -> true | uu____1468 -> false
let __proj__ELet__item___0:
  expr -> (binder,expr,expr) FStar_Pervasives_Native.tuple3 =
  fun projectee  -> match projectee with | ELet _0 -> _0
let uu___is_EIfThenElse: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EIfThenElse _0 -> true | uu____1506 -> false
let __proj__EIfThenElse__item___0:
  expr -> (expr,expr,expr) FStar_Pervasives_Native.tuple3 =
  fun projectee  -> match projectee with | EIfThenElse _0 -> _0
let uu___is_ESequence: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | ESequence _0 -> true | uu____1540 -> false
let __proj__ESequence__item___0: expr -> expr Prims.list =
  fun projectee  -> match projectee with | ESequence _0 -> _0
let uu___is_EAssign: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EAssign _0 -> true | uu____1564 -> false
let __proj__EAssign__item___0:
  expr -> (expr,expr) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | EAssign _0 -> _0
let uu___is_EBufCreate: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EBufCreate _0 -> true | uu____1596 -> false
let __proj__EBufCreate__item___0:
  expr -> (lifetime,expr,expr) FStar_Pervasives_Native.tuple3 =
  fun projectee  -> match projectee with | EBufCreate _0 -> _0
let uu___is_EBufRead: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EBufRead _0 -> true | uu____1632 -> false
let __proj__EBufRead__item___0:
  expr -> (expr,expr) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | EBufRead _0 -> _0
let uu___is_EBufWrite: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EBufWrite _0 -> true | uu____1664 -> false
let __proj__EBufWrite__item___0:
  expr -> (expr,expr,expr) FStar_Pervasives_Native.tuple3 =
  fun projectee  -> match projectee with | EBufWrite _0 -> _0
let uu___is_EBufSub: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EBufSub _0 -> true | uu____1700 -> false
let __proj__EBufSub__item___0:
  expr -> (expr,expr) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | EBufSub _0 -> _0
let uu___is_EBufBlit: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EBufBlit _0 -> true | uu____1736 -> false
let __proj__EBufBlit__item___0:
  expr -> (expr,expr,expr,expr,expr) FStar_Pervasives_Native.tuple5 =
  fun projectee  -> match projectee with | EBufBlit _0 -> _0
let uu___is_EMatch: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EMatch _0 -> true | uu____1790 -> false
let __proj__EMatch__item___0:
  expr ->
    (expr,(pattern,expr) FStar_Pervasives_Native.tuple2 Prims.list)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | EMatch _0 -> _0
let uu___is_EOp: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EOp _0 -> true | uu____1838 -> false
let __proj__EOp__item___0: expr -> (op,width) FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | EOp _0 -> _0
let uu___is_ECast: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | ECast _0 -> true | uu____1868 -> false
let __proj__ECast__item___0:
  expr -> (expr,typ) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | ECast _0 -> _0
let uu___is_EPushFrame: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EPushFrame  -> true | uu____1893 -> false
let uu___is_EPopFrame: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EPopFrame  -> true | uu____1898 -> false
let uu___is_EBool: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EBool _0 -> true | uu____1904 -> false
let __proj__EBool__item___0: expr -> Prims.bool =
  fun projectee  -> match projectee with | EBool _0 -> _0
let uu___is_EAny: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EAny  -> true | uu____1917 -> false
let uu___is_EAbort: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EAbort  -> true | uu____1922 -> false
let uu___is_EReturn: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EReturn _0 -> true | uu____1928 -> false
let __proj__EReturn__item___0: expr -> expr =
  fun projectee  -> match projectee with | EReturn _0 -> _0
let uu___is_EFlat: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EFlat _0 -> true | uu____1952 -> false
let __proj__EFlat__item___0:
  expr ->
    (typ,(Prims.string,expr) FStar_Pervasives_Native.tuple2 Prims.list)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | EFlat _0 -> _0
let uu___is_EField: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EField _0 -> true | uu____2002 -> false
let __proj__EField__item___0:
  expr -> (typ,expr,Prims.string) FStar_Pervasives_Native.tuple3 =
  fun projectee  -> match projectee with | EField _0 -> _0
let uu___is_EWhile: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EWhile _0 -> true | uu____2038 -> false
let __proj__EWhile__item___0:
  expr -> (expr,expr) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | EWhile _0 -> _0
let uu___is_EBufCreateL: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EBufCreateL _0 -> true | uu____2070 -> false
let __proj__EBufCreateL__item___0:
  expr -> (lifetime,expr Prims.list) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | EBufCreateL _0 -> _0
let uu___is_ETuple: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | ETuple _0 -> true | uu____2104 -> false
let __proj__ETuple__item___0: expr -> expr Prims.list =
  fun projectee  -> match projectee with | ETuple _0 -> _0
let uu___is_ECons: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | ECons _0 -> true | uu____2132 -> false
let __proj__ECons__item___0:
  expr -> (typ,Prims.string,expr Prims.list) FStar_Pervasives_Native.tuple3 =
  fun projectee  -> match projectee with | ECons _0 -> _0
let uu___is_EBufFill: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EBufFill _0 -> true | uu____2176 -> false
let __proj__EBufFill__item___0:
  expr -> (expr,expr,expr) FStar_Pervasives_Native.tuple3 =
  fun projectee  -> match projectee with | EBufFill _0 -> _0
let uu___is_EString: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EString _0 -> true | uu____2208 -> false
let __proj__EString__item___0: expr -> Prims.string =
  fun projectee  -> match projectee with | EString _0 -> _0
let uu___is_EFun: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EFun _0 -> true | uu____2230 -> false
let __proj__EFun__item___0:
  expr -> (binder Prims.list,expr,typ) FStar_Pervasives_Native.tuple3 =
  fun projectee  -> match projectee with | EFun _0 -> _0
let uu___is_EAbortS: expr -> Prims.bool =
  fun projectee  ->
    match projectee with | EAbortS _0 -> true | uu____2268 -> false
let __proj__EAbortS__item___0: expr -> Prims.string =
  fun projectee  -> match projectee with | EAbortS _0 -> _0
let uu___is_Add: op -> Prims.bool =
  fun projectee  -> match projectee with | Add  -> true | uu____2281 -> false
let uu___is_AddW: op -> Prims.bool =
  fun projectee  ->
    match projectee with | AddW  -> true | uu____2286 -> false
let uu___is_Sub: op -> Prims.bool =
  fun projectee  -> match projectee with | Sub  -> true | uu____2291 -> false
let uu___is_SubW: op -> Prims.bool =
  fun projectee  ->
    match projectee with | SubW  -> true | uu____2296 -> false
let uu___is_Div: op -> Prims.bool =
  fun projectee  -> match projectee with | Div  -> true | uu____2301 -> false
let uu___is_DivW: op -> Prims.bool =
  fun projectee  ->
    match projectee with | DivW  -> true | uu____2306 -> false
let uu___is_Mult: op -> Prims.bool =
  fun projectee  ->
    match projectee with | Mult  -> true | uu____2311 -> false
let uu___is_MultW: op -> Prims.bool =
  fun projectee  ->
    match projectee with | MultW  -> true | uu____2316 -> false
let uu___is_Mod: op -> Prims.bool =
  fun projectee  -> match projectee with | Mod  -> true | uu____2321 -> false
let uu___is_BOr: op -> Prims.bool =
  fun projectee  -> match projectee with | BOr  -> true | uu____2326 -> false
let uu___is_BAnd: op -> Prims.bool =
  fun projectee  ->
    match projectee with | BAnd  -> true | uu____2331 -> false
let uu___is_BXor: op -> Prims.bool =
  fun projectee  ->
    match projectee with | BXor  -> true | uu____2336 -> false
let uu___is_BShiftL: op -> Prims.bool =
  fun projectee  ->
    match projectee with | BShiftL  -> true | uu____2341 -> false
let uu___is_BShiftR: op -> Prims.bool =
  fun projectee  ->
    match projectee with | BShiftR  -> true | uu____2346 -> false
let uu___is_BNot: op -> Prims.bool =
  fun projectee  ->
    match projectee with | BNot  -> true | uu____2351 -> false
let uu___is_Eq: op -> Prims.bool =
  fun projectee  -> match projectee with | Eq  -> true | uu____2356 -> false
let uu___is_Neq: op -> Prims.bool =
  fun projectee  -> match projectee with | Neq  -> true | uu____2361 -> false
let uu___is_Lt: op -> Prims.bool =
  fun projectee  -> match projectee with | Lt  -> true | uu____2366 -> false
let uu___is_Lte: op -> Prims.bool =
  fun projectee  -> match projectee with | Lte  -> true | uu____2371 -> false
let uu___is_Gt: op -> Prims.bool =
  fun projectee  -> match projectee with | Gt  -> true | uu____2376 -> false
let uu___is_Gte: op -> Prims.bool =
  fun projectee  -> match projectee with | Gte  -> true | uu____2381 -> false
let uu___is_And: op -> Prims.bool =
  fun projectee  -> match projectee with | And  -> true | uu____2386 -> false
let uu___is_Or: op -> Prims.bool =
  fun projectee  -> match projectee with | Or  -> true | uu____2391 -> false
let uu___is_Xor: op -> Prims.bool =
  fun projectee  -> match projectee with | Xor  -> true | uu____2396 -> false
let uu___is_Not: op -> Prims.bool =
  fun projectee  -> match projectee with | Not  -> true | uu____2401 -> false
let uu___is_PUnit: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | PUnit  -> true | uu____2406 -> false
let uu___is_PBool: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | PBool _0 -> true | uu____2412 -> false
let __proj__PBool__item___0: pattern -> Prims.bool =
  fun projectee  -> match projectee with | PBool _0 -> _0
let uu___is_PVar: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | PVar _0 -> true | uu____2426 -> false
let __proj__PVar__item___0: pattern -> binder =
  fun projectee  -> match projectee with | PVar _0 -> _0
let uu___is_PCons: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | PCons _0 -> true | uu____2446 -> false
let __proj__PCons__item___0:
  pattern -> (Prims.string,pattern Prims.list) FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | PCons _0 -> _0
let uu___is_PTuple: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | PTuple _0 -> true | uu____2480 -> false
let __proj__PTuple__item___0: pattern -> pattern Prims.list =
  fun projectee  -> match projectee with | PTuple _0 -> _0
let uu___is_PRecord: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | PRecord _0 -> true | uu____2506 -> false
let __proj__PRecord__item___0:
  pattern -> (Prims.string,pattern) FStar_Pervasives_Native.tuple2 Prims.list
  = fun projectee  -> match projectee with | PRecord _0 -> _0
let uu___is_UInt8: width -> Prims.bool =
  fun projectee  ->
    match projectee with | UInt8  -> true | uu____2537 -> false
let uu___is_UInt16: width -> Prims.bool =
  fun projectee  ->
    match projectee with | UInt16  -> true | uu____2542 -> false
let uu___is_UInt32: width -> Prims.bool =
  fun projectee  ->
    match projectee with | UInt32  -> true | uu____2547 -> false
let uu___is_UInt64: width -> Prims.bool =
  fun projectee  ->
    match projectee with | UInt64  -> true | uu____2552 -> false
let uu___is_Int8: width -> Prims.bool =
  fun projectee  ->
    match projectee with | Int8  -> true | uu____2557 -> false
let uu___is_Int16: width -> Prims.bool =
  fun projectee  ->
    match projectee with | Int16  -> true | uu____2562 -> false
let uu___is_Int32: width -> Prims.bool =
  fun projectee  ->
    match projectee with | Int32  -> true | uu____2567 -> false
let uu___is_Int64: width -> Prims.bool =
  fun projectee  ->
    match projectee with | Int64  -> true | uu____2572 -> false
let uu___is_Bool: width -> Prims.bool =
  fun projectee  ->
    match projectee with | Bool  -> true | uu____2577 -> false
let uu___is_CInt: width -> Prims.bool =
  fun projectee  ->
    match projectee with | CInt  -> true | uu____2582 -> false
let __proj__Mkbinder__item__name: binder -> Prims.string =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; typ = __fname__typ; mut = __fname__mut;_} ->
        __fname__name
let __proj__Mkbinder__item__typ: binder -> typ =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; typ = __fname__typ; mut = __fname__mut;_} ->
        __fname__typ
let __proj__Mkbinder__item__mut: binder -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; typ = __fname__typ; mut = __fname__mut;_} ->
        __fname__mut
let uu___is_TInt: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TInt _0 -> true | uu____2609 -> false
let __proj__TInt__item___0: typ -> width =
  fun projectee  -> match projectee with | TInt _0 -> _0
let uu___is_TBuf: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TBuf _0 -> true | uu____2623 -> false
let __proj__TBuf__item___0: typ -> typ =
  fun projectee  -> match projectee with | TBuf _0 -> _0
let uu___is_TUnit: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TUnit  -> true | uu____2636 -> false
let uu___is_TQualified: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TQualified _0 -> true | uu____2648 -> false
let __proj__TQualified__item___0:
  typ ->
    (Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | TQualified _0 -> _0
let uu___is_TBool: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TBool  -> true | uu____2679 -> false
let uu___is_TAny: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TAny  -> true | uu____2684 -> false
let uu___is_TArrow: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TArrow _0 -> true | uu____2694 -> false
let __proj__TArrow__item___0: typ -> (typ,typ) FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | TArrow _0 -> _0
let uu___is_TBound: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TBound _0 -> true | uu____2720 -> false
let __proj__TBound__item___0: typ -> Prims.int =
  fun projectee  -> match projectee with | TBound _0 -> _0
let uu___is_TApp: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TApp _0 -> true | uu____2746 -> false
let __proj__TApp__item___0:
  typ ->
    ((Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
      typ Prims.list) FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | TApp _0 -> _0
let uu___is_TTuple: typ -> Prims.bool =
  fun projectee  ->
    match projectee with | TTuple _0 -> true | uu____2798 -> false
let __proj__TTuple__item___0: typ -> typ Prims.list =
  fun projectee  -> match projectee with | TTuple _0 -> _0
type program = decl Prims.list[@@deriving show]
type ident = Prims.string[@@deriving show]
type fields_t =
  (Prims.string,(typ,Prims.bool) FStar_Pervasives_Native.tuple2)
    FStar_Pervasives_Native.tuple2 Prims.list[@@deriving show]
type branches_t =
  (Prims.string,(Prims.string,(typ,Prims.bool) FStar_Pervasives_Native.tuple2)
                  FStar_Pervasives_Native.tuple2 Prims.list)
    FStar_Pervasives_Native.tuple2 Prims.list[@@deriving show]
type fsdoc = Prims.string[@@deriving show]
type branch = (pattern,expr) FStar_Pervasives_Native.tuple2[@@deriving show]
type branches = (pattern,expr) FStar_Pervasives_Native.tuple2 Prims.list
[@@deriving show]
type constant = (width,Prims.string) FStar_Pervasives_Native.tuple2[@@deriving
                                                                    show]
type var = Prims.int[@@deriving show]
type lident =
  (Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2
[@@deriving show]
type version = Prims.int[@@deriving show]
let current_version: version = Prims.parse_int "26"
type file = (Prims.string,program) FStar_Pervasives_Native.tuple2[@@deriving
                                                                   show]
type binary_format = (version,file Prims.list) FStar_Pervasives_Native.tuple2
[@@deriving show]
let fst3:
  'Auu____2879 'Auu____2880 'Auu____2881 .
    ('Auu____2881,'Auu____2880,'Auu____2879) FStar_Pervasives_Native.tuple3
      -> 'Auu____2881
  = fun uu____2891  -> match uu____2891 with | (x,uu____2899,uu____2900) -> x
let snd3:
  'Auu____2909 'Auu____2910 'Auu____2911 .
    ('Auu____2911,'Auu____2910,'Auu____2909) FStar_Pervasives_Native.tuple3
      -> 'Auu____2910
  = fun uu____2921  -> match uu____2921 with | (uu____2928,x,uu____2930) -> x
let thd3:
  'Auu____2939 'Auu____2940 'Auu____2941 .
    ('Auu____2941,'Auu____2940,'Auu____2939) FStar_Pervasives_Native.tuple3
      -> 'Auu____2939
  = fun uu____2951  -> match uu____2951 with | (uu____2958,uu____2959,x) -> x
let mk_width: Prims.string -> width FStar_Pervasives_Native.option =
  fun uu___127_2966  ->
    match uu___127_2966 with
    | "UInt8" -> FStar_Pervasives_Native.Some UInt8
    | "UInt16" -> FStar_Pervasives_Native.Some UInt16
    | "UInt32" -> FStar_Pervasives_Native.Some UInt32
    | "UInt64" -> FStar_Pervasives_Native.Some UInt64
    | "Int8" -> FStar_Pervasives_Native.Some Int8
    | "Int16" -> FStar_Pervasives_Native.Some Int16
    | "Int32" -> FStar_Pervasives_Native.Some Int32
    | "Int64" -> FStar_Pervasives_Native.Some Int64
    | uu____2969 -> FStar_Pervasives_Native.None
let mk_bool_op: Prims.string -> op FStar_Pervasives_Native.option =
  fun uu___128_2975  ->
    match uu___128_2975 with
    | "op_Negation" -> FStar_Pervasives_Native.Some Not
    | "op_AmpAmp" -> FStar_Pervasives_Native.Some And
    | "op_BarBar" -> FStar_Pervasives_Native.Some Or
    | "op_Equality" -> FStar_Pervasives_Native.Some Eq
    | "op_disEquality" -> FStar_Pervasives_Native.Some Neq
    | uu____2978 -> FStar_Pervasives_Native.None
let is_bool_op: Prims.string -> Prims.bool =
  fun op  -> (mk_bool_op op) <> FStar_Pervasives_Native.None
let mk_op: Prims.string -> op FStar_Pervasives_Native.option =
  fun uu___129_2990  ->
    match uu___129_2990 with
    | "add" -> FStar_Pervasives_Native.Some Add
    | "op_Plus_Hat" -> FStar_Pervasives_Native.Some Add
    | "add_mod" -> FStar_Pervasives_Native.Some AddW
    | "op_Plus_Percent_Hat" -> FStar_Pervasives_Native.Some AddW
    | "sub" -> FStar_Pervasives_Native.Some Sub
    | "op_Subtraction_Hat" -> FStar_Pervasives_Native.Some Sub
    | "sub_mod" -> FStar_Pervasives_Native.Some SubW
    | "op_Subtraction_Percent_Hat" -> FStar_Pervasives_Native.Some SubW
    | "mul" -> FStar_Pervasives_Native.Some Mult
    | "op_Star_Hat" -> FStar_Pervasives_Native.Some Mult
    | "mul_mod" -> FStar_Pervasives_Native.Some MultW
    | "op_Star_Percent_Hat" -> FStar_Pervasives_Native.Some MultW
    | "div" -> FStar_Pervasives_Native.Some Div
    | "op_Slash_Hat" -> FStar_Pervasives_Native.Some Div
    | "div_mod" -> FStar_Pervasives_Native.Some DivW
    | "op_Slash_Percent_Hat" -> FStar_Pervasives_Native.Some DivW
    | "rem" -> FStar_Pervasives_Native.Some Mod
    | "op_Percent_Hat" -> FStar_Pervasives_Native.Some Mod
    | "logor" -> FStar_Pervasives_Native.Some BOr
    | "op_Bar_Hat" -> FStar_Pervasives_Native.Some BOr
    | "logxor" -> FStar_Pervasives_Native.Some BXor
    | "op_Hat_Hat" -> FStar_Pervasives_Native.Some BXor
    | "logand" -> FStar_Pervasives_Native.Some BAnd
    | "op_Amp_Hat" -> FStar_Pervasives_Native.Some BAnd
    | "lognot" -> FStar_Pervasives_Native.Some BNot
    | "shift_right" -> FStar_Pervasives_Native.Some BShiftR
    | "op_Greater_Greater_Hat" -> FStar_Pervasives_Native.Some BShiftR
    | "shift_left" -> FStar_Pervasives_Native.Some BShiftL
    | "op_Less_Less_Hat" -> FStar_Pervasives_Native.Some BShiftL
    | "eq" -> FStar_Pervasives_Native.Some Eq
    | "op_Equals_Hat" -> FStar_Pervasives_Native.Some Eq
    | "op_Greater_Hat" -> FStar_Pervasives_Native.Some Gt
    | "gt" -> FStar_Pervasives_Native.Some Gt
    | "op_Greater_Equals_Hat" -> FStar_Pervasives_Native.Some Gte
    | "gte" -> FStar_Pervasives_Native.Some Gte
    | "op_Less_Hat" -> FStar_Pervasives_Native.Some Lt
    | "lt" -> FStar_Pervasives_Native.Some Lt
    | "op_Less_Equals_Hat" -> FStar_Pervasives_Native.Some Lte
    | "lte" -> FStar_Pervasives_Native.Some Lte
    | uu____2993 -> FStar_Pervasives_Native.None
let is_op: Prims.string -> Prims.bool =
  fun op  -> (mk_op op) <> FStar_Pervasives_Native.None
let is_machine_int: Prims.string -> Prims.bool =
  fun m  -> (mk_width m) <> FStar_Pervasives_Native.None
type env =
  {
  names: name Prims.list;
  names_t: Prims.string Prims.list;
  module_name: Prims.string Prims.list;}[@@deriving show]
and name = {
  pretty: Prims.string;
  mut: Prims.bool;}[@@deriving show]
let __proj__Mkenv__item__names: env -> name Prims.list =
  fun projectee  ->
    match projectee with
    | { names = __fname__names; names_t = __fname__names_t;
        module_name = __fname__module_name;_} -> __fname__names
let __proj__Mkenv__item__names_t: env -> Prims.string Prims.list =
  fun projectee  ->
    match projectee with
    | { names = __fname__names; names_t = __fname__names_t;
        module_name = __fname__module_name;_} -> __fname__names_t
let __proj__Mkenv__item__module_name: env -> Prims.string Prims.list =
  fun projectee  ->
    match projectee with
    | { names = __fname__names; names_t = __fname__names_t;
        module_name = __fname__module_name;_} -> __fname__module_name
let __proj__Mkname__item__pretty: name -> Prims.string =
  fun projectee  ->
    match projectee with
    | { pretty = __fname__pretty; mut = __fname__mut;_} -> __fname__pretty
let __proj__Mkname__item__mut: name -> Prims.bool =
  fun projectee  ->
    match projectee with
    | { pretty = __fname__pretty; mut = __fname__mut;_} -> __fname__mut
let empty: Prims.string Prims.list -> env =
  fun module_name  -> { names = []; names_t = []; module_name }
let extend: env -> Prims.string -> Prims.bool -> env =
  fun env  ->
    fun x  ->
      fun is_mut  ->
        let uu___134_3115 = env in
        {
          names = ({ pretty = x; mut = is_mut } :: (env.names));
          names_t = (uu___134_3115.names_t);
          module_name = (uu___134_3115.module_name)
        }
let extend_t: env -> Prims.string -> env =
  fun env  ->
    fun x  ->
      let uu___135_3124 = env in
      {
        names = (uu___135_3124.names);
        names_t = (x :: (env.names_t));
        module_name = (uu___135_3124.module_name)
      }
let find_name: env -> Prims.string -> name =
  fun env  ->
    fun x  ->
      let uu____3133 =
        FStar_List.tryFind (fun name  -> name.pretty = x) env.names in
      match uu____3133 with
      | FStar_Pervasives_Native.Some name -> name
      | FStar_Pervasives_Native.None  ->
          failwith "internal error: name not found"
let is_mutable: env -> Prims.string -> Prims.bool =
  fun env  -> fun x  -> let uu____3147 = find_name env x in uu____3147.mut
let find: env -> Prims.string -> Prims.int =
  fun env  ->
    fun x  ->
      try FStar_List.index (fun name  -> name.pretty = x) env.names
      with
      | uu____3164 ->
          let uu____3165 =
            FStar_Util.format1 "Internal error: name not found %s\n" x in
          failwith uu____3165
let find_t: env -> Prims.string -> Prims.int =
  fun env  ->
    fun x  ->
      try FStar_List.index (fun name  -> name = x) env.names_t
      with
      | uu____3182 ->
          let uu____3183 =
            FStar_Util.format1 "Internal error: name not found %s\n" x in
          failwith uu____3183
let add_binders:
  'Auu____3190 .
    env ->
      (Prims.string,'Auu____3190) FStar_Pervasives_Native.tuple2 Prims.list
        -> env
  =
  fun env  ->
    fun binders  ->
      FStar_List.fold_left
        (fun env1  ->
           fun uu____3220  ->
             match uu____3220 with
             | (name,uu____3226) -> extend env1 name false) env binders
let rec translate: FStar_Extraction_ML_Syntax.mllib -> file Prims.list =
  fun uu____3369  ->
    match uu____3369 with
    | FStar_Extraction_ML_Syntax.MLLib modules1 ->
        FStar_List.filter_map
          (fun m  ->
             let m_name =
               let uu____3429 = m in
               match uu____3429 with
               | ((prefix1,final),uu____3450,uu____3451) ->
                   FStar_String.concat "."
                     (FStar_List.append prefix1 [final]) in
             try
               FStar_Util.print1 "Attempting to translate module %s\n" m_name;
               (let uu____3483 = translate_module m in
                FStar_Pervasives_Native.Some uu____3483)
             with
             | e ->
                 ((let uu____3492 = FStar_Util.print_exn e in
                   FStar_Util.print2
                     "Unable to translate module: %s because:\n  %s\n" m_name
                     uu____3492);
                  FStar_Pervasives_Native.None)) modules1
and translate_module:
  ((Prims.string Prims.list,Prims.string) FStar_Pervasives_Native.tuple2,
    (FStar_Extraction_ML_Syntax.mlsig,FStar_Extraction_ML_Syntax.mlmodule)
      FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option,FStar_Extraction_ML_Syntax.mllib)
    FStar_Pervasives_Native.tuple3 -> file
  =
  fun uu____3493  ->
    match uu____3493 with
    | (module_name,modul,uu____3514) ->
        let module_name1 =
          FStar_List.append (FStar_Pervasives_Native.fst module_name)
            [FStar_Pervasives_Native.snd module_name] in
        let program =
          match modul with
          | FStar_Pervasives_Native.Some (_signature,decls) ->
              FStar_List.filter_map (translate_decl (empty module_name1))
                decls
          | uu____3557 ->
              failwith "Unexpected standalone interface or nested modules" in
        ((FStar_String.concat "_" module_name1), program)
and translate_flags:
  FStar_Extraction_ML_Syntax.meta Prims.list -> flag Prims.list =
  fun flags  ->
    FStar_List.choose
      (fun uu___130_3572  ->
         match uu___130_3572 with
         | FStar_Extraction_ML_Syntax.Private  ->
             FStar_Pervasives_Native.Some Private
         | FStar_Extraction_ML_Syntax.NoExtract  ->
             FStar_Pervasives_Native.Some NoExtract
         | FStar_Extraction_ML_Syntax.CInline  ->
             FStar_Pervasives_Native.Some CInline
         | FStar_Extraction_ML_Syntax.Substitute  ->
             FStar_Pervasives_Native.Some Substitute
         | FStar_Extraction_ML_Syntax.GCType  ->
             FStar_Pervasives_Native.Some GCType
         | FStar_Extraction_ML_Syntax.Comment s ->
             FStar_Pervasives_Native.Some (Comment s)
         | uu____3576 -> FStar_Pervasives_Native.None) flags
and translate_single_let:
  env ->
    FStar_Extraction_ML_Syntax.mlletflavor ->
      FStar_Extraction_ML_Syntax.meta Prims.list ->
        FStar_Extraction_ML_Syntax.mllb ->
          decl FStar_Pervasives_Native.option
  =
  fun env  ->
    fun flavor  ->
      fun flags  ->
        fun binding  ->
          match (flavor, flags, binding) with
          | (flavor1,flags1,{ FStar_Extraction_ML_Syntax.mllb_name = name;
                              FStar_Extraction_ML_Syntax.mllb_tysc =
                                FStar_Pervasives_Native.Some (tvars,t0);
                              FStar_Extraction_ML_Syntax.mllb_add_unit =
                                uu____3592;
                              FStar_Extraction_ML_Syntax.mllb_def =
                                {
                                  FStar_Extraction_ML_Syntax.expr =
                                    FStar_Extraction_ML_Syntax.MLE_Fun
                                    (args,body);
                                  FStar_Extraction_ML_Syntax.mlty =
                                    uu____3595;
                                  FStar_Extraction_ML_Syntax.loc =
                                    (row,file_name);_};
                              FStar_Extraction_ML_Syntax.print_typ =
                                uu____3598;_})
              ->
              let assumed =
                FStar_Util.for_some
                  (fun uu___131_3621  ->
                     match uu___131_3621 with
                     | FStar_Extraction_ML_Syntax.Assumed  -> true
                     | uu____3622 -> false) flags1 in
              let env1 =
                if flavor1 = FStar_Extraction_ML_Syntax.Rec
                then extend env name false
                else env in
              let env2 =
                FStar_List.fold_left
                  (fun env2  -> fun name1  -> extend_t env2 name1) env1 tvars in
              let rec find_return_type i uu___132_3636 =
                match uu___132_3636 with
                | FStar_Extraction_ML_Syntax.MLTY_Fun
                    (uu____3637,uu____3638,t) when i > (Prims.parse_int "0")
                    -> find_return_type (i - (Prims.parse_int "1")) t
                | t -> t in
              let t =
                let uu____3642 = find_return_type (FStar_List.length args) t0 in
                translate_type env2 uu____3642 in
              let binders = translate_binders env2 args in
              let env3 = add_binders env2 args in
              let name1 = ((env3.module_name), name) in
              let flags2 =
                match t0 with
                | FStar_Extraction_ML_Syntax.MLTY_Fun
                    (uu____3665,FStar_Extraction_ML_Syntax.E_GHOST
                     ,uu____3666)
                    ->
                    let uu____3667 = translate_flags flags1 in NoExtract ::
                      uu____3667
                | uu____3670 -> translate_flags flags1 in
              if assumed
              then
                (if (FStar_List.length tvars) = (Prims.parse_int "0")
                 then
                   let uu____3675 =
                     let uu____3676 =
                       let uu____3695 = translate_type env3 t0 in
                       (FStar_Pervasives_Native.None, name1, uu____3695,
                         binders) in
                     DExternal uu____3676 in
                   FStar_Pervasives_Native.Some uu____3675
                 else FStar_Pervasives_Native.None)
              else
                (let si =
                   {
                     file_name;
                     mod_name = (env3.module_name);
                     position = (row, (Prims.parse_int "0"))
                   } in
                 try
                   let body1 = translate_expr env3 body in
                   FStar_Pervasives_Native.Some
                     (DFunction
                        (FStar_Pervasives_Native.None, flags2,
                          (FStar_List.length tvars), t, name1, binders,
                          body1, si))
                 with
                 | e ->
                     let msg = FStar_Util.print_exn e in
                     (FStar_Util.print2
                        "Warning: writing a stub for %s (%s)\n"
                        (FStar_Pervasives_Native.snd name1) msg;
                      (let msg1 =
                         Prims.strcat "This function was not extracted:\n"
                           msg in
                       FStar_Pervasives_Native.Some
                         (DFunction
                            (FStar_Pervasives_Native.None, flags2,
                              (FStar_List.length tvars), t, name1, binders,
                              (EAbortS msg1), si)))))
          | (flavor1,flags1,{ FStar_Extraction_ML_Syntax.mllb_name = name;
                              FStar_Extraction_ML_Syntax.mllb_tysc =
                                FStar_Pervasives_Native.Some (tvars,t0);
                              FStar_Extraction_ML_Syntax.mllb_add_unit =
                                uu____3760;
                              FStar_Extraction_ML_Syntax.mllb_def =
                                {
                                  FStar_Extraction_ML_Syntax.expr =
                                    FStar_Extraction_ML_Syntax.MLE_Coerce
                                    ({
                                       FStar_Extraction_ML_Syntax.expr =
                                         FStar_Extraction_ML_Syntax.MLE_Fun
                                         (args,body);
                                       FStar_Extraction_ML_Syntax.mlty =
                                         uu____3763;
                                       FStar_Extraction_ML_Syntax.loc =
                                         (row,file_name);_},uu____3766,uu____3767);
                                  FStar_Extraction_ML_Syntax.mlty =
                                    uu____3768;
                                  FStar_Extraction_ML_Syntax.loc = uu____3769;_};
                              FStar_Extraction_ML_Syntax.print_typ =
                                uu____3770;_})
              ->
              let assumed =
                FStar_Util.for_some
                  (fun uu___131_3793  ->
                     match uu___131_3793 with
                     | FStar_Extraction_ML_Syntax.Assumed  -> true
                     | uu____3794 -> false) flags1 in
              let env1 =
                if flavor1 = FStar_Extraction_ML_Syntax.Rec
                then extend env name false
                else env in
              let env2 =
                FStar_List.fold_left
                  (fun env2  -> fun name1  -> extend_t env2 name1) env1 tvars in
              let rec find_return_type i uu___132_3808 =
                match uu___132_3808 with
                | FStar_Extraction_ML_Syntax.MLTY_Fun
                    (uu____3809,uu____3810,t) when i > (Prims.parse_int "0")
                    -> find_return_type (i - (Prims.parse_int "1")) t
                | t -> t in
              let t =
                let uu____3814 = find_return_type (FStar_List.length args) t0 in
                translate_type env2 uu____3814 in
              let binders = translate_binders env2 args in
              let env3 = add_binders env2 args in
              let name1 = ((env3.module_name), name) in
              let flags2 =
                match t0 with
                | FStar_Extraction_ML_Syntax.MLTY_Fun
                    (uu____3837,FStar_Extraction_ML_Syntax.E_GHOST
                     ,uu____3838)
                    ->
                    let uu____3839 = translate_flags flags1 in NoExtract ::
                      uu____3839
                | uu____3842 -> translate_flags flags1 in
              if assumed
              then
                (if (FStar_List.length tvars) = (Prims.parse_int "0")
                 then
                   let uu____3847 =
                     let uu____3848 =
                       let uu____3867 = translate_type env3 t0 in
                       (FStar_Pervasives_Native.None, name1, uu____3867,
                         binders) in
                     DExternal uu____3848 in
                   FStar_Pervasives_Native.Some uu____3847
                 else FStar_Pervasives_Native.None)
              else
                (let si =
                   {
                     file_name;
                     mod_name = (env3.module_name);
                     position = (row, (Prims.parse_int "0"))
                   } in
                 try
                   let body1 = translate_expr env3 body in
                   FStar_Pervasives_Native.Some
                     (DFunction
                        (FStar_Pervasives_Native.None, flags2,
                          (FStar_List.length tvars), t, name1, binders,
                          body1, si))
                 with
                 | e ->
                     let msg = FStar_Util.print_exn e in
                     (FStar_Util.print2
                        "Warning: writing a stub for %s (%s)\n"
                        (FStar_Pervasives_Native.snd name1) msg;
                      (let msg1 =
                         Prims.strcat "This function was not extracted:\n"
                           msg in
                       FStar_Pervasives_Native.Some
                         (DFunction
                            (FStar_Pervasives_Native.None, flags2,
                              (FStar_List.length tvars), t, name1, binders,
                              (EAbortS msg1), si)))))
          | (flavor1,flags1,{ FStar_Extraction_ML_Syntax.mllb_name = name;
                              FStar_Extraction_ML_Syntax.mllb_tysc =
                                FStar_Pervasives_Native.Some ([],t);
                              FStar_Extraction_ML_Syntax.mllb_add_unit =
                                uu____3931;
                              FStar_Extraction_ML_Syntax.mllb_def = expr;
                              FStar_Extraction_ML_Syntax.print_typ =
                                uu____3933;_})
              ->
              let flags2 = translate_flags flags1 in
              let t1 = translate_type env t in
              let name1 = ((env.module_name), name) in
              (try
                 let expr1 = translate_expr env expr in
                 FStar_Pervasives_Native.Some
                   (DGlobal (flags2, name1, t1, expr1))
               with
               | e ->
                   ((let uu____3983 = FStar_Util.print_exn e in
                     FStar_Util.print2_warning
                       "Warning: not translating definition for %s (%s)\n"
                       (FStar_Pervasives_Native.snd name1) uu____3983);
                    FStar_Pervasives_Native.Some
                      (DGlobal (flags2, name1, t1, EAny))))
          | (uu____3994,uu____3995,{
                                     FStar_Extraction_ML_Syntax.mllb_name =
                                       name;
                                     FStar_Extraction_ML_Syntax.mllb_tysc =
                                       ts;
                                     FStar_Extraction_ML_Syntax.mllb_add_unit
                                       = uu____3998;
                                     FStar_Extraction_ML_Syntax.mllb_def =
                                       uu____3999;
                                     FStar_Extraction_ML_Syntax.print_typ =
                                       uu____4000;_})
              ->
              (FStar_Util.print1_warning
                 "Warning: not translating definition for %s (and possibly others)\n"
                 name;
               (match ts with
                | FStar_Pervasives_Native.Some (idents,t) ->
                    let uu____4015 =
                      FStar_Extraction_ML_Code.string_of_mlty ([], "") t in
                    FStar_Util.print2 "Type scheme is: forall %s. %s\n"
                      (FStar_String.concat ", " idents) uu____4015
                | FStar_Pervasives_Native.None  -> ());
               FStar_Pervasives_Native.None)
          | uu____4018 -> failwith "impossible"
and translate_decl:
  env ->
    FStar_Extraction_ML_Syntax.mlmodule1 ->
      decl FStar_Pervasives_Native.option
  =
  fun env  ->
    fun d  ->
      match d with
      | FStar_Extraction_ML_Syntax.MLM_Let (flavor,flags,lbs) ->
          let ls =
            FStar_List.filter_map (translate_single_let env flavor flags) lbs in
          FStar_Pervasives_Native.Some (DFunctionMutual ls)
      | FStar_Extraction_ML_Syntax.MLM_Loc uu____4043 ->
          FStar_Pervasives_Native.None
      | FStar_Extraction_ML_Syntax.MLM_Ty (ty_decl::[]) ->
          translate_single_type_decl env ty_decl
      | FStar_Extraction_ML_Syntax.MLM_Ty ty_decls ->
          let rec traverse f xs =
            match xs with
            | [] -> FStar_Pervasives_Native.Some []
            | o::os ->
                let uu____4084 = traverse f os in
                (match uu____4084 with
                 | FStar_Pervasives_Native.None  ->
                     FStar_Pervasives_Native.None
                 | FStar_Pervasives_Native.Some os' ->
                     let uu____4102 = f o in
                     (match uu____4102 with
                      | FStar_Pervasives_Native.None  ->
                          FStar_Pervasives_Native.None
                      | FStar_Pervasives_Native.Some o' ->
                          FStar_Pervasives_Native.Some (o' :: os'))) in
          let uu____4114 = traverse (translate_single_type_decl env) ty_decls in
          (match uu____4114 with
           | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
           | FStar_Pervasives_Native.Some decls ->
               FStar_Pervasives_Native.Some (DTypeMutual decls))
      | FStar_Extraction_ML_Syntax.MLM_Ty [] ->
          (FStar_Util.print_string
             "Impossible!! Empty block of mutually recursive type declarations";
           FStar_Pervasives_Native.None)
      | FStar_Extraction_ML_Syntax.MLM_Top uu____4129 ->
          failwith "todo: translate_decl [MLM_Top]"
      | FStar_Extraction_ML_Syntax.MLM_Exn uu____4132 ->
          failwith "todo: translate_decl [MLM_Exn]"
and translate_single_type_decl:
  env ->
    FStar_Extraction_ML_Syntax.one_mltydecl ->
      decl FStar_Pervasives_Native.option
  =
  fun env  ->
    fun ty_decl  ->
      match ty_decl with
      | (assumed,name,_mangled_name,args,uu____4153,FStar_Pervasives_Native.Some
         (FStar_Extraction_ML_Syntax.MLTD_Abbrev t)) ->
          let name1 = ((env.module_name), name) in
          let env1 =
            FStar_List.fold_left
              (fun env1  -> fun name2  -> extend_t env1 name2) env args in
          if assumed
          then FStar_Pervasives_Native.None
          else
            (let uu____4178 =
               let uu____4179 =
                 let uu____4192 = translate_type env1 t in
                 (name1, (FStar_List.length args), uu____4192) in
               DTypeAlias uu____4179 in
             FStar_Pervasives_Native.Some uu____4178)
      | (uu____4199,name,_mangled_name,args,uu____4203,FStar_Pervasives_Native.Some
         (FStar_Extraction_ML_Syntax.MLTD_Record fields)) ->
          let name1 = ((env.module_name), name) in
          let env1 =
            FStar_List.fold_left
              (fun env1  -> fun name2  -> extend_t env1 name2) env args in
          let uu____4231 =
            let uu____4232 =
              let uu____4255 =
                FStar_List.map
                  (fun uu____4282  ->
                     match uu____4282 with
                     | (f,t) ->
                         let uu____4297 =
                           let uu____4302 = translate_type env1 t in
                           (uu____4302, false) in
                         (f, uu____4297)) fields in
              (name1, (FStar_List.length args), uu____4255) in
            DTypeFlat uu____4232 in
          FStar_Pervasives_Native.Some uu____4231
      | (uu____4323,name,_mangled_name,args,attrs,FStar_Pervasives_Native.Some
         (FStar_Extraction_ML_Syntax.MLTD_DType branches)) ->
          let name1 = ((env.module_name), name) in
          let flags = translate_flags attrs in
          let env1 = FStar_List.fold_left extend_t env args in
          let uu____4360 =
            let uu____4361 =
              let uu____4394 =
                FStar_List.map
                  (fun uu____4439  ->
                     match uu____4439 with
                     | (cons1,ts) ->
                         let uu____4478 =
                           FStar_List.map
                             (fun uu____4505  ->
                                match uu____4505 with
                                | (name2,t) ->
                                    let uu____4520 =
                                      let uu____4525 = translate_type env1 t in
                                      (uu____4525, false) in
                                    (name2, uu____4520)) ts in
                         (cons1, uu____4478)) branches in
              (name1, flags, (FStar_List.length args), uu____4394) in
            DTypeVariant uu____4361 in
          FStar_Pervasives_Native.Some uu____4360
      | uu____4564 -> failwith "unable to translate type..."
and translate_type: env -> FStar_Extraction_ML_Syntax.mlty -> typ =
  fun env  ->
    fun t  ->
      match t with
      | FStar_Extraction_ML_Syntax.MLTY_Tuple [] -> TAny
      | FStar_Extraction_ML_Syntax.MLTY_Top  -> TAny
      | FStar_Extraction_ML_Syntax.MLTY_Var name ->
          let uu____4570 = find_t env name in TBound uu____4570
      | FStar_Extraction_ML_Syntax.MLTY_Fun (t1,uu____4572,t2) ->
          let uu____4574 =
            let uu____4579 = translate_type env t1 in
            let uu____4580 = translate_type env t2 in
            (uu____4579, uu____4580) in
          TArrow uu____4574
      | FStar_Extraction_ML_Syntax.MLTY_Named ([],p) when
          let uu____4584 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____4584 = "Prims.unit" -> TUnit
      | FStar_Extraction_ML_Syntax.MLTY_Named ([],p) when
          let uu____4588 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____4588 = "Prims.bool" -> TBool
      | FStar_Extraction_ML_Syntax.MLTY_Named ([],("FStar"::m::[],"t")) when
          is_machine_int m ->
          let uu____4600 = FStar_Util.must (mk_width m) in TInt uu____4600
      | FStar_Extraction_ML_Syntax.MLTY_Named ([],("FStar"::m::[],"t'")) when
          is_machine_int m ->
          let uu____4612 = FStar_Util.must (mk_width m) in TInt uu____4612
      | FStar_Extraction_ML_Syntax.MLTY_Named (arg::[],p) when
          let uu____4617 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____4617 = "FStar.Monotonic.HyperStack.mem" -> TUnit
      | FStar_Extraction_ML_Syntax.MLTY_Named (arg::[],p) when
          let uu____4622 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____4622 = "FStar.Buffer.buffer" ->
          let uu____4623 = translate_type env arg in TBuf uu____4623
      | FStar_Extraction_ML_Syntax.MLTY_Named (uu____4624::[],p) when
          let uu____4628 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____4628 = "FStar.Ghost.erased" -> TAny
      | FStar_Extraction_ML_Syntax.MLTY_Named ([],(path,type_name)) ->
          TQualified (path, type_name)
      | FStar_Extraction_ML_Syntax.MLTY_Named (args,(ns,t1)) when
          ((ns = ["Prims"]) || (ns = ["FStar"; "Pervasives"; "Native"])) &&
            (FStar_Util.starts_with t1 "tuple")
          ->
          let uu____4666 = FStar_List.map (translate_type env) args in
          TTuple uu____4666
      | FStar_Extraction_ML_Syntax.MLTY_Named (args,lid) ->
          if (FStar_List.length args) > (Prims.parse_int "0")
          then
            let uu____4675 =
              let uu____4688 = FStar_List.map (translate_type env) args in
              (lid, uu____4688) in
            TApp uu____4675
          else TQualified lid
      | FStar_Extraction_ML_Syntax.MLTY_Tuple ts ->
          let uu____4697 = FStar_List.map (translate_type env) ts in
          TTuple uu____4697
and translate_binders:
  env ->
    (FStar_Extraction_ML_Syntax.mlident,FStar_Extraction_ML_Syntax.mlty)
      FStar_Pervasives_Native.tuple2 Prims.list -> binder Prims.list
  = fun env  -> fun args  -> FStar_List.map (translate_binder env) args
and translate_binder:
  env ->
    (FStar_Extraction_ML_Syntax.mlident,FStar_Extraction_ML_Syntax.mlty)
      FStar_Pervasives_Native.tuple2 -> binder
  =
  fun env  ->
    fun uu____4713  ->
      match uu____4713 with
      | (name,typ) ->
          let uu____4720 = translate_type env typ in
          { name; typ = uu____4720; mut = false }
and translate_expr: env -> FStar_Extraction_ML_Syntax.mlexpr -> expr =
  fun env  ->
    fun e  ->
      match e.FStar_Extraction_ML_Syntax.expr with
      | FStar_Extraction_ML_Syntax.MLE_Tuple [] -> EUnit
      | FStar_Extraction_ML_Syntax.MLE_Const c -> translate_constant c
      | FStar_Extraction_ML_Syntax.MLE_Var name ->
          let uu____4725 = find env name in EBound uu____4725
      | FStar_Extraction_ML_Syntax.MLE_Name ("FStar"::m::[],op) when
          (is_machine_int m) && (is_op op) ->
          let uu____4730 =
            let uu____4735 = FStar_Util.must (mk_op op) in
            let uu____4736 = FStar_Util.must (mk_width m) in
            (uu____4735, uu____4736) in
          EOp uu____4730
      | FStar_Extraction_ML_Syntax.MLE_Name ("Prims"::[],op) when
          is_bool_op op ->
          let uu____4740 =
            let uu____4745 = FStar_Util.must (mk_bool_op op) in
            (uu____4745, Bool) in
          EOp uu____4740
      | FStar_Extraction_ML_Syntax.MLE_Name n1 -> EQualified n1
      | FStar_Extraction_ML_Syntax.MLE_Let
          ((flavor,flags,{ FStar_Extraction_ML_Syntax.mllb_name = name;
                           FStar_Extraction_ML_Syntax.mllb_tysc =
                             FStar_Pervasives_Native.Some ([],typ);
                           FStar_Extraction_ML_Syntax.mllb_add_unit =
                             add_unit;
                           FStar_Extraction_ML_Syntax.mllb_def = body;
                           FStar_Extraction_ML_Syntax.print_typ = print7;_}::[]),continuation)
          ->
          let is_mut =
            FStar_Util.for_some
              (fun uu___133_4775  ->
                 match uu___133_4775 with
                 | FStar_Extraction_ML_Syntax.Mutable  -> true
                 | uu____4776 -> false) flags in
          let uu____4777 =
            if is_mut
            then
              let uu____4786 =
                match typ with
                | FStar_Extraction_ML_Syntax.MLTY_Named (t::[],p) when
                    let uu____4791 =
                      FStar_Extraction_ML_Syntax.string_of_mlpath p in
                    uu____4791 = "FStar.ST.stackref" -> t
                | uu____4792 ->
                    let uu____4793 =
                      let uu____4794 =
                        FStar_Extraction_ML_Code.string_of_mlty ([], "") typ in
                      FStar_Util.format1
                        "unexpected: bad desugaring of Mutable (typ is %s)"
                        uu____4794 in
                    failwith uu____4793 in
              let uu____4797 =
                match body with
                | {
                    FStar_Extraction_ML_Syntax.expr =
                      FStar_Extraction_ML_Syntax.MLE_App
                      (uu____4798,body1::[]);
                    FStar_Extraction_ML_Syntax.mlty = uu____4800;
                    FStar_Extraction_ML_Syntax.loc = uu____4801;_} -> body1
                | uu____4804 ->
                    failwith "unexpected: bad desugaring of Mutable" in
              (uu____4786, uu____4797)
            else (typ, body) in
          (match uu____4777 with
           | (typ1,body1) ->
               let binder =
                 let uu____4809 = translate_type env typ1 in
                 { name; typ = uu____4809; mut = is_mut } in
               let body2 = translate_expr env body1 in
               let env1 = extend env name is_mut in
               let continuation1 = translate_expr env1 continuation in
               ELet (binder, body2, continuation1))
      | FStar_Extraction_ML_Syntax.MLE_Match (expr,branches) ->
          let uu____4835 =
            let uu____4846 = translate_expr env expr in
            let uu____4847 = translate_branches env branches in
            (uu____4846, uu____4847) in
          EMatch uu____4835
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name p;
             FStar_Extraction_ML_Syntax.mlty = uu____4861;
             FStar_Extraction_ML_Syntax.loc = uu____4862;_},{
                                                              FStar_Extraction_ML_Syntax.expr
                                                                =
                                                                FStar_Extraction_ML_Syntax.MLE_Var
                                                                v1;
                                                              FStar_Extraction_ML_Syntax.mlty
                                                                = uu____4864;
                                                              FStar_Extraction_ML_Syntax.loc
                                                                = uu____4865;_}::[])
          when
          (let uu____4870 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
           uu____4870 = "FStar.HyperStack.ST.op_Bang") && (is_mutable env v1)
          -> let uu____4871 = find env v1 in EBound uu____4871
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name p;
             FStar_Extraction_ML_Syntax.mlty = uu____4873;
             FStar_Extraction_ML_Syntax.loc = uu____4874;_},{
                                                              FStar_Extraction_ML_Syntax.expr
                                                                =
                                                                FStar_Extraction_ML_Syntax.MLE_Var
                                                                v1;
                                                              FStar_Extraction_ML_Syntax.mlty
                                                                = uu____4876;
                                                              FStar_Extraction_ML_Syntax.loc
                                                                = uu____4877;_}::e1::[])
          when
          (let uu____4883 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
           uu____4883 = "FStar.HyperStack.ST.op_Colon_Equals") &&
            (is_mutable env v1)
          ->
          let uu____4884 =
            let uu____4889 =
              let uu____4890 = find env v1 in EBound uu____4890 in
            let uu____4891 = translate_expr env e1 in
            (uu____4889, uu____4891) in
          EAssign uu____4884
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____4893;
                  FStar_Extraction_ML_Syntax.loc = uu____4894;_},uu____4895);
             FStar_Extraction_ML_Syntax.mlty = uu____4896;
             FStar_Extraction_ML_Syntax.loc = uu____4897;_},e1::e2::[])
          when
          (let uu____4908 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
           uu____4908 = "FStar.Buffer.index") ||
            (let uu____4910 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
             uu____4910 = "FStar.Buffer.op_Array_Access")
          ->
          let uu____4911 =
            let uu____4916 = translate_expr env e1 in
            let uu____4917 = translate_expr env e2 in
            (uu____4916, uu____4917) in
          EBufRead uu____4911
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____4919;
                  FStar_Extraction_ML_Syntax.loc = uu____4920;_},uu____4921);
             FStar_Extraction_ML_Syntax.mlty = uu____4922;
             FStar_Extraction_ML_Syntax.loc = uu____4923;_},e1::[])
          when
          let uu____4931 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____4931 = "FStar.HyperStack.ST.op_Bang" ->
          let uu____4932 =
            let uu____4937 = translate_expr env e1 in
            (uu____4937, (EConstant (UInt32, "0"))) in
          EBufRead uu____4932
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____4939;
                  FStar_Extraction_ML_Syntax.loc = uu____4940;_},uu____4941);
             FStar_Extraction_ML_Syntax.mlty = uu____4942;
             FStar_Extraction_ML_Syntax.loc = uu____4943;_},e1::e2::[])
          when
          let uu____4952 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____4952 = "FStar.Buffer.create" ->
          let uu____4953 =
            let uu____4960 = translate_expr env e1 in
            let uu____4961 = translate_expr env e2 in
            (Stack, uu____4960, uu____4961) in
          EBufCreate uu____4953
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____4963;
                  FStar_Extraction_ML_Syntax.loc = uu____4964;_},uu____4965);
             FStar_Extraction_ML_Syntax.mlty = uu____4966;
             FStar_Extraction_ML_Syntax.loc = uu____4967;_},_rid::init1::[])
          when
          let uu____4976 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____4976 = "FStar.HyperStack.ST.ralloc" ->
          let uu____4977 =
            let uu____4984 = translate_expr env init1 in
            (Eternal, uu____4984, (EConstant (UInt32, "0"))) in
          EBufCreate uu____4977
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____4986;
                  FStar_Extraction_ML_Syntax.loc = uu____4987;_},uu____4988);
             FStar_Extraction_ML_Syntax.mlty = uu____4989;
             FStar_Extraction_ML_Syntax.loc = uu____4990;_},_e0::e1::e2::[])
          when
          let uu____5000 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5000 = "FStar.Buffer.rcreate" ->
          let uu____5001 =
            let uu____5008 = translate_expr env e1 in
            let uu____5009 = translate_expr env e2 in
            (Eternal, uu____5008, uu____5009) in
          EBufCreate uu____5001
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____5011;
                  FStar_Extraction_ML_Syntax.loc = uu____5012;_},uu____5013);
             FStar_Extraction_ML_Syntax.mlty = uu____5014;
             FStar_Extraction_ML_Syntax.loc = uu____5015;_},e2::[])
          when
          let uu____5023 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5023 = "FStar.Buffer.createL" ->
          let rec list_elements1 acc e21 =
            match e21.FStar_Extraction_ML_Syntax.expr with
            | FStar_Extraction_ML_Syntax.MLE_CTor
                (("Prims"::[],"Cons"),hd1::tl1::[]) ->
                list_elements1 (hd1 :: acc) tl1
            | FStar_Extraction_ML_Syntax.MLE_CTor (("Prims"::[],"Nil"),[]) ->
                FStar_List.rev acc
            | uu____5061 ->
                failwith
                  "Argument of FStar.Buffer.createL is not a string literal!" in
          let list_elements2 = list_elements1 [] in
          let uu____5069 =
            let uu____5076 =
              let uu____5079 = list_elements2 e2 in
              FStar_List.map (translate_expr env) uu____5079 in
            (Stack, uu____5076) in
          EBufCreateL uu____5069
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____5085;
                  FStar_Extraction_ML_Syntax.loc = uu____5086;_},uu____5087);
             FStar_Extraction_ML_Syntax.mlty = uu____5088;
             FStar_Extraction_ML_Syntax.loc = uu____5089;_},e1::e2::_e3::[])
          when
          let uu____5099 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5099 = "FStar.Buffer.sub" ->
          let uu____5100 =
            let uu____5105 = translate_expr env e1 in
            let uu____5106 = translate_expr env e2 in
            (uu____5105, uu____5106) in
          EBufSub uu____5100
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____5108;
                  FStar_Extraction_ML_Syntax.loc = uu____5109;_},uu____5110);
             FStar_Extraction_ML_Syntax.mlty = uu____5111;
             FStar_Extraction_ML_Syntax.loc = uu____5112;_},e1::e2::[])
          when
          let uu____5121 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5121 = "FStar.Buffer.join" -> translate_expr env e1
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____5123;
                  FStar_Extraction_ML_Syntax.loc = uu____5124;_},uu____5125);
             FStar_Extraction_ML_Syntax.mlty = uu____5126;
             FStar_Extraction_ML_Syntax.loc = uu____5127;_},e1::e2::[])
          when
          let uu____5136 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5136 = "FStar.Buffer.offset" ->
          let uu____5137 =
            let uu____5142 = translate_expr env e1 in
            let uu____5143 = translate_expr env e2 in
            (uu____5142, uu____5143) in
          EBufSub uu____5137
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____5145;
                  FStar_Extraction_ML_Syntax.loc = uu____5146;_},uu____5147);
             FStar_Extraction_ML_Syntax.mlty = uu____5148;
             FStar_Extraction_ML_Syntax.loc = uu____5149;_},e1::e2::e3::[])
          when
          (let uu____5161 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
           uu____5161 = "FStar.Buffer.upd") ||
            (let uu____5163 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
             uu____5163 = "FStar.Buffer.op_Array_Assignment")
          ->
          let uu____5164 =
            let uu____5171 = translate_expr env e1 in
            let uu____5172 = translate_expr env e2 in
            let uu____5173 = translate_expr env e3 in
            (uu____5171, uu____5172, uu____5173) in
          EBufWrite uu____5164
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____5175;
                  FStar_Extraction_ML_Syntax.loc = uu____5176;_},uu____5177);
             FStar_Extraction_ML_Syntax.mlty = uu____5178;
             FStar_Extraction_ML_Syntax.loc = uu____5179;_},e1::e2::[])
          when
          let uu____5188 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5188 = "FStar.HyperStack.ST.op_Colon_Equals" ->
          let uu____5189 =
            let uu____5196 = translate_expr env e1 in
            let uu____5197 = translate_expr env e2 in
            (uu____5196, (EConstant (UInt32, "0")), uu____5197) in
          EBufWrite uu____5189
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name p;
             FStar_Extraction_ML_Syntax.mlty = uu____5199;
             FStar_Extraction_ML_Syntax.loc = uu____5200;_},uu____5201::[])
          when
          let uu____5204 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5204 = "FStar.HyperStack.ST.push_frame" -> EPushFrame
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name p;
             FStar_Extraction_ML_Syntax.mlty = uu____5206;
             FStar_Extraction_ML_Syntax.loc = uu____5207;_},uu____5208::[])
          when
          let uu____5211 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5211 = "FStar.HyperStack.ST.pop_frame" -> EPopFrame
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____5213;
                  FStar_Extraction_ML_Syntax.loc = uu____5214;_},uu____5215);
             FStar_Extraction_ML_Syntax.mlty = uu____5216;
             FStar_Extraction_ML_Syntax.loc = uu____5217;_},e1::e2::e3::e4::e5::[])
          when
          let uu____5229 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5229 = "FStar.Buffer.blit" ->
          let uu____5230 =
            let uu____5241 = translate_expr env e1 in
            let uu____5242 = translate_expr env e2 in
            let uu____5243 = translate_expr env e3 in
            let uu____5244 = translate_expr env e4 in
            let uu____5245 = translate_expr env e5 in
            (uu____5241, uu____5242, uu____5243, uu____5244, uu____5245) in
          EBufBlit uu____5230
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_TApp
               ({
                  FStar_Extraction_ML_Syntax.expr =
                    FStar_Extraction_ML_Syntax.MLE_Name p;
                  FStar_Extraction_ML_Syntax.mlty = uu____5247;
                  FStar_Extraction_ML_Syntax.loc = uu____5248;_},uu____5249);
             FStar_Extraction_ML_Syntax.mlty = uu____5250;
             FStar_Extraction_ML_Syntax.loc = uu____5251;_},e1::e2::e3::[])
          when
          let uu____5261 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5261 = "FStar.Buffer.fill" ->
          let uu____5262 =
            let uu____5269 = translate_expr env e1 in
            let uu____5270 = translate_expr env e2 in
            let uu____5271 = translate_expr env e3 in
            (uu____5269, uu____5270, uu____5271) in
          EBufFill uu____5262
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name p;
             FStar_Extraction_ML_Syntax.mlty = uu____5273;
             FStar_Extraction_ML_Syntax.loc = uu____5274;_},uu____5275::[])
          when
          let uu____5278 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5278 = "FStar.HyperStack.ST.get" -> EUnit
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name p;
             FStar_Extraction_ML_Syntax.mlty = uu____5280;
             FStar_Extraction_ML_Syntax.loc = uu____5281;_},e1::[])
          when
          let uu____5285 = FStar_Extraction_ML_Syntax.string_of_mlpath p in
          uu____5285 = "Obj.repr" ->
          let uu____5286 =
            let uu____5291 = translate_expr env e1 in (uu____5291, TAny) in
          ECast uu____5286
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name ("FStar"::m::[],op);
             FStar_Extraction_ML_Syntax.mlty = uu____5294;
             FStar_Extraction_ML_Syntax.loc = uu____5295;_},args)
          when (is_machine_int m) && (is_op op) ->
          let uu____5303 = FStar_Util.must (mk_width m) in
          let uu____5304 = FStar_Util.must (mk_op op) in
          mk_op_app env uu____5303 uu____5304 args
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name ("Prims"::[],op);
             FStar_Extraction_ML_Syntax.mlty = uu____5306;
             FStar_Extraction_ML_Syntax.loc = uu____5307;_},args)
          when is_bool_op op ->
          let uu____5315 = FStar_Util.must (mk_bool_op op) in
          mk_op_app env Bool uu____5315 args
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name
               ("FStar"::m::[],"int_to_t");
             FStar_Extraction_ML_Syntax.mlty = uu____5317;
             FStar_Extraction_ML_Syntax.loc = uu____5318;_},{
                                                              FStar_Extraction_ML_Syntax.expr
                                                                =
                                                                FStar_Extraction_ML_Syntax.MLE_Const
                                                                (FStar_Extraction_ML_Syntax.MLC_Int
                                                                (c,FStar_Pervasives_Native.None
                                                                 ));
                                                              FStar_Extraction_ML_Syntax.mlty
                                                                = uu____5320;
                                                              FStar_Extraction_ML_Syntax.loc
                                                                = uu____5321;_}::[])
          when is_machine_int m ->
          let uu____5336 =
            let uu____5341 = FStar_Util.must (mk_width m) in (uu____5341, c) in
          EConstant uu____5336
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name
               ("FStar"::m::[],"uint_to_t");
             FStar_Extraction_ML_Syntax.mlty = uu____5343;
             FStar_Extraction_ML_Syntax.loc = uu____5344;_},{
                                                              FStar_Extraction_ML_Syntax.expr
                                                                =
                                                                FStar_Extraction_ML_Syntax.MLE_Const
                                                                (FStar_Extraction_ML_Syntax.MLC_Int
                                                                (c,FStar_Pervasives_Native.None
                                                                 ));
                                                              FStar_Extraction_ML_Syntax.mlty
                                                                = uu____5346;
                                                              FStar_Extraction_ML_Syntax.loc
                                                                = uu____5347;_}::[])
          when is_machine_int m ->
          let uu____5362 =
            let uu____5367 = FStar_Util.must (mk_width m) in (uu____5367, c) in
          EConstant uu____5362
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name
               ("C"::[],"string_of_literal");
             FStar_Extraction_ML_Syntax.mlty = uu____5368;
             FStar_Extraction_ML_Syntax.loc = uu____5369;_},{
                                                              FStar_Extraction_ML_Syntax.expr
                                                                = e1;
                                                              FStar_Extraction_ML_Syntax.mlty
                                                                = uu____5371;
                                                              FStar_Extraction_ML_Syntax.loc
                                                                = uu____5372;_}::[])
          ->
          (match e1 with
           | FStar_Extraction_ML_Syntax.MLE_Const
               (FStar_Extraction_ML_Syntax.MLC_String s) -> EString s
           | uu____5378 ->
               failwith
                 "Cannot extract string_of_literal applied to a non-literal")
      | FStar_Extraction_ML_Syntax.MLE_App
          ({
             FStar_Extraction_ML_Syntax.expr =
               FStar_Extraction_ML_Syntax.MLE_Name
               ("FStar"::"Int"::"Cast"::[],c);
             FStar_Extraction_ML_Syntax.mlty = uu____5380;
             FStar_Extraction_ML_Syntax.loc = uu____5381;_},arg::[])
          ->
          let is_known_type =
            (((((((FStar_Util.starts_with c "uint8") ||
                    (FStar_Util.starts_with c "uint16"))
                   || (FStar_Util.starts_with c "uint32"))
                  || (FStar_Util.starts_with c "uint64"))
                 || (FStar_Util.starts_with c "int8"))
                || (FStar_Util.starts_with c "int16"))
               || (FStar_Util.starts_with c "int32"))
              || (FStar_Util.starts_with c "int64") in
          if (FStar_Util.ends_with c "uint64") && is_known_type
          then
            let uu____5388 =
              let uu____5393 = translate_expr env arg in
              (uu____5393, (TInt UInt64)) in
            ECast uu____5388
          else
            if (FStar_Util.ends_with c "uint32") && is_known_type
            then
              (let uu____5395 =
                 let uu____5400 = translate_expr env arg in
                 (uu____5400, (TInt UInt32)) in
               ECast uu____5395)
            else
              if (FStar_Util.ends_with c "uint16") && is_known_type
              then
                (let uu____5402 =
                   let uu____5407 = translate_expr env arg in
                   (uu____5407, (TInt UInt16)) in
                 ECast uu____5402)
              else
                if (FStar_Util.ends_with c "uint8") && is_known_type
                then
                  (let uu____5409 =
                     let uu____5414 = translate_expr env arg in
                     (uu____5414, (TInt UInt8)) in
                   ECast uu____5409)
                else
                  if (FStar_Util.ends_with c "int64") && is_known_type
                  then
                    (let uu____5416 =
                       let uu____5421 = translate_expr env arg in
                       (uu____5421, (TInt Int64)) in
                     ECast uu____5416)
                  else
                    if (FStar_Util.ends_with c "int32") && is_known_type
                    then
                      (let uu____5423 =
                         let uu____5428 = translate_expr env arg in
                         (uu____5428, (TInt Int32)) in
                       ECast uu____5423)
                    else
                      if (FStar_Util.ends_with c "int16") && is_known_type
                      then
                        (let uu____5430 =
                           let uu____5435 = translate_expr env arg in
                           (uu____5435, (TInt Int16)) in
                         ECast uu____5430)
                      else
                        if (FStar_Util.ends_with c "int8") && is_known_type
                        then
                          (let uu____5437 =
                             let uu____5442 = translate_expr env arg in
                             (uu____5442, (TInt Int8)) in
                           ECast uu____5437)
                        else
                          (let uu____5444 =
                             let uu____5451 =
                               let uu____5454 = translate_expr env arg in
                               [uu____5454] in
                             ((EQualified (["FStar"; "Int"; "Cast"], c)),
                               uu____5451) in
                           EApp uu____5444)
      | FStar_Extraction_ML_Syntax.MLE_App (head1,args) ->
          let uu____5465 =
            let uu____5472 = translate_expr env head1 in
            let uu____5473 = FStar_List.map (translate_expr env) args in
            (uu____5472, uu____5473) in
          EApp uu____5465
      | FStar_Extraction_ML_Syntax.MLE_TApp (head1,ty_args) ->
          let uu____5484 =
            let uu____5491 = translate_expr env head1 in
            let uu____5492 = FStar_List.map (translate_type env) ty_args in
            (uu____5491, uu____5492) in
          ETypApp uu____5484
      | FStar_Extraction_ML_Syntax.MLE_Coerce (e1,t_from,t_to) ->
          let uu____5500 =
            let uu____5505 = translate_expr env e1 in
            let uu____5506 = translate_type env t_to in
            (uu____5505, uu____5506) in
          ECast uu____5500
      | FStar_Extraction_ML_Syntax.MLE_Record (uu____5507,fields) ->
          let uu____5525 =
            let uu____5536 = assert_lid env e.FStar_Extraction_ML_Syntax.mlty in
            let uu____5537 =
              FStar_List.map
                (fun uu____5556  ->
                   match uu____5556 with
                   | (field,expr) ->
                       let uu____5567 = translate_expr env expr in
                       (field, uu____5567)) fields in
            (uu____5536, uu____5537) in
          EFlat uu____5525
      | FStar_Extraction_ML_Syntax.MLE_Proj (e1,path) ->
          let uu____5576 =
            let uu____5583 =
              assert_lid env e1.FStar_Extraction_ML_Syntax.mlty in
            let uu____5584 = translate_expr env e1 in
            (uu____5583, uu____5584, (FStar_Pervasives_Native.snd path)) in
          EField uu____5576
      | FStar_Extraction_ML_Syntax.MLE_Let uu____5587 ->
          failwith "todo: translate_expr [MLE_Let]"
      | FStar_Extraction_ML_Syntax.MLE_App (head1,uu____5601) ->
          let uu____5606 =
            let uu____5607 =
              FStar_Extraction_ML_Code.string_of_mlexpr ([], "") head1 in
            FStar_Util.format1 "todo: translate_expr [MLE_App] (head is: %s)"
              uu____5607 in
          failwith uu____5606
      | FStar_Extraction_ML_Syntax.MLE_Seq seqs ->
          let uu____5613 = FStar_List.map (translate_expr env) seqs in
          ESequence uu____5613
      | FStar_Extraction_ML_Syntax.MLE_Tuple es ->
          let uu____5619 = FStar_List.map (translate_expr env) es in
          ETuple uu____5619
      | FStar_Extraction_ML_Syntax.MLE_CTor ((uu____5622,cons1),es) ->
          let uu____5639 =
            let uu____5648 = assert_lid env e.FStar_Extraction_ML_Syntax.mlty in
            let uu____5649 = FStar_List.map (translate_expr env) es in
            (uu____5648, cons1, uu____5649) in
          ECons uu____5639
      | FStar_Extraction_ML_Syntax.MLE_Fun (args,body) ->
          let binders = translate_binders env args in
          let env1 = add_binders env args in
          let uu____5672 =
            let uu____5681 = translate_expr env1 body in
            let uu____5682 =
              translate_type env1 body.FStar_Extraction_ML_Syntax.mlty in
            (binders, uu____5681, uu____5682) in
          EFun uu____5672
      | FStar_Extraction_ML_Syntax.MLE_If (e1,e2,e3) ->
          let uu____5692 =
            let uu____5699 = translate_expr env e1 in
            let uu____5700 = translate_expr env e2 in
            let uu____5701 =
              match e3 with
              | FStar_Pervasives_Native.None  -> EUnit
              | FStar_Pervasives_Native.Some e31 -> translate_expr env e31 in
            (uu____5699, uu____5700, uu____5701) in
          EIfThenElse uu____5692
      | FStar_Extraction_ML_Syntax.MLE_Raise uu____5703 ->
          failwith "todo: translate_expr [MLE_Raise]"
      | FStar_Extraction_ML_Syntax.MLE_Try uu____5710 ->
          failwith "todo: translate_expr [MLE_Try]"
      | FStar_Extraction_ML_Syntax.MLE_Coerce uu____5725 ->
          failwith "todo: translate_expr [MLE_Coerce]"
and assert_lid: env -> FStar_Extraction_ML_Syntax.mlty -> typ =
  fun env  ->
    fun t  ->
      match t with
      | FStar_Extraction_ML_Syntax.MLTY_Named (ts,lid) ->
          if (FStar_List.length ts) > (Prims.parse_int "0")
          then
            let uu____5740 =
              let uu____5753 = FStar_List.map (translate_type env) ts in
              (lid, uu____5753) in
            TApp uu____5740
          else TQualified lid
      | uu____5759 -> failwith "invalid argument: assert_lid"
and translate_branches:
  env ->
    (FStar_Extraction_ML_Syntax.mlpattern,FStar_Extraction_ML_Syntax.mlexpr
                                            FStar_Pervasives_Native.option,
      FStar_Extraction_ML_Syntax.mlexpr) FStar_Pervasives_Native.tuple3
      Prims.list -> (pattern,expr) FStar_Pervasives_Native.tuple2 Prims.list
  =
  fun env  -> fun branches  -> FStar_List.map (translate_branch env) branches
and translate_branch:
  env ->
    (FStar_Extraction_ML_Syntax.mlpattern,FStar_Extraction_ML_Syntax.mlexpr
                                            FStar_Pervasives_Native.option,
      FStar_Extraction_ML_Syntax.mlexpr) FStar_Pervasives_Native.tuple3 ->
      (pattern,expr) FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun uu____5785  ->
      match uu____5785 with
      | (pat,guard,expr) ->
          if guard = FStar_Pervasives_Native.None
          then
            let uu____5811 = translate_pat env pat in
            (match uu____5811 with
             | (env1,pat1) ->
                 let uu____5822 = translate_expr env1 expr in
                 (pat1, uu____5822))
          else failwith "todo: translate_branch"
and translate_pat:
  env ->
    FStar_Extraction_ML_Syntax.mlpattern ->
      (env,pattern) FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun p  ->
      match p with
      | FStar_Extraction_ML_Syntax.MLP_Const
          (FStar_Extraction_ML_Syntax.MLC_Unit ) -> (env, PUnit)
      | FStar_Extraction_ML_Syntax.MLP_Const
          (FStar_Extraction_ML_Syntax.MLC_Bool b) -> (env, (PBool b))
      | FStar_Extraction_ML_Syntax.MLP_Var name ->
          let env1 = extend env name false in
          (env1, (PVar { name; typ = TAny; mut = false }))
      | FStar_Extraction_ML_Syntax.MLP_Wild  ->
          let env1 = extend env "_" false in
          (env1, (PVar { name = "_"; typ = TAny; mut = false }))
      | FStar_Extraction_ML_Syntax.MLP_CTor ((uu____5838,cons1),ps) ->
          let uu____5855 =
            FStar_List.fold_left
              (fun uu____5875  ->
                 fun p1  ->
                   match uu____5875 with
                   | (env1,acc) ->
                       let uu____5895 = translate_pat env1 p1 in
                       (match uu____5895 with
                        | (env2,p2) -> (env2, (p2 :: acc)))) (env, []) ps in
          (match uu____5855 with
           | (env1,ps1) -> (env1, (PCons (cons1, (FStar_List.rev ps1)))))
      | FStar_Extraction_ML_Syntax.MLP_Record (uu____5924,ps) ->
          let uu____5942 =
            FStar_List.fold_left
              (fun uu____5976  ->
                 fun uu____5977  ->
                   match (uu____5976, uu____5977) with
                   | ((env1,acc),(field,p1)) ->
                       let uu____6046 = translate_pat env1 p1 in
                       (match uu____6046 with
                        | (env2,p2) -> (env2, ((field, p2) :: acc))))
              (env, []) ps in
          (match uu____5942 with
           | (env1,ps1) -> (env1, (PRecord (FStar_List.rev ps1))))
      | FStar_Extraction_ML_Syntax.MLP_Tuple ps ->
          let uu____6108 =
            FStar_List.fold_left
              (fun uu____6128  ->
                 fun p1  ->
                   match uu____6128 with
                   | (env1,acc) ->
                       let uu____6148 = translate_pat env1 p1 in
                       (match uu____6148 with
                        | (env2,p2) -> (env2, (p2 :: acc)))) (env, []) ps in
          (match uu____6108 with
           | (env1,ps1) -> (env1, (PTuple (FStar_List.rev ps1))))
      | FStar_Extraction_ML_Syntax.MLP_Const uu____6175 ->
          failwith "todo: translate_pat [MLP_Const]"
      | FStar_Extraction_ML_Syntax.MLP_Branch uu____6180 ->
          failwith "todo: translate_pat [MLP_Branch]"
and translate_constant: FStar_Extraction_ML_Syntax.mlconstant -> expr =
  fun c  ->
    match c with
    | FStar_Extraction_ML_Syntax.MLC_Unit  -> EUnit
    | FStar_Extraction_ML_Syntax.MLC_Bool b -> EBool b
    | FStar_Extraction_ML_Syntax.MLC_Int
        (s,FStar_Pervasives_Native.Some uu____6190) ->
        failwith
          "impossible: machine integer not desugared to a function call"
    | FStar_Extraction_ML_Syntax.MLC_Float uu____6205 ->
        failwith "todo: translate_expr [MLC_Float]"
    | FStar_Extraction_ML_Syntax.MLC_Char uu____6206 ->
        failwith "todo: translate_expr [MLC_Char]"
    | FStar_Extraction_ML_Syntax.MLC_String uu____6207 ->
        failwith "todo: translate_expr [MLC_String]"
    | FStar_Extraction_ML_Syntax.MLC_Bytes uu____6208 ->
        failwith "todo: translate_expr [MLC_Bytes]"
    | FStar_Extraction_ML_Syntax.MLC_Int (s,FStar_Pervasives_Native.None ) ->
        EConstant (CInt, s)
and mk_op_app:
  env -> width -> op -> FStar_Extraction_ML_Syntax.mlexpr Prims.list -> expr
  =
  fun env  ->
    fun w  ->
      fun op  ->
        fun args  ->
          let uu____6228 =
            let uu____6235 = FStar_List.map (translate_expr env) args in
            ((EOp (op, w)), uu____6235) in
          EApp uu____6228