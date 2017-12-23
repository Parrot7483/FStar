open Prims
type env =
  {
  env: FStar_TypeChecker_Env.env;
  subst: FStar_Syntax_Syntax.subst_elt Prims.list;
  tc_const: FStar_Const.sconst -> FStar_Syntax_Syntax.typ;}[@@deriving show]
let __proj__Mkenv__item__env: env -> FStar_TypeChecker_Env.env =
  fun projectee  ->
    match projectee with
    | { env = __fname__env; subst = __fname__subst;
        tc_const = __fname__tc_const;_} -> __fname__env
let __proj__Mkenv__item__subst:
  env -> FStar_Syntax_Syntax.subst_elt Prims.list =
  fun projectee  ->
    match projectee with
    | { env = __fname__env; subst = __fname__subst;
        tc_const = __fname__tc_const;_} -> __fname__subst
let __proj__Mkenv__item__tc_const:
  env -> FStar_Const.sconst -> FStar_Syntax_Syntax.typ =
  fun projectee  ->
    match projectee with
    | { env = __fname__env; subst = __fname__subst;
        tc_const = __fname__tc_const;_} -> __fname__tc_const
let empty:
  FStar_TypeChecker_Env.env ->
    (FStar_Const.sconst -> FStar_Syntax_Syntax.typ) -> env
  = fun env  -> fun tc_const  -> { env; subst = []; tc_const }
let gen_wps_for_free:
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.binders ->
      FStar_Syntax_Syntax.bv ->
        FStar_Syntax_Syntax.term ->
          FStar_Syntax_Syntax.eff_decl ->
            (FStar_Syntax_Syntax.sigelts,FStar_Syntax_Syntax.eff_decl)
              FStar_Pervasives_Native.tuple2
  =
  fun env  ->
    fun binders  ->
      fun a  ->
        fun wp_a  ->
          fun ed  ->
            let wp_a1 =
              FStar_TypeChecker_Normalize.normalize
                [FStar_TypeChecker_Normalize.Beta;
                FStar_TypeChecker_Normalize.EraseUniverses] env wp_a in
            let a1 =
              let uu___73_93 = a in
              let uu____94 =
                FStar_TypeChecker_Normalize.normalize
                  [FStar_TypeChecker_Normalize.EraseUniverses] env
                  a.FStar_Syntax_Syntax.sort in
              {
                FStar_Syntax_Syntax.ppname =
                  (uu___73_93.FStar_Syntax_Syntax.ppname);
                FStar_Syntax_Syntax.index =
                  (uu___73_93.FStar_Syntax_Syntax.index);
                FStar_Syntax_Syntax.sort = uu____94
              } in
            let d s = FStar_Util.print1 "\027[01;36m%s\027[00m\n" s in
            (let uu____102 =
               FStar_TypeChecker_Env.debug env (FStar_Options.Other "ED") in
             if uu____102
             then
               (d "Elaborating extra WP combinators";
                (let uu____104 = FStar_Syntax_Print.term_to_string wp_a1 in
                 FStar_Util.print1 "wp_a is: %s\n" uu____104))
             else ());
            (let rec collect_binders t =
               let uu____116 =
                 let uu____117 =
                   let uu____120 = FStar_Syntax_Subst.compress t in
                   FStar_All.pipe_left FStar_Syntax_Util.unascribe uu____120 in
                 uu____117.FStar_Syntax_Syntax.n in
               match uu____116 with
               | FStar_Syntax_Syntax.Tm_arrow (bs,comp) ->
                   let rest =
                     match comp.FStar_Syntax_Syntax.n with
                     | FStar_Syntax_Syntax.Total (t1,uu____151) -> t1
                     | uu____160 -> failwith "wp_a contains non-Tot arrow" in
                   let uu____163 = collect_binders rest in
                   FStar_List.append bs uu____163
               | FStar_Syntax_Syntax.Tm_type uu____174 -> []
               | uu____179 -> failwith "wp_a doesn't end in Type0" in
             let mk_lid name = FStar_Syntax_Util.dm4f_lid ed name in
             let gamma =
               let uu____197 = collect_binders wp_a1 in
               FStar_All.pipe_right uu____197 FStar_Syntax_Util.name_binders in
             (let uu____217 =
                FStar_TypeChecker_Env.debug env (FStar_Options.Other "ED") in
              if uu____217
              then
                let uu____218 =
                  let uu____219 =
                    FStar_Syntax_Print.binders_to_string ", " gamma in
                  FStar_Util.format1 "Gamma is %s\n" uu____219 in
                d uu____218
              else ());
             (let unknown = FStar_Syntax_Syntax.tun in
              let mk1 x =
                FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
                  FStar_Range.dummyRange in
              let sigelts = FStar_Util.mk_ref [] in
              let register env1 lident def =
                let uu____245 =
                  FStar_TypeChecker_Util.mk_toplevel_definition env1 lident
                    def in
                match uu____245 with
                | (sigelt,fv) ->
                    ((let uu____253 =
                        let uu____256 = FStar_ST.op_Bang sigelts in sigelt ::
                          uu____256 in
                      FStar_ST.op_Colon_Equals sigelts uu____253);
                     fv) in
              let binders_of_list1 =
                FStar_List.map
                  (fun uu____434  ->
                     match uu____434 with
                     | (t,b) ->
                         let uu____445 = FStar_Syntax_Syntax.as_implicit b in
                         (t, uu____445)) in
              let mk_all_implicit =
                FStar_List.map
                  (fun t  ->
                     let uu____476 = FStar_Syntax_Syntax.as_implicit true in
                     ((FStar_Pervasives_Native.fst t), uu____476)) in
              let args_of_binders1 =
                FStar_List.map
                  (fun bv  ->
                     let uu____499 =
                       FStar_Syntax_Syntax.bv_to_name
                         (FStar_Pervasives_Native.fst bv) in
                     FStar_Syntax_Syntax.as_arg uu____499) in
              let uu____500 =
                let uu____515 =
                  let mk2 f =
                    let t =
                      FStar_Syntax_Syntax.gen_bv "t"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let body =
                      let uu____537 = f (FStar_Syntax_Syntax.bv_to_name t) in
                      FStar_Syntax_Util.arrow gamma uu____537 in
                    let uu____540 =
                      let uu____541 =
                        let uu____548 = FStar_Syntax_Syntax.mk_binder a1 in
                        let uu____549 =
                          let uu____552 = FStar_Syntax_Syntax.mk_binder t in
                          [uu____552] in
                        uu____548 :: uu____549 in
                      FStar_List.append binders uu____541 in
                    FStar_Syntax_Util.abs uu____540 body
                      FStar_Pervasives_Native.None in
                  let uu____557 = mk2 FStar_Syntax_Syntax.mk_Total in
                  let uu____558 = mk2 FStar_Syntax_Syntax.mk_GTotal in
                  (uu____557, uu____558) in
                match uu____515 with
                | (ctx_def,gctx_def) ->
                    let ctx_lid = mk_lid "ctx" in
                    let ctx_fv = register env ctx_lid ctx_def in
                    let gctx_lid = mk_lid "gctx" in
                    let gctx_fv = register env gctx_lid gctx_def in
                    let mk_app1 fv t =
                      let uu____592 =
                        let uu____593 =
                          let uu____608 =
                            let uu____615 =
                              FStar_List.map
                                (fun uu____635  ->
                                   match uu____635 with
                                   | (bv,uu____645) ->
                                       let uu____646 =
                                         FStar_Syntax_Syntax.bv_to_name bv in
                                       let uu____647 =
                                         FStar_Syntax_Syntax.as_implicit
                                           false in
                                       (uu____646, uu____647)) binders in
                            let uu____648 =
                              let uu____655 =
                                let uu____660 =
                                  FStar_Syntax_Syntax.bv_to_name a1 in
                                let uu____661 =
                                  FStar_Syntax_Syntax.as_implicit false in
                                (uu____660, uu____661) in
                              let uu____662 =
                                let uu____669 =
                                  let uu____674 =
                                    FStar_Syntax_Syntax.as_implicit false in
                                  (t, uu____674) in
                                [uu____669] in
                              uu____655 :: uu____662 in
                            FStar_List.append uu____615 uu____648 in
                          (fv, uu____608) in
                        FStar_Syntax_Syntax.Tm_app uu____593 in
                      mk1 uu____592 in
                    (env, (mk_app1 ctx_fv), (mk_app1 gctx_fv)) in
              match uu____500 with
              | (env1,mk_ctx,mk_gctx) ->
                  let c_pure =
                    let t =
                      FStar_Syntax_Syntax.gen_bv "t"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let x =
                      let uu____733 = FStar_Syntax_Syntax.bv_to_name t in
                      FStar_Syntax_Syntax.gen_bv "x"
                        FStar_Pervasives_Native.None uu____733 in
                    let ret1 =
                      let uu____737 =
                        let uu____738 =
                          let uu____741 = FStar_Syntax_Syntax.bv_to_name t in
                          mk_ctx uu____741 in
                        FStar_Syntax_Util.residual_tot uu____738 in
                      FStar_Pervasives_Native.Some uu____737 in
                    let body =
                      let uu____743 = FStar_Syntax_Syntax.bv_to_name x in
                      FStar_Syntax_Util.abs gamma uu____743 ret1 in
                    let uu____744 =
                      let uu____745 = mk_all_implicit binders in
                      let uu____752 =
                        binders_of_list1 [(a1, true); (t, true); (x, false)] in
                      FStar_List.append uu____745 uu____752 in
                    FStar_Syntax_Util.abs uu____744 body ret1 in
                  let c_pure1 =
                    let uu____780 = mk_lid "pure" in
                    register env1 uu____780 c_pure in
                  let c_app =
                    let t1 =
                      FStar_Syntax_Syntax.gen_bv "t1"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let t2 =
                      FStar_Syntax_Syntax.gen_bv "t2"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let l =
                      let uu____785 =
                        let uu____786 =
                          let uu____787 =
                            let uu____794 =
                              let uu____795 =
                                let uu____796 =
                                  FStar_Syntax_Syntax.bv_to_name t1 in
                                FStar_Syntax_Syntax.new_bv
                                  FStar_Pervasives_Native.None uu____796 in
                              FStar_Syntax_Syntax.mk_binder uu____795 in
                            [uu____794] in
                          let uu____797 =
                            let uu____800 = FStar_Syntax_Syntax.bv_to_name t2 in
                            FStar_Syntax_Syntax.mk_GTotal uu____800 in
                          FStar_Syntax_Util.arrow uu____787 uu____797 in
                        mk_gctx uu____786 in
                      FStar_Syntax_Syntax.gen_bv "l"
                        FStar_Pervasives_Native.None uu____785 in
                    let r =
                      let uu____802 =
                        let uu____803 = FStar_Syntax_Syntax.bv_to_name t1 in
                        mk_gctx uu____803 in
                      FStar_Syntax_Syntax.gen_bv "r"
                        FStar_Pervasives_Native.None uu____802 in
                    let ret1 =
                      let uu____807 =
                        let uu____808 =
                          let uu____811 = FStar_Syntax_Syntax.bv_to_name t2 in
                          mk_gctx uu____811 in
                        FStar_Syntax_Util.residual_tot uu____808 in
                      FStar_Pervasives_Native.Some uu____807 in
                    let outer_body =
                      let gamma_as_args = args_of_binders1 gamma in
                      let inner_body =
                        let uu____819 = FStar_Syntax_Syntax.bv_to_name l in
                        let uu____822 =
                          let uu____831 =
                            let uu____834 =
                              let uu____835 =
                                let uu____836 =
                                  FStar_Syntax_Syntax.bv_to_name r in
                                FStar_Syntax_Util.mk_app uu____836
                                  gamma_as_args in
                              FStar_Syntax_Syntax.as_arg uu____835 in
                            [uu____834] in
                          FStar_List.append gamma_as_args uu____831 in
                        FStar_Syntax_Util.mk_app uu____819 uu____822 in
                      FStar_Syntax_Util.abs gamma inner_body ret1 in
                    let uu____839 =
                      let uu____840 = mk_all_implicit binders in
                      let uu____847 =
                        binders_of_list1
                          [(a1, true);
                          (t1, true);
                          (t2, true);
                          (l, false);
                          (r, false)] in
                      FStar_List.append uu____840 uu____847 in
                    FStar_Syntax_Util.abs uu____839 outer_body ret1 in
                  let c_app1 =
                    let uu____883 = mk_lid "app" in
                    register env1 uu____883 c_app in
                  let c_lift1 =
                    let t1 =
                      FStar_Syntax_Syntax.gen_bv "t1"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let t2 =
                      FStar_Syntax_Syntax.gen_bv "t2"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let t_f =
                      let uu____890 =
                        let uu____897 =
                          let uu____898 = FStar_Syntax_Syntax.bv_to_name t1 in
                          FStar_Syntax_Syntax.null_binder uu____898 in
                        [uu____897] in
                      let uu____899 =
                        let uu____902 = FStar_Syntax_Syntax.bv_to_name t2 in
                        FStar_Syntax_Syntax.mk_GTotal uu____902 in
                      FStar_Syntax_Util.arrow uu____890 uu____899 in
                    let f =
                      FStar_Syntax_Syntax.gen_bv "f"
                        FStar_Pervasives_Native.None t_f in
                    let a11 =
                      let uu____905 =
                        let uu____906 = FStar_Syntax_Syntax.bv_to_name t1 in
                        mk_gctx uu____906 in
                      FStar_Syntax_Syntax.gen_bv "a1"
                        FStar_Pervasives_Native.None uu____905 in
                    let ret1 =
                      let uu____910 =
                        let uu____911 =
                          let uu____914 = FStar_Syntax_Syntax.bv_to_name t2 in
                          mk_gctx uu____914 in
                        FStar_Syntax_Util.residual_tot uu____911 in
                      FStar_Pervasives_Native.Some uu____910 in
                    let uu____915 =
                      let uu____916 = mk_all_implicit binders in
                      let uu____923 =
                        binders_of_list1
                          [(a1, true);
                          (t1, true);
                          (t2, true);
                          (f, false);
                          (a11, false)] in
                      FStar_List.append uu____916 uu____923 in
                    let uu____958 =
                      let uu____959 =
                        let uu____968 =
                          let uu____971 =
                            let uu____974 =
                              let uu____983 =
                                let uu____986 =
                                  FStar_Syntax_Syntax.bv_to_name f in
                                [uu____986] in
                              FStar_List.map FStar_Syntax_Syntax.as_arg
                                uu____983 in
                            FStar_Syntax_Util.mk_app c_pure1 uu____974 in
                          let uu____987 =
                            let uu____992 =
                              FStar_Syntax_Syntax.bv_to_name a11 in
                            [uu____992] in
                          uu____971 :: uu____987 in
                        FStar_List.map FStar_Syntax_Syntax.as_arg uu____968 in
                      FStar_Syntax_Util.mk_app c_app1 uu____959 in
                    FStar_Syntax_Util.abs uu____915 uu____958 ret1 in
                  let c_lift11 =
                    let uu____996 = mk_lid "lift1" in
                    register env1 uu____996 c_lift1 in
                  let c_lift2 =
                    let t1 =
                      FStar_Syntax_Syntax.gen_bv "t1"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let t2 =
                      FStar_Syntax_Syntax.gen_bv "t2"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let t3 =
                      FStar_Syntax_Syntax.gen_bv "t3"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let t_f =
                      let uu____1004 =
                        let uu____1011 =
                          let uu____1012 = FStar_Syntax_Syntax.bv_to_name t1 in
                          FStar_Syntax_Syntax.null_binder uu____1012 in
                        let uu____1013 =
                          let uu____1016 =
                            let uu____1017 =
                              FStar_Syntax_Syntax.bv_to_name t2 in
                            FStar_Syntax_Syntax.null_binder uu____1017 in
                          [uu____1016] in
                        uu____1011 :: uu____1013 in
                      let uu____1018 =
                        let uu____1021 = FStar_Syntax_Syntax.bv_to_name t3 in
                        FStar_Syntax_Syntax.mk_GTotal uu____1021 in
                      FStar_Syntax_Util.arrow uu____1004 uu____1018 in
                    let f =
                      FStar_Syntax_Syntax.gen_bv "f"
                        FStar_Pervasives_Native.None t_f in
                    let a11 =
                      let uu____1024 =
                        let uu____1025 = FStar_Syntax_Syntax.bv_to_name t1 in
                        mk_gctx uu____1025 in
                      FStar_Syntax_Syntax.gen_bv "a1"
                        FStar_Pervasives_Native.None uu____1024 in
                    let a2 =
                      let uu____1027 =
                        let uu____1028 = FStar_Syntax_Syntax.bv_to_name t2 in
                        mk_gctx uu____1028 in
                      FStar_Syntax_Syntax.gen_bv "a2"
                        FStar_Pervasives_Native.None uu____1027 in
                    let ret1 =
                      let uu____1032 =
                        let uu____1033 =
                          let uu____1036 = FStar_Syntax_Syntax.bv_to_name t3 in
                          mk_gctx uu____1036 in
                        FStar_Syntax_Util.residual_tot uu____1033 in
                      FStar_Pervasives_Native.Some uu____1032 in
                    let uu____1037 =
                      let uu____1038 = mk_all_implicit binders in
                      let uu____1045 =
                        binders_of_list1
                          [(a1, true);
                          (t1, true);
                          (t2, true);
                          (t3, true);
                          (f, false);
                          (a11, false);
                          (a2, false)] in
                      FStar_List.append uu____1038 uu____1045 in
                    let uu____1088 =
                      let uu____1089 =
                        let uu____1098 =
                          let uu____1101 =
                            let uu____1104 =
                              let uu____1113 =
                                let uu____1116 =
                                  let uu____1119 =
                                    let uu____1128 =
                                      let uu____1131 =
                                        FStar_Syntax_Syntax.bv_to_name f in
                                      [uu____1131] in
                                    FStar_List.map FStar_Syntax_Syntax.as_arg
                                      uu____1128 in
                                  FStar_Syntax_Util.mk_app c_pure1 uu____1119 in
                                let uu____1132 =
                                  let uu____1137 =
                                    FStar_Syntax_Syntax.bv_to_name a11 in
                                  [uu____1137] in
                                uu____1116 :: uu____1132 in
                              FStar_List.map FStar_Syntax_Syntax.as_arg
                                uu____1113 in
                            FStar_Syntax_Util.mk_app c_app1 uu____1104 in
                          let uu____1140 =
                            let uu____1145 =
                              FStar_Syntax_Syntax.bv_to_name a2 in
                            [uu____1145] in
                          uu____1101 :: uu____1140 in
                        FStar_List.map FStar_Syntax_Syntax.as_arg uu____1098 in
                      FStar_Syntax_Util.mk_app c_app1 uu____1089 in
                    FStar_Syntax_Util.abs uu____1037 uu____1088 ret1 in
                  let c_lift21 =
                    let uu____1149 = mk_lid "lift2" in
                    register env1 uu____1149 c_lift2 in
                  let c_push =
                    let t1 =
                      FStar_Syntax_Syntax.gen_bv "t1"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let t2 =
                      FStar_Syntax_Syntax.gen_bv "t2"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let t_f =
                      let uu____1156 =
                        let uu____1163 =
                          let uu____1164 = FStar_Syntax_Syntax.bv_to_name t1 in
                          FStar_Syntax_Syntax.null_binder uu____1164 in
                        [uu____1163] in
                      let uu____1165 =
                        let uu____1168 =
                          let uu____1169 = FStar_Syntax_Syntax.bv_to_name t2 in
                          mk_gctx uu____1169 in
                        FStar_Syntax_Syntax.mk_Total uu____1168 in
                      FStar_Syntax_Util.arrow uu____1156 uu____1165 in
                    let f =
                      FStar_Syntax_Syntax.gen_bv "f"
                        FStar_Pervasives_Native.None t_f in
                    let ret1 =
                      let uu____1174 =
                        let uu____1175 =
                          let uu____1178 =
                            let uu____1179 =
                              let uu____1186 =
                                let uu____1187 =
                                  FStar_Syntax_Syntax.bv_to_name t1 in
                                FStar_Syntax_Syntax.null_binder uu____1187 in
                              [uu____1186] in
                            let uu____1188 =
                              let uu____1191 =
                                FStar_Syntax_Syntax.bv_to_name t2 in
                              FStar_Syntax_Syntax.mk_GTotal uu____1191 in
                            FStar_Syntax_Util.arrow uu____1179 uu____1188 in
                          mk_ctx uu____1178 in
                        FStar_Syntax_Util.residual_tot uu____1175 in
                      FStar_Pervasives_Native.Some uu____1174 in
                    let e1 =
                      let uu____1193 = FStar_Syntax_Syntax.bv_to_name t1 in
                      FStar_Syntax_Syntax.gen_bv "e1"
                        FStar_Pervasives_Native.None uu____1193 in
                    let body =
                      let uu____1195 =
                        let uu____1196 =
                          let uu____1203 = FStar_Syntax_Syntax.mk_binder e1 in
                          [uu____1203] in
                        FStar_List.append gamma uu____1196 in
                      let uu____1208 =
                        let uu____1209 = FStar_Syntax_Syntax.bv_to_name f in
                        let uu____1212 =
                          let uu____1221 =
                            let uu____1222 =
                              FStar_Syntax_Syntax.bv_to_name e1 in
                            FStar_Syntax_Syntax.as_arg uu____1222 in
                          let uu____1223 = args_of_binders1 gamma in
                          uu____1221 :: uu____1223 in
                        FStar_Syntax_Util.mk_app uu____1209 uu____1212 in
                      FStar_Syntax_Util.abs uu____1195 uu____1208 ret1 in
                    let uu____1226 =
                      let uu____1227 = mk_all_implicit binders in
                      let uu____1234 =
                        binders_of_list1
                          [(a1, true); (t1, true); (t2, true); (f, false)] in
                      FStar_List.append uu____1227 uu____1234 in
                    FStar_Syntax_Util.abs uu____1226 body ret1 in
                  let c_push1 =
                    let uu____1266 = mk_lid "push" in
                    register env1 uu____1266 c_push in
                  let ret_tot_wp_a =
                    FStar_Pervasives_Native.Some
                      (FStar_Syntax_Util.residual_tot wp_a1) in
                  let mk_generic_app c =
                    if (FStar_List.length binders) > (Prims.parse_int "0")
                    then
                      let uu____1286 =
                        let uu____1287 =
                          let uu____1302 = args_of_binders1 binders in
                          (c, uu____1302) in
                        FStar_Syntax_Syntax.Tm_app uu____1287 in
                      mk1 uu____1286
                    else c in
                  let wp_if_then_else =
                    let result_comp =
                      let uu____1312 =
                        let uu____1313 =
                          let uu____1320 =
                            FStar_Syntax_Syntax.null_binder wp_a1 in
                          let uu____1321 =
                            let uu____1324 =
                              FStar_Syntax_Syntax.null_binder wp_a1 in
                            [uu____1324] in
                          uu____1320 :: uu____1321 in
                        let uu____1325 = FStar_Syntax_Syntax.mk_Total wp_a1 in
                        FStar_Syntax_Util.arrow uu____1313 uu____1325 in
                      FStar_Syntax_Syntax.mk_Total uu____1312 in
                    let c =
                      FStar_Syntax_Syntax.gen_bv "c"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let uu____1329 =
                      let uu____1330 =
                        FStar_Syntax_Syntax.binders_of_list [a1; c] in
                      FStar_List.append binders uu____1330 in
                    let uu____1341 =
                      let l_ite =
                        FStar_Syntax_Syntax.fvar FStar_Parser_Const.ite_lid
                          (FStar_Syntax_Syntax.Delta_defined_at_level
                             (Prims.parse_int "2"))
                          FStar_Pervasives_Native.None in
                      let uu____1343 =
                        let uu____1346 =
                          let uu____1355 =
                            let uu____1358 =
                              let uu____1361 =
                                let uu____1370 =
                                  let uu____1371 =
                                    FStar_Syntax_Syntax.bv_to_name c in
                                  FStar_Syntax_Syntax.as_arg uu____1371 in
                                [uu____1370] in
                              FStar_Syntax_Util.mk_app l_ite uu____1361 in
                            [uu____1358] in
                          FStar_List.map FStar_Syntax_Syntax.as_arg
                            uu____1355 in
                        FStar_Syntax_Util.mk_app c_lift21 uu____1346 in
                      FStar_Syntax_Util.ascribe uu____1343
                        ((FStar_Util.Inr result_comp),
                          FStar_Pervasives_Native.None) in
                    FStar_Syntax_Util.abs uu____1329 uu____1341
                      (FStar_Pervasives_Native.Some
                         (FStar_Syntax_Util.residual_comp_of_comp result_comp)) in
                  let wp_if_then_else1 =
                    let uu____1391 = mk_lid "wp_if_then_else" in
                    register env1 uu____1391 wp_if_then_else in
                  let wp_if_then_else2 = mk_generic_app wp_if_then_else1 in
                  let wp_assert =
                    let q =
                      FStar_Syntax_Syntax.gen_bv "q"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let wp =
                      FStar_Syntax_Syntax.gen_bv "wp"
                        FStar_Pervasives_Native.None wp_a1 in
                    let l_and =
                      FStar_Syntax_Syntax.fvar FStar_Parser_Const.and_lid
                        (FStar_Syntax_Syntax.Delta_defined_at_level
                           (Prims.parse_int "1"))
                        FStar_Pervasives_Native.None in
                    let body =
                      let uu____1402 =
                        let uu____1411 =
                          let uu____1414 =
                            let uu____1417 =
                              let uu____1426 =
                                let uu____1429 =
                                  let uu____1432 =
                                    let uu____1441 =
                                      let uu____1442 =
                                        FStar_Syntax_Syntax.bv_to_name q in
                                      FStar_Syntax_Syntax.as_arg uu____1442 in
                                    [uu____1441] in
                                  FStar_Syntax_Util.mk_app l_and uu____1432 in
                                [uu____1429] in
                              FStar_List.map FStar_Syntax_Syntax.as_arg
                                uu____1426 in
                            FStar_Syntax_Util.mk_app c_pure1 uu____1417 in
                          let uu____1447 =
                            let uu____1452 =
                              FStar_Syntax_Syntax.bv_to_name wp in
                            [uu____1452] in
                          uu____1414 :: uu____1447 in
                        FStar_List.map FStar_Syntax_Syntax.as_arg uu____1411 in
                      FStar_Syntax_Util.mk_app c_app1 uu____1402 in
                    let uu____1455 =
                      let uu____1456 =
                        FStar_Syntax_Syntax.binders_of_list [a1; q; wp] in
                      FStar_List.append binders uu____1456 in
                    FStar_Syntax_Util.abs uu____1455 body ret_tot_wp_a in
                  let wp_assert1 =
                    let uu____1468 = mk_lid "wp_assert" in
                    register env1 uu____1468 wp_assert in
                  let wp_assert2 = mk_generic_app wp_assert1 in
                  let wp_assume =
                    let q =
                      FStar_Syntax_Syntax.gen_bv "q"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let wp =
                      FStar_Syntax_Syntax.gen_bv "wp"
                        FStar_Pervasives_Native.None wp_a1 in
                    let l_imp =
                      FStar_Syntax_Syntax.fvar FStar_Parser_Const.imp_lid
                        (FStar_Syntax_Syntax.Delta_defined_at_level
                           (Prims.parse_int "1"))
                        FStar_Pervasives_Native.None in
                    let body =
                      let uu____1479 =
                        let uu____1488 =
                          let uu____1491 =
                            let uu____1494 =
                              let uu____1503 =
                                let uu____1506 =
                                  let uu____1509 =
                                    let uu____1518 =
                                      let uu____1519 =
                                        FStar_Syntax_Syntax.bv_to_name q in
                                      FStar_Syntax_Syntax.as_arg uu____1519 in
                                    [uu____1518] in
                                  FStar_Syntax_Util.mk_app l_imp uu____1509 in
                                [uu____1506] in
                              FStar_List.map FStar_Syntax_Syntax.as_arg
                                uu____1503 in
                            FStar_Syntax_Util.mk_app c_pure1 uu____1494 in
                          let uu____1524 =
                            let uu____1529 =
                              FStar_Syntax_Syntax.bv_to_name wp in
                            [uu____1529] in
                          uu____1491 :: uu____1524 in
                        FStar_List.map FStar_Syntax_Syntax.as_arg uu____1488 in
                      FStar_Syntax_Util.mk_app c_app1 uu____1479 in
                    let uu____1532 =
                      let uu____1533 =
                        FStar_Syntax_Syntax.binders_of_list [a1; q; wp] in
                      FStar_List.append binders uu____1533 in
                    FStar_Syntax_Util.abs uu____1532 body ret_tot_wp_a in
                  let wp_assume1 =
                    let uu____1545 = mk_lid "wp_assume" in
                    register env1 uu____1545 wp_assume in
                  let wp_assume2 = mk_generic_app wp_assume1 in
                  let wp_close =
                    let b =
                      FStar_Syntax_Syntax.gen_bv "b"
                        FStar_Pervasives_Native.None FStar_Syntax_Util.ktype in
                    let t_f =
                      let uu____1554 =
                        let uu____1561 =
                          let uu____1562 = FStar_Syntax_Syntax.bv_to_name b in
                          FStar_Syntax_Syntax.null_binder uu____1562 in
                        [uu____1561] in
                      let uu____1563 = FStar_Syntax_Syntax.mk_Total wp_a1 in
                      FStar_Syntax_Util.arrow uu____1554 uu____1563 in
                    let f =
                      FStar_Syntax_Syntax.gen_bv "f"
                        FStar_Pervasives_Native.None t_f in
                    let body =
                      let uu____1570 =
                        let uu____1579 =
                          let uu____1582 =
                            let uu____1585 =
                              FStar_List.map FStar_Syntax_Syntax.as_arg
                                [FStar_Syntax_Util.tforall] in
                            FStar_Syntax_Util.mk_app c_pure1 uu____1585 in
                          let uu____1594 =
                            let uu____1599 =
                              let uu____1602 =
                                let uu____1611 =
                                  let uu____1614 =
                                    FStar_Syntax_Syntax.bv_to_name f in
                                  [uu____1614] in
                                FStar_List.map FStar_Syntax_Syntax.as_arg
                                  uu____1611 in
                              FStar_Syntax_Util.mk_app c_push1 uu____1602 in
                            [uu____1599] in
                          uu____1582 :: uu____1594 in
                        FStar_List.map FStar_Syntax_Syntax.as_arg uu____1579 in
                      FStar_Syntax_Util.mk_app c_app1 uu____1570 in
                    let uu____1621 =
                      let uu____1622 =
                        FStar_Syntax_Syntax.binders_of_list [a1; b; f] in
                      FStar_List.append binders uu____1622 in
                    FStar_Syntax_Util.abs uu____1621 body ret_tot_wp_a in
                  let wp_close1 =
                    let uu____1634 = mk_lid "wp_close" in
                    register env1 uu____1634 wp_close in
                  let wp_close2 = mk_generic_app wp_close1 in
                  let ret_tot_type =
                    FStar_Pervasives_Native.Some
                      (FStar_Syntax_Util.residual_tot FStar_Syntax_Util.ktype) in
                  let ret_gtot_type =
                    let uu____1644 =
                      let uu____1645 =
                        let uu____1646 =
                          FStar_Syntax_Syntax.mk_GTotal
                            FStar_Syntax_Util.ktype in
                        FStar_All.pipe_left FStar_Syntax_Util.lcomp_of_comp
                          uu____1646 in
                      FStar_Syntax_Util.residual_comp_of_lcomp uu____1645 in
                    FStar_Pervasives_Native.Some uu____1644 in
                  let mk_forall1 x body =
                    let uu____1658 =
                      let uu____1661 =
                        let uu____1662 =
                          let uu____1677 =
                            let uu____1680 =
                              let uu____1681 =
                                let uu____1682 =
                                  let uu____1683 =
                                    FStar_Syntax_Syntax.mk_binder x in
                                  [uu____1683] in
                                FStar_Syntax_Util.abs uu____1682 body
                                  ret_tot_type in
                              FStar_Syntax_Syntax.as_arg uu____1681 in
                            [uu____1680] in
                          (FStar_Syntax_Util.tforall, uu____1677) in
                        FStar_Syntax_Syntax.Tm_app uu____1662 in
                      FStar_Syntax_Syntax.mk uu____1661 in
                    uu____1658 FStar_Pervasives_Native.None
                      FStar_Range.dummyRange in
                  let rec is_discrete t =
                    let uu____1693 =
                      let uu____1694 = FStar_Syntax_Subst.compress t in
                      uu____1694.FStar_Syntax_Syntax.n in
                    match uu____1693 with
                    | FStar_Syntax_Syntax.Tm_type uu____1697 -> false
                    | FStar_Syntax_Syntax.Tm_arrow (bs,c) ->
                        (FStar_List.for_all
                           (fun uu____1723  ->
                              match uu____1723 with
                              | (b,uu____1729) ->
                                  is_discrete b.FStar_Syntax_Syntax.sort) bs)
                          && (is_discrete (FStar_Syntax_Util.comp_result c))
                    | uu____1730 -> true in
                  let rec is_monotonic t =
                    let uu____1735 =
                      let uu____1736 = FStar_Syntax_Subst.compress t in
                      uu____1736.FStar_Syntax_Syntax.n in
                    match uu____1735 with
                    | FStar_Syntax_Syntax.Tm_type uu____1739 -> true
                    | FStar_Syntax_Syntax.Tm_arrow (bs,c) ->
                        (FStar_List.for_all
                           (fun uu____1765  ->
                              match uu____1765 with
                              | (b,uu____1771) ->
                                  is_discrete b.FStar_Syntax_Syntax.sort) bs)
                          && (is_monotonic (FStar_Syntax_Util.comp_result c))
                    | uu____1772 -> is_discrete t in
                  let rec mk_rel rel t x y =
                    let mk_rel1 = mk_rel rel in
                    let t1 =
                      FStar_TypeChecker_Normalize.normalize
                        [FStar_TypeChecker_Normalize.Beta;
                        FStar_TypeChecker_Normalize.Eager_unfolding;
                        FStar_TypeChecker_Normalize.UnfoldUntil
                          FStar_Syntax_Syntax.Delta_constant] env1 t in
                    let uu____1824 =
                      let uu____1825 = FStar_Syntax_Subst.compress t1 in
                      uu____1825.FStar_Syntax_Syntax.n in
                    match uu____1824 with
                    | FStar_Syntax_Syntax.Tm_type uu____1828 -> rel x y
                    | FStar_Syntax_Syntax.Tm_arrow
                        (binder::[],{
                                      FStar_Syntax_Syntax.n =
                                        FStar_Syntax_Syntax.GTotal
                                        (b,uu____1831);
                                      FStar_Syntax_Syntax.pos = uu____1832;
                                      FStar_Syntax_Syntax.vars = uu____1833;_})
                        ->
                        let a2 =
                          (FStar_Pervasives_Native.fst binder).FStar_Syntax_Syntax.sort in
                        let uu____1867 =
                          (is_monotonic a2) || (is_monotonic b) in
                        if uu____1867
                        then
                          let a11 =
                            FStar_Syntax_Syntax.gen_bv "a1"
                              FStar_Pervasives_Native.None a2 in
                          let body =
                            let uu____1870 =
                              let uu____1873 =
                                let uu____1882 =
                                  let uu____1883 =
                                    FStar_Syntax_Syntax.bv_to_name a11 in
                                  FStar_Syntax_Syntax.as_arg uu____1883 in
                                [uu____1882] in
                              FStar_Syntax_Util.mk_app x uu____1873 in
                            let uu____1884 =
                              let uu____1887 =
                                let uu____1896 =
                                  let uu____1897 =
                                    FStar_Syntax_Syntax.bv_to_name a11 in
                                  FStar_Syntax_Syntax.as_arg uu____1897 in
                                [uu____1896] in
                              FStar_Syntax_Util.mk_app y uu____1887 in
                            mk_rel1 b uu____1870 uu____1884 in
                          mk_forall1 a11 body
                        else
                          (let a11 =
                             FStar_Syntax_Syntax.gen_bv "a1"
                               FStar_Pervasives_Native.None a2 in
                           let a21 =
                             FStar_Syntax_Syntax.gen_bv "a2"
                               FStar_Pervasives_Native.None a2 in
                           let body =
                             let uu____1902 =
                               let uu____1903 =
                                 FStar_Syntax_Syntax.bv_to_name a11 in
                               let uu____1906 =
                                 FStar_Syntax_Syntax.bv_to_name a21 in
                               mk_rel1 a2 uu____1903 uu____1906 in
                             let uu____1909 =
                               let uu____1910 =
                                 let uu____1913 =
                                   let uu____1922 =
                                     let uu____1923 =
                                       FStar_Syntax_Syntax.bv_to_name a11 in
                                     FStar_Syntax_Syntax.as_arg uu____1923 in
                                   [uu____1922] in
                                 FStar_Syntax_Util.mk_app x uu____1913 in
                               let uu____1924 =
                                 let uu____1927 =
                                   let uu____1936 =
                                     let uu____1937 =
                                       FStar_Syntax_Syntax.bv_to_name a21 in
                                     FStar_Syntax_Syntax.as_arg uu____1937 in
                                   [uu____1936] in
                                 FStar_Syntax_Util.mk_app y uu____1927 in
                               mk_rel1 b uu____1910 uu____1924 in
                             FStar_Syntax_Util.mk_imp uu____1902 uu____1909 in
                           let uu____1938 = mk_forall1 a21 body in
                           mk_forall1 a11 uu____1938)
                    | FStar_Syntax_Syntax.Tm_arrow
                        (binder::[],{
                                      FStar_Syntax_Syntax.n =
                                        FStar_Syntax_Syntax.Total
                                        (b,uu____1941);
                                      FStar_Syntax_Syntax.pos = uu____1942;
                                      FStar_Syntax_Syntax.vars = uu____1943;_})
                        ->
                        let a2 =
                          (FStar_Pervasives_Native.fst binder).FStar_Syntax_Syntax.sort in
                        let uu____1977 =
                          (is_monotonic a2) || (is_monotonic b) in
                        if uu____1977
                        then
                          let a11 =
                            FStar_Syntax_Syntax.gen_bv "a1"
                              FStar_Pervasives_Native.None a2 in
                          let body =
                            let uu____1980 =
                              let uu____1983 =
                                let uu____1992 =
                                  let uu____1993 =
                                    FStar_Syntax_Syntax.bv_to_name a11 in
                                  FStar_Syntax_Syntax.as_arg uu____1993 in
                                [uu____1992] in
                              FStar_Syntax_Util.mk_app x uu____1983 in
                            let uu____1994 =
                              let uu____1997 =
                                let uu____2006 =
                                  let uu____2007 =
                                    FStar_Syntax_Syntax.bv_to_name a11 in
                                  FStar_Syntax_Syntax.as_arg uu____2007 in
                                [uu____2006] in
                              FStar_Syntax_Util.mk_app y uu____1997 in
                            mk_rel1 b uu____1980 uu____1994 in
                          mk_forall1 a11 body
                        else
                          (let a11 =
                             FStar_Syntax_Syntax.gen_bv "a1"
                               FStar_Pervasives_Native.None a2 in
                           let a21 =
                             FStar_Syntax_Syntax.gen_bv "a2"
                               FStar_Pervasives_Native.None a2 in
                           let body =
                             let uu____2012 =
                               let uu____2013 =
                                 FStar_Syntax_Syntax.bv_to_name a11 in
                               let uu____2016 =
                                 FStar_Syntax_Syntax.bv_to_name a21 in
                               mk_rel1 a2 uu____2013 uu____2016 in
                             let uu____2019 =
                               let uu____2020 =
                                 let uu____2023 =
                                   let uu____2032 =
                                     let uu____2033 =
                                       FStar_Syntax_Syntax.bv_to_name a11 in
                                     FStar_Syntax_Syntax.as_arg uu____2033 in
                                   [uu____2032] in
                                 FStar_Syntax_Util.mk_app x uu____2023 in
                               let uu____2034 =
                                 let uu____2037 =
                                   let uu____2046 =
                                     let uu____2047 =
                                       FStar_Syntax_Syntax.bv_to_name a21 in
                                     FStar_Syntax_Syntax.as_arg uu____2047 in
                                   [uu____2046] in
                                 FStar_Syntax_Util.mk_app y uu____2037 in
                               mk_rel1 b uu____2020 uu____2034 in
                             FStar_Syntax_Util.mk_imp uu____2012 uu____2019 in
                           let uu____2048 = mk_forall1 a21 body in
                           mk_forall1 a11 uu____2048)
                    | FStar_Syntax_Syntax.Tm_arrow (binder::binders1,comp) ->
                        let t2 =
                          let uu___74_2079 = t1 in
                          let uu____2080 =
                            let uu____2081 =
                              let uu____2094 =
                                let uu____2095 =
                                  FStar_Syntax_Util.arrow binders1 comp in
                                FStar_Syntax_Syntax.mk_Total uu____2095 in
                              ([binder], uu____2094) in
                            FStar_Syntax_Syntax.Tm_arrow uu____2081 in
                          {
                            FStar_Syntax_Syntax.n = uu____2080;
                            FStar_Syntax_Syntax.pos =
                              (uu___74_2079.FStar_Syntax_Syntax.pos);
                            FStar_Syntax_Syntax.vars =
                              (uu___74_2079.FStar_Syntax_Syntax.vars)
                          } in
                        mk_rel1 t2 x y
                    | FStar_Syntax_Syntax.Tm_arrow uu____2110 ->
                        failwith "unhandled arrow"
                    | uu____2123 -> FStar_Syntax_Util.mk_untyped_eq2 x y in
                  let stronger =
                    let wp1 =
                      FStar_Syntax_Syntax.gen_bv "wp1"
                        FStar_Pervasives_Native.None wp_a1 in
                    let wp2 =
                      FStar_Syntax_Syntax.gen_bv "wp2"
                        FStar_Pervasives_Native.None wp_a1 in
                    let rec mk_stronger t x y =
                      let t1 =
                        FStar_TypeChecker_Normalize.normalize
                          [FStar_TypeChecker_Normalize.Beta;
                          FStar_TypeChecker_Normalize.Eager_unfolding;
                          FStar_TypeChecker_Normalize.UnfoldUntil
                            FStar_Syntax_Syntax.Delta_constant] env1 t in
                      let uu____2138 =
                        let uu____2139 = FStar_Syntax_Subst.compress t1 in
                        uu____2139.FStar_Syntax_Syntax.n in
                      match uu____2138 with
                      | FStar_Syntax_Syntax.Tm_type uu____2142 ->
                          FStar_Syntax_Util.mk_imp x y
                      | FStar_Syntax_Syntax.Tm_app (head1,args) when
                          let uu____2165 = FStar_Syntax_Subst.compress head1 in
                          FStar_Syntax_Util.is_tuple_constructor uu____2165
                          ->
                          let project i tuple =
                            let projector =
                              let uu____2180 =
                                let uu____2181 =
                                  FStar_Parser_Const.mk_tuple_data_lid
                                    (FStar_List.length args)
                                    FStar_Range.dummyRange in
                                FStar_TypeChecker_Env.lookup_projector env1
                                  uu____2181 i in
                              FStar_Syntax_Syntax.fvar uu____2180
                                (FStar_Syntax_Syntax.Delta_defined_at_level
                                   (Prims.parse_int "1"))
                                FStar_Pervasives_Native.None in
                            FStar_Syntax_Util.mk_app projector
                              [(tuple, FStar_Pervasives_Native.None)] in
                          let uu____2208 =
                            let uu____2215 =
                              FStar_List.mapi
                                (fun i  ->
                                   fun uu____2229  ->
                                     match uu____2229 with
                                     | (t2,q) ->
                                         let uu____2236 = project i x in
                                         let uu____2237 = project i y in
                                         mk_stronger t2 uu____2236 uu____2237)
                                args in
                            match uu____2215 with
                            | [] ->
                                failwith
                                  "Impossible : Empty application when creating stronger relation in DM4F"
                            | rel0::rels -> (rel0, rels) in
                          (match uu____2208 with
                           | (rel0,rels) ->
                               FStar_List.fold_left FStar_Syntax_Util.mk_conj
                                 rel0 rels)
                      | FStar_Syntax_Syntax.Tm_arrow
                          (binders1,{
                                      FStar_Syntax_Syntax.n =
                                        FStar_Syntax_Syntax.GTotal
                                        (b,uu____2264);
                                      FStar_Syntax_Syntax.pos = uu____2265;
                                      FStar_Syntax_Syntax.vars = uu____2266;_})
                          ->
                          let bvs =
                            FStar_List.mapi
                              (fun i  ->
                                 fun uu____2304  ->
                                   match uu____2304 with
                                   | (bv,q) ->
                                       let uu____2311 =
                                         let uu____2312 =
                                           FStar_Util.string_of_int i in
                                         Prims.strcat "a" uu____2312 in
                                       FStar_Syntax_Syntax.gen_bv uu____2311
                                         FStar_Pervasives_Native.None
                                         bv.FStar_Syntax_Syntax.sort)
                              binders1 in
                          let args =
                            FStar_List.map
                              (fun ai  ->
                                 let uu____2319 =
                                   FStar_Syntax_Syntax.bv_to_name ai in
                                 FStar_Syntax_Syntax.as_arg uu____2319) bvs in
                          let body =
                            let uu____2321 = FStar_Syntax_Util.mk_app x args in
                            let uu____2322 = FStar_Syntax_Util.mk_app y args in
                            mk_stronger b uu____2321 uu____2322 in
                          FStar_List.fold_right
                            (fun bv  -> fun body1  -> mk_forall1 bv body1)
                            bvs body
                      | FStar_Syntax_Syntax.Tm_arrow
                          (binders1,{
                                      FStar_Syntax_Syntax.n =
                                        FStar_Syntax_Syntax.Total
                                        (b,uu____2329);
                                      FStar_Syntax_Syntax.pos = uu____2330;
                                      FStar_Syntax_Syntax.vars = uu____2331;_})
                          ->
                          let bvs =
                            FStar_List.mapi
                              (fun i  ->
                                 fun uu____2369  ->
                                   match uu____2369 with
                                   | (bv,q) ->
                                       let uu____2376 =
                                         let uu____2377 =
                                           FStar_Util.string_of_int i in
                                         Prims.strcat "a" uu____2377 in
                                       FStar_Syntax_Syntax.gen_bv uu____2376
                                         FStar_Pervasives_Native.None
                                         bv.FStar_Syntax_Syntax.sort)
                              binders1 in
                          let args =
                            FStar_List.map
                              (fun ai  ->
                                 let uu____2384 =
                                   FStar_Syntax_Syntax.bv_to_name ai in
                                 FStar_Syntax_Syntax.as_arg uu____2384) bvs in
                          let body =
                            let uu____2386 = FStar_Syntax_Util.mk_app x args in
                            let uu____2387 = FStar_Syntax_Util.mk_app y args in
                            mk_stronger b uu____2386 uu____2387 in
                          FStar_List.fold_right
                            (fun bv  -> fun body1  -> mk_forall1 bv body1)
                            bvs body
                      | uu____2392 -> failwith "Not a DM elaborated type" in
                    let body =
                      let uu____2394 = FStar_Syntax_Util.unascribe wp_a1 in
                      let uu____2395 = FStar_Syntax_Syntax.bv_to_name wp1 in
                      let uu____2396 = FStar_Syntax_Syntax.bv_to_name wp2 in
                      mk_stronger uu____2394 uu____2395 uu____2396 in
                    let uu____2397 =
                      let uu____2398 =
                        binders_of_list1
                          [(a1, false); (wp1, false); (wp2, false)] in
                      FStar_List.append binders uu____2398 in
                    FStar_Syntax_Util.abs uu____2397 body ret_tot_type in
                  let stronger1 =
                    let uu____2426 = mk_lid "stronger" in
                    register env1 uu____2426 stronger in
                  let stronger2 = mk_generic_app stronger1 in
                  let wp_ite =
                    let wp =
                      FStar_Syntax_Syntax.gen_bv "wp"
                        FStar_Pervasives_Native.None wp_a1 in
                    let uu____2432 = FStar_Util.prefix gamma in
                    match uu____2432 with
                    | (wp_args,post) ->
                        let k =
                          FStar_Syntax_Syntax.gen_bv "k"
                            FStar_Pervasives_Native.None
                            (FStar_Pervasives_Native.fst post).FStar_Syntax_Syntax.sort in
                        let equiv1 =
                          let k_tm = FStar_Syntax_Syntax.bv_to_name k in
                          let eq1 =
                            let uu____2477 =
                              FStar_Syntax_Syntax.bv_to_name
                                (FStar_Pervasives_Native.fst post) in
                            mk_rel FStar_Syntax_Util.mk_iff
                              k.FStar_Syntax_Syntax.sort k_tm uu____2477 in
                          let uu____2480 =
                            FStar_Syntax_Util.destruct_typ_as_formula eq1 in
                          match uu____2480 with
                          | FStar_Pervasives_Native.Some
                              (FStar_Syntax_Util.QAll (binders1,[],body)) ->
                              let k_app =
                                let uu____2490 = args_of_binders1 binders1 in
                                FStar_Syntax_Util.mk_app k_tm uu____2490 in
                              let guard_free1 =
                                let uu____2500 =
                                  FStar_Syntax_Syntax.lid_as_fv
                                    FStar_Parser_Const.guard_free
                                    FStar_Syntax_Syntax.Delta_constant
                                    FStar_Pervasives_Native.None in
                                FStar_Syntax_Syntax.fv_to_tm uu____2500 in
                              let pat =
                                let uu____2504 =
                                  let uu____2513 =
                                    FStar_Syntax_Syntax.as_arg k_app in
                                  [uu____2513] in
                                FStar_Syntax_Util.mk_app guard_free1
                                  uu____2504 in
                              let pattern_guarded_body =
                                let uu____2517 =
                                  let uu____2518 =
                                    let uu____2525 =
                                      let uu____2526 =
                                        let uu____2537 =
                                          let uu____2540 =
                                            FStar_Syntax_Syntax.as_arg pat in
                                          [uu____2540] in
                                        [uu____2537] in
                                      FStar_Syntax_Syntax.Meta_pattern
                                        uu____2526 in
                                    (body, uu____2525) in
                                  FStar_Syntax_Syntax.Tm_meta uu____2518 in
                                mk1 uu____2517 in
                              FStar_Syntax_Util.close_forall_no_univs
                                binders1 pattern_guarded_body
                          | uu____2545 ->
                              failwith
                                "Impossible: Expected the equivalence to be a quantified formula" in
                        let body =
                          let uu____2549 =
                            let uu____2550 =
                              let uu____2551 =
                                let uu____2552 =
                                  FStar_Syntax_Syntax.bv_to_name wp in
                                let uu____2555 =
                                  let uu____2564 = args_of_binders1 wp_args in
                                  let uu____2567 =
                                    let uu____2570 =
                                      let uu____2571 =
                                        FStar_Syntax_Syntax.bv_to_name k in
                                      FStar_Syntax_Syntax.as_arg uu____2571 in
                                    [uu____2570] in
                                  FStar_List.append uu____2564 uu____2567 in
                                FStar_Syntax_Util.mk_app uu____2552
                                  uu____2555 in
                              FStar_Syntax_Util.mk_imp equiv1 uu____2551 in
                            FStar_Syntax_Util.mk_forall_no_univ k uu____2550 in
                          FStar_Syntax_Util.abs gamma uu____2549
                            ret_gtot_type in
                        let uu____2572 =
                          let uu____2573 =
                            FStar_Syntax_Syntax.binders_of_list [a1; wp] in
                          FStar_List.append binders uu____2573 in
                        FStar_Syntax_Util.abs uu____2572 body ret_gtot_type in
                  let wp_ite1 =
                    let uu____2585 = mk_lid "wp_ite" in
                    register env1 uu____2585 wp_ite in
                  let wp_ite2 = mk_generic_app wp_ite1 in
                  let null_wp =
                    let wp =
                      FStar_Syntax_Syntax.gen_bv "wp"
                        FStar_Pervasives_Native.None wp_a1 in
                    let uu____2591 = FStar_Util.prefix gamma in
                    match uu____2591 with
                    | (wp_args,post) ->
                        let x =
                          FStar_Syntax_Syntax.gen_bv "x"
                            FStar_Pervasives_Native.None
                            FStar_Syntax_Syntax.tun in
                        let body =
                          let uu____2634 =
                            let uu____2635 =
                              FStar_All.pipe_left
                                FStar_Syntax_Syntax.bv_to_name
                                (FStar_Pervasives_Native.fst post) in
                            let uu____2638 =
                              let uu____2647 =
                                let uu____2648 =
                                  FStar_Syntax_Syntax.bv_to_name x in
                                FStar_Syntax_Syntax.as_arg uu____2648 in
                              [uu____2647] in
                            FStar_Syntax_Util.mk_app uu____2635 uu____2638 in
                          FStar_Syntax_Util.mk_forall_no_univ x uu____2634 in
                        let uu____2649 =
                          let uu____2650 =
                            let uu____2657 =
                              FStar_Syntax_Syntax.binders_of_list [a1] in
                            FStar_List.append uu____2657 gamma in
                          FStar_List.append binders uu____2650 in
                        FStar_Syntax_Util.abs uu____2649 body ret_gtot_type in
                  let null_wp1 =
                    let uu____2673 = mk_lid "null_wp" in
                    register env1 uu____2673 null_wp in
                  let null_wp2 = mk_generic_app null_wp1 in
                  let wp_trivial =
                    let wp =
                      FStar_Syntax_Syntax.gen_bv "wp"
                        FStar_Pervasives_Native.None wp_a1 in
                    let body =
                      let uu____2682 =
                        let uu____2691 =
                          let uu____2694 = FStar_Syntax_Syntax.bv_to_name a1 in
                          let uu____2695 =
                            let uu____2698 =
                              let uu____2701 =
                                let uu____2710 =
                                  let uu____2711 =
                                    FStar_Syntax_Syntax.bv_to_name a1 in
                                  FStar_Syntax_Syntax.as_arg uu____2711 in
                                [uu____2710] in
                              FStar_Syntax_Util.mk_app null_wp2 uu____2701 in
                            let uu____2712 =
                              let uu____2717 =
                                FStar_Syntax_Syntax.bv_to_name wp in
                              [uu____2717] in
                            uu____2698 :: uu____2712 in
                          uu____2694 :: uu____2695 in
                        FStar_List.map FStar_Syntax_Syntax.as_arg uu____2691 in
                      FStar_Syntax_Util.mk_app stronger2 uu____2682 in
                    let uu____2720 =
                      let uu____2721 =
                        FStar_Syntax_Syntax.binders_of_list [a1; wp] in
                      FStar_List.append binders uu____2721 in
                    FStar_Syntax_Util.abs uu____2720 body ret_tot_type in
                  let wp_trivial1 =
                    let uu____2733 = mk_lid "wp_trivial" in
                    register env1 uu____2733 wp_trivial in
                  let wp_trivial2 = mk_generic_app wp_trivial1 in
                  ((let uu____2738 =
                      FStar_TypeChecker_Env.debug env1
                        (FStar_Options.Other "ED") in
                    if uu____2738
                    then d "End Dijkstra monads for free"
                    else ());
                   (let c = FStar_Syntax_Subst.close binders in
                    let uu____2743 =
                      let uu____2746 = FStar_ST.op_Bang sigelts in
                      FStar_List.rev uu____2746 in
                    let uu____2823 =
                      let uu___75_2824 = ed in
                      let uu____2825 =
                        let uu____2826 = c wp_if_then_else2 in
                        ([], uu____2826) in
                      let uu____2829 =
                        let uu____2830 = c wp_ite2 in ([], uu____2830) in
                      let uu____2833 =
                        let uu____2834 = c stronger2 in ([], uu____2834) in
                      let uu____2837 =
                        let uu____2838 = c wp_close2 in ([], uu____2838) in
                      let uu____2841 =
                        let uu____2842 = c wp_assert2 in ([], uu____2842) in
                      let uu____2845 =
                        let uu____2846 = c wp_assume2 in ([], uu____2846) in
                      let uu____2849 =
                        let uu____2850 = c null_wp2 in ([], uu____2850) in
                      let uu____2853 =
                        let uu____2854 = c wp_trivial2 in ([], uu____2854) in
                      {
                        FStar_Syntax_Syntax.cattributes =
                          (uu___75_2824.FStar_Syntax_Syntax.cattributes);
                        FStar_Syntax_Syntax.mname =
                          (uu___75_2824.FStar_Syntax_Syntax.mname);
                        FStar_Syntax_Syntax.univs =
                          (uu___75_2824.FStar_Syntax_Syntax.univs);
                        FStar_Syntax_Syntax.binders =
                          (uu___75_2824.FStar_Syntax_Syntax.binders);
                        FStar_Syntax_Syntax.signature =
                          (uu___75_2824.FStar_Syntax_Syntax.signature);
                        FStar_Syntax_Syntax.ret_wp =
                          (uu___75_2824.FStar_Syntax_Syntax.ret_wp);
                        FStar_Syntax_Syntax.bind_wp =
                          (uu___75_2824.FStar_Syntax_Syntax.bind_wp);
                        FStar_Syntax_Syntax.if_then_else = uu____2825;
                        FStar_Syntax_Syntax.ite_wp = uu____2829;
                        FStar_Syntax_Syntax.stronger = uu____2833;
                        FStar_Syntax_Syntax.close_wp = uu____2837;
                        FStar_Syntax_Syntax.assert_p = uu____2841;
                        FStar_Syntax_Syntax.assume_p = uu____2845;
                        FStar_Syntax_Syntax.null_wp = uu____2849;
                        FStar_Syntax_Syntax.trivial = uu____2853;
                        FStar_Syntax_Syntax.repr =
                          (uu___75_2824.FStar_Syntax_Syntax.repr);
                        FStar_Syntax_Syntax.return_repr =
                          (uu___75_2824.FStar_Syntax_Syntax.return_repr);
                        FStar_Syntax_Syntax.bind_repr =
                          (uu___75_2824.FStar_Syntax_Syntax.bind_repr);
                        FStar_Syntax_Syntax.actions =
                          (uu___75_2824.FStar_Syntax_Syntax.actions)
                      } in
                    (uu____2743, uu____2823)))))
type env_ = env[@@deriving show]
let get_env: env -> FStar_TypeChecker_Env.env = fun env  -> env.env
let set_env: env -> FStar_TypeChecker_Env.env -> env =
  fun dmff_env  ->
    fun env'  ->
      let uu___76_2868 = dmff_env in
      {
        env = env';
        subst = (uu___76_2868.subst);
        tc_const = (uu___76_2868.tc_const)
      }
type nm =
  | N of FStar_Syntax_Syntax.typ
  | M of FStar_Syntax_Syntax.typ[@@deriving show]
let uu___is_N: nm -> Prims.bool =
  fun projectee  -> match projectee with | N _0 -> true | uu____2881 -> false
let __proj__N__item___0: nm -> FStar_Syntax_Syntax.typ =
  fun projectee  -> match projectee with | N _0 -> _0
let uu___is_M: nm -> Prims.bool =
  fun projectee  -> match projectee with | M _0 -> true | uu____2893 -> false
let __proj__M__item___0: nm -> FStar_Syntax_Syntax.typ =
  fun projectee  -> match projectee with | M _0 -> _0
type nm_ = nm[@@deriving show]
let nm_of_comp: FStar_Syntax_Syntax.comp' -> nm =
  fun uu___62_2903  ->
    match uu___62_2903 with
    | FStar_Syntax_Syntax.Total (t,uu____2905) -> N t
    | FStar_Syntax_Syntax.Comp c when
        FStar_All.pipe_right c.FStar_Syntax_Syntax.flags
          (FStar_Util.for_some
             (fun uu___61_2918  ->
                match uu___61_2918 with
                | FStar_Syntax_Syntax.CPS  -> true
                | uu____2919 -> false))
        -> M (c.FStar_Syntax_Syntax.result_typ)
    | FStar_Syntax_Syntax.Comp c ->
        let uu____2921 =
          let uu____2922 =
            let uu____2923 = FStar_Syntax_Syntax.mk_Comp c in
            FStar_All.pipe_left FStar_Syntax_Print.comp_to_string uu____2923 in
          FStar_Util.format1 "[nm_of_comp]: impossible (%s)" uu____2922 in
        failwith uu____2921
    | FStar_Syntax_Syntax.GTotal uu____2924 ->
        failwith "[nm_of_comp]: impossible (GTot)"
let string_of_nm: nm -> Prims.string =
  fun uu___63_2935  ->
    match uu___63_2935 with
    | N t ->
        let uu____2937 = FStar_Syntax_Print.term_to_string t in
        FStar_Util.format1 "N[%s]" uu____2937
    | M t ->
        let uu____2939 = FStar_Syntax_Print.term_to_string t in
        FStar_Util.format1 "M[%s]" uu____2939
let is_monadic_arrow: FStar_Syntax_Syntax.term' -> nm =
  fun n1  ->
    match n1 with
    | FStar_Syntax_Syntax.Tm_arrow
        (uu____2943,{ FStar_Syntax_Syntax.n = n2;
                      FStar_Syntax_Syntax.pos = uu____2945;
                      FStar_Syntax_Syntax.vars = uu____2946;_})
        -> nm_of_comp n2
    | uu____2963 -> failwith "unexpected_argument: [is_monadic_arrow]"
let is_monadic_comp:
  FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax -> Prims.bool =
  fun c  ->
    let uu____2971 = nm_of_comp c.FStar_Syntax_Syntax.n in
    match uu____2971 with | M uu____2972 -> true | N uu____2973 -> false
exception Not_found
let uu___is_Not_found: Prims.exn -> Prims.bool =
  fun projectee  ->
    match projectee with | Not_found  -> true | uu____2977 -> false
let double_star: FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ =
  fun typ  ->
    let star_once typ1 =
      let uu____2987 =
        let uu____2994 =
          let uu____2995 =
            FStar_Syntax_Syntax.new_bv FStar_Pervasives_Native.None typ1 in
          FStar_All.pipe_left FStar_Syntax_Syntax.mk_binder uu____2995 in
        [uu____2994] in
      let uu____2996 = FStar_Syntax_Syntax.mk_Total FStar_Syntax_Util.ktype0 in
      FStar_Syntax_Util.arrow uu____2987 uu____2996 in
    let uu____2999 = FStar_All.pipe_right typ star_once in
    FStar_All.pipe_left star_once uu____2999
let rec mk_star_to_type:
  (FStar_Syntax_Syntax.term' ->
     FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
    ->
    env ->
      FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
        FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax
  =
  fun mk1  ->
    fun env  ->
      fun a  ->
        mk1
          (let uu____3036 =
             let uu____3049 =
               let uu____3056 =
                 let uu____3061 =
                   let uu____3062 = star_type' env a in
                   FStar_Syntax_Syntax.null_bv uu____3062 in
                 let uu____3063 = FStar_Syntax_Syntax.as_implicit false in
                 (uu____3061, uu____3063) in
               [uu____3056] in
             let uu____3072 =
               FStar_Syntax_Syntax.mk_Total FStar_Syntax_Util.ktype0 in
             (uu____3049, uu____3072) in
           FStar_Syntax_Syntax.Tm_arrow uu____3036)
and star_type':
  env ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
      FStar_Syntax_Syntax.term
  =
  fun env  ->
    fun t  ->
      let mk1 x =
        FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
          t.FStar_Syntax_Syntax.pos in
      let mk_star_to_type1 = mk_star_to_type mk1 in
      let t1 = FStar_Syntax_Subst.compress t in
      match t1.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Tm_arrow (binders,uu____3100) ->
          let binders1 =
            FStar_List.map
              (fun uu____3136  ->
                 match uu____3136 with
                 | (bv,aqual) ->
                     let uu____3147 =
                       let uu___77_3148 = bv in
                       let uu____3149 =
                         star_type' env bv.FStar_Syntax_Syntax.sort in
                       {
                         FStar_Syntax_Syntax.ppname =
                           (uu___77_3148.FStar_Syntax_Syntax.ppname);
                         FStar_Syntax_Syntax.index =
                           (uu___77_3148.FStar_Syntax_Syntax.index);
                         FStar_Syntax_Syntax.sort = uu____3149
                       } in
                     (uu____3147, aqual)) binders in
          (match t1.FStar_Syntax_Syntax.n with
           | FStar_Syntax_Syntax.Tm_arrow
               (uu____3152,{
                             FStar_Syntax_Syntax.n =
                               FStar_Syntax_Syntax.GTotal (hn,uu____3154);
                             FStar_Syntax_Syntax.pos = uu____3155;
                             FStar_Syntax_Syntax.vars = uu____3156;_})
               ->
               let uu____3181 =
                 let uu____3182 =
                   let uu____3195 =
                     let uu____3196 = star_type' env hn in
                     FStar_Syntax_Syntax.mk_GTotal uu____3196 in
                   (binders1, uu____3195) in
                 FStar_Syntax_Syntax.Tm_arrow uu____3182 in
               mk1 uu____3181
           | uu____3203 ->
               let uu____3204 = is_monadic_arrow t1.FStar_Syntax_Syntax.n in
               (match uu____3204 with
                | N hn ->
                    let uu____3206 =
                      let uu____3207 =
                        let uu____3220 =
                          let uu____3221 = star_type' env hn in
                          FStar_Syntax_Syntax.mk_Total uu____3221 in
                        (binders1, uu____3220) in
                      FStar_Syntax_Syntax.Tm_arrow uu____3207 in
                    mk1 uu____3206
                | M a ->
                    let uu____3229 =
                      let uu____3230 =
                        let uu____3243 =
                          let uu____3250 =
                            let uu____3257 =
                              let uu____3262 =
                                let uu____3263 = mk_star_to_type1 env a in
                                FStar_Syntax_Syntax.null_bv uu____3263 in
                              let uu____3264 =
                                FStar_Syntax_Syntax.as_implicit false in
                              (uu____3262, uu____3264) in
                            [uu____3257] in
                          FStar_List.append binders1 uu____3250 in
                        let uu____3277 =
                          FStar_Syntax_Syntax.mk_Total
                            FStar_Syntax_Util.ktype0 in
                        (uu____3243, uu____3277) in
                      FStar_Syntax_Syntax.Tm_arrow uu____3230 in
                    mk1 uu____3229))
      | FStar_Syntax_Syntax.Tm_app (head1,args) ->
          let debug1 t2 s =
            let string_of_set f s1 =
              let elts = FStar_Util.set_elements s1 in
              match elts with
              | [] -> "{}"
              | x::xs ->
                  let strb = FStar_Util.new_string_builder () in
                  (FStar_Util.string_builder_append strb "{";
                   (let uu____3347 = f x in
                    FStar_Util.string_builder_append strb uu____3347);
                   FStar_List.iter
                     (fun x1  ->
                        FStar_Util.string_builder_append strb ", ";
                        (let uu____3354 = f x1 in
                         FStar_Util.string_builder_append strb uu____3354))
                     xs;
                   FStar_Util.string_builder_append strb "}";
                   FStar_Util.string_of_string_builder strb) in
            let uu____3356 =
              let uu____3361 =
                let uu____3362 = FStar_Syntax_Print.term_to_string t2 in
                let uu____3363 =
                  string_of_set FStar_Syntax_Print.bv_to_string s in
                FStar_Util.format2 "Dependency found in term %s : %s"
                  uu____3362 uu____3363 in
              (FStar_Errors.Warning_DependencyFound, uu____3361) in
            FStar_Errors.log_issue t2.FStar_Syntax_Syntax.pos uu____3356 in
          let rec is_non_dependent_arrow ty n1 =
            let uu____3371 =
              let uu____3372 = FStar_Syntax_Subst.compress ty in
              uu____3372.FStar_Syntax_Syntax.n in
            match uu____3371 with
            | FStar_Syntax_Syntax.Tm_arrow (binders,c) ->
                let uu____3393 =
                  let uu____3394 = FStar_Syntax_Util.is_tot_or_gtot_comp c in
                  Prims.op_Negation uu____3394 in
                if uu____3393
                then false
                else
                  (try
                     let non_dependent_or_raise s ty1 =
                       let sinter =
                         let uu____3420 = FStar_Syntax_Free.names ty1 in
                         FStar_Util.set_intersect uu____3420 s in
                       let uu____3423 =
                         let uu____3424 = FStar_Util.set_is_empty sinter in
                         Prims.op_Negation uu____3424 in
                       if uu____3423
                       then (debug1 ty1 sinter; FStar_Exn.raise Not_found)
                       else () in
                     let uu____3427 = FStar_Syntax_Subst.open_comp binders c in
                     match uu____3427 with
                     | (binders1,c1) ->
                         let s =
                           FStar_List.fold_left
                             (fun s  ->
                                fun uu____3449  ->
                                  match uu____3449 with
                                  | (bv,uu____3459) ->
                                      (non_dependent_or_raise s
                                         bv.FStar_Syntax_Syntax.sort;
                                       FStar_Util.set_add bv s))
                             FStar_Syntax_Syntax.no_names binders1 in
                         let ct = FStar_Syntax_Util.comp_result c1 in
                         (non_dependent_or_raise s ct;
                          (let k = n1 - (FStar_List.length binders1) in
                           if k > (Prims.parse_int "0")
                           then is_non_dependent_arrow ct k
                           else true))
                   with | Not_found  -> false)
            | uu____3473 ->
                ((let uu____3475 =
                    let uu____3480 =
                      let uu____3481 = FStar_Syntax_Print.term_to_string ty in
                      FStar_Util.format1 "Not a dependent arrow : %s"
                        uu____3481 in
                    (FStar_Errors.Warning_NotDependentArrow, uu____3480) in
                  FStar_Errors.log_issue ty.FStar_Syntax_Syntax.pos
                    uu____3475);
                 false) in
          let rec is_valid_application head2 =
            let uu____3486 =
              let uu____3487 = FStar_Syntax_Subst.compress head2 in
              uu____3487.FStar_Syntax_Syntax.n in
            match uu____3486 with
            | FStar_Syntax_Syntax.Tm_fvar fv when
                (((FStar_Syntax_Syntax.fv_eq_lid fv
                     FStar_Parser_Const.option_lid)
                    ||
                    (FStar_Syntax_Syntax.fv_eq_lid fv
                       FStar_Parser_Const.either_lid))
                   ||
                   (FStar_Syntax_Syntax.fv_eq_lid fv
                      FStar_Parser_Const.eq2_lid))
                  ||
                  (let uu____3492 = FStar_Syntax_Subst.compress head2 in
                   FStar_Syntax_Util.is_tuple_constructor uu____3492)
                -> true
            | FStar_Syntax_Syntax.Tm_fvar fv ->
                let uu____3494 =
                  FStar_TypeChecker_Env.lookup_lid env.env
                    (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                (match uu____3494 with
                 | ((uu____3503,ty),uu____3505) ->
                     let uu____3510 =
                       is_non_dependent_arrow ty (FStar_List.length args) in
                     if uu____3510
                     then
                       let res =
                         FStar_TypeChecker_Normalize.normalize
                           [FStar_TypeChecker_Normalize.EraseUniverses;
                           FStar_TypeChecker_Normalize.Inlining;
                           FStar_TypeChecker_Normalize.UnfoldUntil
                             FStar_Syntax_Syntax.Delta_constant] env.env t1 in
                       let uu____3518 =
                         let uu____3519 = FStar_Syntax_Subst.compress res in
                         uu____3519.FStar_Syntax_Syntax.n in
                       (match uu____3518 with
                        | FStar_Syntax_Syntax.Tm_app uu____3522 -> true
                        | uu____3537 ->
                            ((let uu____3539 =
                                let uu____3544 =
                                  let uu____3545 =
                                    FStar_Syntax_Print.term_to_string head2 in
                                  FStar_Util.format1
                                    "Got a term which might be a non-dependent user-defined data-type %s\n"
                                    uu____3545 in
                                (FStar_Errors.Warning_NondependentUserDefinedDataType,
                                  uu____3544) in
                              FStar_Errors.log_issue
                                head2.FStar_Syntax_Syntax.pos uu____3539);
                             false))
                     else false)
            | FStar_Syntax_Syntax.Tm_bvar uu____3547 -> true
            | FStar_Syntax_Syntax.Tm_name uu____3548 -> true
            | FStar_Syntax_Syntax.Tm_uinst (t2,uu____3550) ->
                is_valid_application t2
            | uu____3555 -> false in
          let uu____3556 = is_valid_application head1 in
          if uu____3556
          then
            let uu____3557 =
              let uu____3558 =
                let uu____3573 =
                  FStar_List.map
                    (fun uu____3594  ->
                       match uu____3594 with
                       | (t2,qual) ->
                           let uu____3611 = star_type' env t2 in
                           (uu____3611, qual)) args in
                (head1, uu____3573) in
              FStar_Syntax_Syntax.Tm_app uu____3558 in
            mk1 uu____3557
          else
            (let uu____3621 =
               let uu____3626 =
                 let uu____3627 = FStar_Syntax_Print.term_to_string t1 in
                 FStar_Util.format1
                   "For now, only [either], [option] and [eq2] are supported in the definition language (got: %s)"
                   uu____3627 in
               (FStar_Errors.Fatal_WrongTerm, uu____3626) in
             FStar_Errors.raise_err uu____3621)
      | FStar_Syntax_Syntax.Tm_bvar uu____3628 -> t1
      | FStar_Syntax_Syntax.Tm_name uu____3629 -> t1
      | FStar_Syntax_Syntax.Tm_type uu____3630 -> t1
      | FStar_Syntax_Syntax.Tm_fvar uu____3631 -> t1
      | FStar_Syntax_Syntax.Tm_abs (binders,repr,something) ->
          let uu____3655 = FStar_Syntax_Subst.open_term binders repr in
          (match uu____3655 with
           | (binders1,repr1) ->
               let env1 =
                 let uu___80_3663 = env in
                 let uu____3664 =
                   FStar_TypeChecker_Env.push_binders env.env binders1 in
                 {
                   env = uu____3664;
                   subst = (uu___80_3663.subst);
                   tc_const = (uu___80_3663.tc_const)
                 } in
               let repr2 = star_type' env1 repr1 in
               FStar_Syntax_Util.abs binders1 repr2 something)
      | FStar_Syntax_Syntax.Tm_refine (x,t2) when false ->
          let x1 = FStar_Syntax_Syntax.freshen_bv x in
          let sort = star_type' env x1.FStar_Syntax_Syntax.sort in
          let subst1 = [FStar_Syntax_Syntax.DB ((Prims.parse_int "0"), x1)] in
          let t3 = FStar_Syntax_Subst.subst subst1 t2 in
          let t4 = star_type' env t3 in
          let subst2 = [FStar_Syntax_Syntax.NM (x1, (Prims.parse_int "0"))] in
          let t5 = FStar_Syntax_Subst.subst subst2 t4 in
          mk1
            (FStar_Syntax_Syntax.Tm_refine
               ((let uu___81_3684 = x1 in
                 {
                   FStar_Syntax_Syntax.ppname =
                     (uu___81_3684.FStar_Syntax_Syntax.ppname);
                   FStar_Syntax_Syntax.index =
                     (uu___81_3684.FStar_Syntax_Syntax.index);
                   FStar_Syntax_Syntax.sort = sort
                 }), t5))
      | FStar_Syntax_Syntax.Tm_meta (t2,m) ->
          let uu____3691 =
            let uu____3692 =
              let uu____3699 = star_type' env t2 in (uu____3699, m) in
            FStar_Syntax_Syntax.Tm_meta uu____3692 in
          mk1 uu____3691
      | FStar_Syntax_Syntax.Tm_ascribed
          (e,(FStar_Util.Inl t2,FStar_Pervasives_Native.None ),something) ->
          let uu____3747 =
            let uu____3748 =
              let uu____3775 = star_type' env e in
              let uu____3776 =
                let uu____3791 =
                  let uu____3798 = star_type' env t2 in
                  FStar_Util.Inl uu____3798 in
                (uu____3791, FStar_Pervasives_Native.None) in
              (uu____3775, uu____3776, something) in
            FStar_Syntax_Syntax.Tm_ascribed uu____3748 in
          mk1 uu____3747
      | FStar_Syntax_Syntax.Tm_ascribed
          (e,(FStar_Util.Inr c,FStar_Pervasives_Native.None ),something) ->
          let uu____3876 =
            let uu____3877 =
              let uu____3904 = star_type' env e in
              let uu____3905 =
                let uu____3920 =
                  let uu____3927 =
                    star_type' env (FStar_Syntax_Util.comp_result c) in
                  FStar_Util.Inl uu____3927 in
                (uu____3920, FStar_Pervasives_Native.None) in
              (uu____3904, uu____3905, something) in
            FStar_Syntax_Syntax.Tm_ascribed uu____3877 in
          mk1 uu____3876
      | FStar_Syntax_Syntax.Tm_ascribed (e,uu____3959,uu____3960) ->
          let uu____4001 =
            let uu____4006 =
              let uu____4007 = FStar_Syntax_Print.term_to_string t1 in
              FStar_Util.format1
                "Tm_ascribed (with tactics) is outside of the definition language: %s"
                uu____4007 in
            (FStar_Errors.Fatal_TermOutsideOfDefLanguage, uu____4006) in
          FStar_Errors.raise_err uu____4001
      | FStar_Syntax_Syntax.Tm_refine uu____4008 ->
          let uu____4015 =
            let uu____4020 =
              let uu____4021 = FStar_Syntax_Print.term_to_string t1 in
              FStar_Util.format1
                "Tm_refine is outside of the definition language: %s"
                uu____4021 in
            (FStar_Errors.Fatal_TermOutsideOfDefLanguage, uu____4020) in
          FStar_Errors.raise_err uu____4015
      | FStar_Syntax_Syntax.Tm_uinst uu____4022 ->
          let uu____4029 =
            let uu____4034 =
              let uu____4035 = FStar_Syntax_Print.term_to_string t1 in
              FStar_Util.format1
                "Tm_uinst is outside of the definition language: %s"
                uu____4035 in
            (FStar_Errors.Fatal_TermOutsideOfDefLanguage, uu____4034) in
          FStar_Errors.raise_err uu____4029
      | FStar_Syntax_Syntax.Tm_constant uu____4036 ->
          let uu____4037 =
            let uu____4042 =
              let uu____4043 = FStar_Syntax_Print.term_to_string t1 in
              FStar_Util.format1
                "Tm_constant is outside of the definition language: %s"
                uu____4043 in
            (FStar_Errors.Fatal_TermOutsideOfDefLanguage, uu____4042) in
          FStar_Errors.raise_err uu____4037
      | FStar_Syntax_Syntax.Tm_match uu____4044 ->
          let uu____4067 =
            let uu____4072 =
              let uu____4073 = FStar_Syntax_Print.term_to_string t1 in
              FStar_Util.format1
                "Tm_match is outside of the definition language: %s"
                uu____4073 in
            (FStar_Errors.Fatal_TermOutsideOfDefLanguage, uu____4072) in
          FStar_Errors.raise_err uu____4067
      | FStar_Syntax_Syntax.Tm_let uu____4074 ->
          let uu____4087 =
            let uu____4092 =
              let uu____4093 = FStar_Syntax_Print.term_to_string t1 in
              FStar_Util.format1
                "Tm_let is outside of the definition language: %s" uu____4093 in
            (FStar_Errors.Fatal_TermOutsideOfDefLanguage, uu____4092) in
          FStar_Errors.raise_err uu____4087
      | FStar_Syntax_Syntax.Tm_uvar uu____4094 ->
          let uu____4111 =
            let uu____4116 =
              let uu____4117 = FStar_Syntax_Print.term_to_string t1 in
              FStar_Util.format1
                "Tm_uvar is outside of the definition language: %s"
                uu____4117 in
            (FStar_Errors.Fatal_TermOutsideOfDefLanguage, uu____4116) in
          FStar_Errors.raise_err uu____4111
      | FStar_Syntax_Syntax.Tm_unknown  ->
          let uu____4118 =
            let uu____4123 =
              let uu____4124 = FStar_Syntax_Print.term_to_string t1 in
              FStar_Util.format1
                "Tm_unknown is outside of the definition language: %s"
                uu____4124 in
            (FStar_Errors.Fatal_TermOutsideOfDefLanguage, uu____4123) in
          FStar_Errors.raise_err uu____4118
      | FStar_Syntax_Syntax.Tm_delayed uu____4125 -> failwith "impossible"
let is_monadic:
  FStar_Syntax_Syntax.residual_comp FStar_Pervasives_Native.option ->
    Prims.bool
  =
  fun uu___65_4154  ->
    match uu___65_4154 with
    | FStar_Pervasives_Native.None  -> failwith "un-annotated lambda?!"
    | FStar_Pervasives_Native.Some rc ->
        FStar_All.pipe_right rc.FStar_Syntax_Syntax.residual_flags
          (FStar_Util.for_some
             (fun uu___64_4161  ->
                match uu___64_4161 with
                | FStar_Syntax_Syntax.CPS  -> true
                | uu____4162 -> false))
let rec is_C: FStar_Syntax_Syntax.typ -> Prims.bool =
  fun t  ->
    let uu____4166 =
      let uu____4167 = FStar_Syntax_Subst.compress t in
      uu____4167.FStar_Syntax_Syntax.n in
    match uu____4166 with
    | FStar_Syntax_Syntax.Tm_app (head1,args) when
        FStar_Syntax_Util.is_tuple_constructor head1 ->
        let r =
          let uu____4193 =
            let uu____4194 = FStar_List.hd args in
            FStar_Pervasives_Native.fst uu____4194 in
          is_C uu____4193 in
        if r
        then
          ((let uu____4210 =
              let uu____4211 =
                FStar_List.for_all
                  (fun uu____4219  ->
                     match uu____4219 with | (h,uu____4225) -> is_C h) args in
              Prims.op_Negation uu____4211 in
            if uu____4210 then failwith "not a C (A * C)" else ());
           true)
        else
          ((let uu____4229 =
              let uu____4230 =
                FStar_List.for_all
                  (fun uu____4239  ->
                     match uu____4239 with
                     | (h,uu____4245) ->
                         let uu____4246 = is_C h in
                         Prims.op_Negation uu____4246) args in
              Prims.op_Negation uu____4230 in
            if uu____4229 then failwith "not a C (C * A)" else ());
           false)
    | FStar_Syntax_Syntax.Tm_arrow (binders,comp) ->
        let uu____4266 = nm_of_comp comp.FStar_Syntax_Syntax.n in
        (match uu____4266 with
         | M t1 ->
             ((let uu____4269 = is_C t1 in
               if uu____4269 then failwith "not a C (C -> C)" else ());
              true)
         | N t1 -> is_C t1)
    | FStar_Syntax_Syntax.Tm_meta (t1,uu____4273) -> is_C t1
    | FStar_Syntax_Syntax.Tm_uinst (t1,uu____4279) -> is_C t1
    | FStar_Syntax_Syntax.Tm_ascribed (t1,uu____4285,uu____4286) -> is_C t1
    | uu____4327 -> false
let mk_return:
  env ->
    FStar_Syntax_Syntax.typ ->
      FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
  =
  fun env  ->
    fun t  ->
      fun e  ->
        let mk1 x =
          FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
            e.FStar_Syntax_Syntax.pos in
        let p_type = mk_star_to_type mk1 env t in
        let p =
          FStar_Syntax_Syntax.gen_bv "p'" FStar_Pervasives_Native.None p_type in
        let body =
          let uu____4350 =
            let uu____4351 =
              let uu____4366 = FStar_Syntax_Syntax.bv_to_name p in
              let uu____4367 =
                let uu____4374 =
                  let uu____4379 = FStar_Syntax_Syntax.as_implicit false in
                  (e, uu____4379) in
                [uu____4374] in
              (uu____4366, uu____4367) in
            FStar_Syntax_Syntax.Tm_app uu____4351 in
          mk1 uu____4350 in
        let uu____4394 =
          let uu____4395 = FStar_Syntax_Syntax.mk_binder p in [uu____4395] in
        FStar_Syntax_Util.abs uu____4394 body
          (FStar_Pervasives_Native.Some
             (FStar_Syntax_Util.residual_tot FStar_Syntax_Util.ktype0))
let is_unknown: FStar_Syntax_Syntax.term' -> Prims.bool =
  fun uu___66_4398  ->
    match uu___66_4398 with
    | FStar_Syntax_Syntax.Tm_unknown  -> true
    | uu____4399 -> false
let rec check:
  env ->
    FStar_Syntax_Syntax.term ->
      nm ->
        (nm,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
          FStar_Pervasives_Native.tuple3
  =
  fun env  ->
    fun e  ->
      fun context_nm  ->
        let return_if uu____4574 =
          match uu____4574 with
          | (rec_nm,s_e,u_e) ->
              let check1 t1 t2 =
                let uu____4601 =
                  (Prims.op_Negation (is_unknown t2.FStar_Syntax_Syntax.n))
                    &&
                    (let uu____4603 =
                       let uu____4604 =
                         FStar_TypeChecker_Rel.teq env.env t1 t2 in
                       FStar_TypeChecker_Rel.is_trivial uu____4604 in
                     Prims.op_Negation uu____4603) in
                if uu____4601
                then
                  let uu____4605 =
                    let uu____4610 =
                      let uu____4611 = FStar_Syntax_Print.term_to_string e in
                      let uu____4612 = FStar_Syntax_Print.term_to_string t1 in
                      let uu____4613 = FStar_Syntax_Print.term_to_string t2 in
                      FStar_Util.format3
                        "[check]: the expression [%s] has type [%s] but should have type [%s]"
                        uu____4611 uu____4612 uu____4613 in
                    (FStar_Errors.Fatal_TypeMismatch, uu____4610) in
                  FStar_Errors.raise_err uu____4605
                else () in
              (match (rec_nm, context_nm) with
               | (N t1,N t2) -> (check1 t1 t2; (rec_nm, s_e, u_e))
               | (M t1,M t2) -> (check1 t1 t2; (rec_nm, s_e, u_e))
               | (N t1,M t2) ->
                   (check1 t1 t2;
                    (let uu____4630 = mk_return env t1 s_e in
                     ((M t1), uu____4630, u_e)))
               | (M t1,N t2) ->
                   let uu____4633 =
                     let uu____4638 =
                       let uu____4639 = FStar_Syntax_Print.term_to_string e in
                       let uu____4640 = FStar_Syntax_Print.term_to_string t1 in
                       let uu____4641 = FStar_Syntax_Print.term_to_string t2 in
                       FStar_Util.format3
                         "[check %s]: got an effectful computation [%s] in lieu of a pure computation [%s]"
                         uu____4639 uu____4640 uu____4641 in
                     (FStar_Errors.Fatal_EffectfulAndPureComputationMismatch,
                       uu____4638) in
                   FStar_Errors.raise_err uu____4633) in
        let ensure_m env1 e2 =
          let strip_m uu___67_4682 =
            match uu___67_4682 with
            | (M t,s_e,u_e) -> (t, s_e, u_e)
            | uu____4698 -> failwith "impossible" in
          match context_nm with
          | N t ->
              let uu____4718 =
                let uu____4723 =
                  let uu____4724 = FStar_Syntax_Print.term_to_string t in
                  Prims.strcat
                    "let-bound monadic body has a non-monadic continuation or a branch of a match is monadic and the others aren't : "
                    uu____4724 in
                (FStar_Errors.Fatal_LetBoundMonadicMismatch, uu____4723) in
              FStar_Errors.raise_error uu____4718 e2.FStar_Syntax_Syntax.pos
          | M uu____4731 ->
              let uu____4732 = check env1 e2 context_nm in strip_m uu____4732 in
        let uu____4739 =
          let uu____4740 = FStar_Syntax_Subst.compress e in
          uu____4740.FStar_Syntax_Syntax.n in
        match uu____4739 with
        | FStar_Syntax_Syntax.Tm_bvar uu____4749 ->
            let uu____4750 = infer env e in return_if uu____4750
        | FStar_Syntax_Syntax.Tm_name uu____4757 ->
            let uu____4758 = infer env e in return_if uu____4758
        | FStar_Syntax_Syntax.Tm_fvar uu____4765 ->
            let uu____4766 = infer env e in return_if uu____4766
        | FStar_Syntax_Syntax.Tm_abs uu____4773 ->
            let uu____4790 = infer env e in return_if uu____4790
        | FStar_Syntax_Syntax.Tm_constant uu____4797 ->
            let uu____4798 = infer env e in return_if uu____4798
        | FStar_Syntax_Syntax.Tm_app uu____4805 ->
            let uu____4820 = infer env e in return_if uu____4820
        | FStar_Syntax_Syntax.Tm_let ((false ,binding::[]),e2) ->
            mk_let env binding e2
              (fun env1  -> fun e21  -> check env1 e21 context_nm) ensure_m
        | FStar_Syntax_Syntax.Tm_match (e0,branches) ->
            mk_match env e0 branches
              (fun env1  -> fun body  -> check env1 body context_nm)
        | FStar_Syntax_Syntax.Tm_meta (e1,uu____4888) ->
            check env e1 context_nm
        | FStar_Syntax_Syntax.Tm_uinst (e1,uu____4894) ->
            check env e1 context_nm
        | FStar_Syntax_Syntax.Tm_ascribed (e1,uu____4900,uu____4901) ->
            check env e1 context_nm
        | FStar_Syntax_Syntax.Tm_let uu____4942 ->
            let uu____4955 =
              let uu____4956 = FStar_Syntax_Print.term_to_string e in
              FStar_Util.format1 "[check]: Tm_let %s" uu____4956 in
            failwith uu____4955
        | FStar_Syntax_Syntax.Tm_type uu____4963 ->
            failwith "impossible (DM stratification)"
        | FStar_Syntax_Syntax.Tm_arrow uu____4970 ->
            failwith "impossible (DM stratification)"
        | FStar_Syntax_Syntax.Tm_refine uu____4989 ->
            let uu____4996 =
              let uu____4997 = FStar_Syntax_Print.term_to_string e in
              FStar_Util.format1 "[check]: Tm_refine %s" uu____4997 in
            failwith uu____4996
        | FStar_Syntax_Syntax.Tm_uvar uu____5004 ->
            let uu____5021 =
              let uu____5022 = FStar_Syntax_Print.term_to_string e in
              FStar_Util.format1 "[check]: Tm_uvar %s" uu____5022 in
            failwith uu____5021
        | FStar_Syntax_Syntax.Tm_delayed uu____5029 ->
            failwith "impossible (compressed)"
        | FStar_Syntax_Syntax.Tm_unknown  ->
            let uu____5060 =
              let uu____5061 = FStar_Syntax_Print.term_to_string e in
              FStar_Util.format1 "[check]: Tm_unknown %s" uu____5061 in
            failwith uu____5060
and infer:
  env ->
    FStar_Syntax_Syntax.term ->
      (nm,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
        FStar_Pervasives_Native.tuple3
  =
  fun env  ->
    fun e  ->
      let mk1 x =
        FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
          e.FStar_Syntax_Syntax.pos in
      let normalize1 =
        FStar_TypeChecker_Normalize.normalize
          [FStar_TypeChecker_Normalize.Beta;
          FStar_TypeChecker_Normalize.Eager_unfolding;
          FStar_TypeChecker_Normalize.UnfoldUntil
            FStar_Syntax_Syntax.Delta_constant;
          FStar_TypeChecker_Normalize.EraseUniverses] env.env in
      let uu____5085 =
        let uu____5086 = FStar_Syntax_Subst.compress e in
        uu____5086.FStar_Syntax_Syntax.n in
      match uu____5085 with
      | FStar_Syntax_Syntax.Tm_bvar bv ->
          failwith "I failed to open a binder... boo"
      | FStar_Syntax_Syntax.Tm_name bv ->
          ((N (bv.FStar_Syntax_Syntax.sort)), e, e)
      | FStar_Syntax_Syntax.Tm_abs (binders,body,rc_opt) ->
          let subst_rc_opt subst1 rc_opt1 =
            match rc_opt1 with
            | FStar_Pervasives_Native.Some
                { FStar_Syntax_Syntax.residual_effect = uu____5145;
                  FStar_Syntax_Syntax.residual_typ =
                    FStar_Pervasives_Native.None ;
                  FStar_Syntax_Syntax.residual_flags = uu____5146;_}
                -> rc_opt1
            | FStar_Pervasives_Native.None  -> rc_opt1
            | FStar_Pervasives_Native.Some rc ->
                let uu____5152 =
                  let uu___82_5153 = rc in
                  let uu____5154 =
                    let uu____5159 =
                      let uu____5160 =
                        FStar_Util.must rc.FStar_Syntax_Syntax.residual_typ in
                      FStar_Syntax_Subst.subst subst1 uu____5160 in
                    FStar_Pervasives_Native.Some uu____5159 in
                  {
                    FStar_Syntax_Syntax.residual_effect =
                      (uu___82_5153.FStar_Syntax_Syntax.residual_effect);
                    FStar_Syntax_Syntax.residual_typ = uu____5154;
                    FStar_Syntax_Syntax.residual_flags =
                      (uu___82_5153.FStar_Syntax_Syntax.residual_flags)
                  } in
                FStar_Pervasives_Native.Some uu____5152 in
          let binders1 = FStar_Syntax_Subst.open_binders binders in
          let subst1 = FStar_Syntax_Subst.opening_of_binders binders1 in
          let body1 = FStar_Syntax_Subst.subst subst1 body in
          let rc_opt1 = subst_rc_opt subst1 rc_opt in
          let env1 =
            let uu___83_5170 = env in
            let uu____5171 =
              FStar_TypeChecker_Env.push_binders env.env binders1 in
            {
              env = uu____5171;
              subst = (uu___83_5170.subst);
              tc_const = (uu___83_5170.tc_const)
            } in
          let s_binders =
            FStar_List.map
              (fun uu____5191  ->
                 match uu____5191 with
                 | (bv,qual) ->
                     let sort = star_type' env1 bv.FStar_Syntax_Syntax.sort in
                     ((let uu___84_5204 = bv in
                       {
                         FStar_Syntax_Syntax.ppname =
                           (uu___84_5204.FStar_Syntax_Syntax.ppname);
                         FStar_Syntax_Syntax.index =
                           (uu___84_5204.FStar_Syntax_Syntax.index);
                         FStar_Syntax_Syntax.sort = sort
                       }), qual)) binders1 in
          let uu____5205 =
            FStar_List.fold_left
              (fun uu____5234  ->
                 fun uu____5235  ->
                   match (uu____5234, uu____5235) with
                   | ((env2,acc),(bv,qual)) ->
                       let c = bv.FStar_Syntax_Syntax.sort in
                       let uu____5283 = is_C c in
                       if uu____5283
                       then
                         let xw =
                           let uu____5291 = star_type' env2 c in
                           FStar_Syntax_Syntax.gen_bv
                             (Prims.strcat
                                (bv.FStar_Syntax_Syntax.ppname).FStar_Ident.idText
                                "__w") FStar_Pervasives_Native.None
                             uu____5291 in
                         let x =
                           let uu___85_5293 = bv in
                           let uu____5294 =
                             let uu____5297 =
                               FStar_Syntax_Syntax.bv_to_name xw in
                             trans_F_ env2 c uu____5297 in
                           {
                             FStar_Syntax_Syntax.ppname =
                               (uu___85_5293.FStar_Syntax_Syntax.ppname);
                             FStar_Syntax_Syntax.index =
                               (uu___85_5293.FStar_Syntax_Syntax.index);
                             FStar_Syntax_Syntax.sort = uu____5294
                           } in
                         let env3 =
                           let uu___86_5299 = env2 in
                           let uu____5300 =
                             let uu____5303 =
                               let uu____5304 =
                                 let uu____5311 =
                                   FStar_Syntax_Syntax.bv_to_name xw in
                                 (bv, uu____5311) in
                               FStar_Syntax_Syntax.NT uu____5304 in
                             uu____5303 :: (env2.subst) in
                           {
                             env = (uu___86_5299.env);
                             subst = uu____5300;
                             tc_const = (uu___86_5299.tc_const)
                           } in
                         let uu____5312 =
                           let uu____5315 = FStar_Syntax_Syntax.mk_binder x in
                           let uu____5316 =
                             let uu____5319 =
                               FStar_Syntax_Syntax.mk_binder xw in
                             uu____5319 :: acc in
                           uu____5315 :: uu____5316 in
                         (env3, uu____5312)
                       else
                         (let x =
                            let uu___87_5324 = bv in
                            let uu____5325 =
                              star_type' env2 bv.FStar_Syntax_Syntax.sort in
                            {
                              FStar_Syntax_Syntax.ppname =
                                (uu___87_5324.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (uu___87_5324.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = uu____5325
                            } in
                          let uu____5328 =
                            let uu____5331 = FStar_Syntax_Syntax.mk_binder x in
                            uu____5331 :: acc in
                          (env2, uu____5328))) (env1, []) binders1 in
          (match uu____5205 with
           | (env2,u_binders) ->
               let u_binders1 = FStar_List.rev u_binders in
               let uu____5351 =
                 let check_what =
                   let uu____5369 = is_monadic rc_opt1 in
                   if uu____5369 then check_m else check_n in
                 let uu____5381 = check_what env2 body1 in
                 match uu____5381 with
                 | (t,s_body,u_body) ->
                     let uu____5397 =
                       let uu____5398 =
                         let uu____5399 = is_monadic rc_opt1 in
                         if uu____5399 then M t else N t in
                       comp_of_nm uu____5398 in
                     (uu____5397, s_body, u_body) in
               (match uu____5351 with
                | (comp,s_body,u_body) ->
                    let t = FStar_Syntax_Util.arrow binders1 comp in
                    let s_rc_opt =
                      match rc_opt1 with
                      | FStar_Pervasives_Native.None  ->
                          FStar_Pervasives_Native.None
                      | FStar_Pervasives_Native.Some rc ->
                          (match rc.FStar_Syntax_Syntax.residual_typ with
                           | FStar_Pervasives_Native.None  ->
                               let rc1 =
                                 let uu____5424 =
                                   FStar_All.pipe_right
                                     rc.FStar_Syntax_Syntax.residual_flags
                                     (FStar_Util.for_some
                                        (fun uu___68_5428  ->
                                           match uu___68_5428 with
                                           | FStar_Syntax_Syntax.CPS  -> true
                                           | uu____5429 -> false)) in
                                 if uu____5424
                                 then
                                   let uu____5430 =
                                     FStar_List.filter
                                       (fun uu___69_5434  ->
                                          match uu___69_5434 with
                                          | FStar_Syntax_Syntax.CPS  -> false
                                          | uu____5435 -> true)
                                       rc.FStar_Syntax_Syntax.residual_flags in
                                   FStar_Syntax_Util.mk_residual_comp
                                     FStar_Parser_Const.effect_Tot_lid
                                     FStar_Pervasives_Native.None uu____5430
                                 else rc in
                               FStar_Pervasives_Native.Some rc1
                           | FStar_Pervasives_Native.Some rt ->
                               let uu____5444 =
                                 FStar_All.pipe_right
                                   rc.FStar_Syntax_Syntax.residual_flags
                                   (FStar_Util.for_some
                                      (fun uu___70_5448  ->
                                         match uu___70_5448 with
                                         | FStar_Syntax_Syntax.CPS  -> true
                                         | uu____5449 -> false)) in
                               if uu____5444
                               then
                                 let flags1 =
                                   FStar_List.filter
                                     (fun uu___71_5456  ->
                                        match uu___71_5456 with
                                        | FStar_Syntax_Syntax.CPS  -> false
                                        | uu____5457 -> true)
                                     rc.FStar_Syntax_Syntax.residual_flags in
                                 let uu____5458 =
                                   let uu____5459 =
                                     let uu____5464 = double_star rt in
                                     FStar_Pervasives_Native.Some uu____5464 in
                                   FStar_Syntax_Util.mk_residual_comp
                                     FStar_Parser_Const.effect_Tot_lid
                                     uu____5459 flags1 in
                                 FStar_Pervasives_Native.Some uu____5458
                               else
                                 (let uu____5466 =
                                    let uu___88_5467 = rc in
                                    let uu____5468 =
                                      let uu____5473 = star_type' env2 rt in
                                      FStar_Pervasives_Native.Some uu____5473 in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___88_5467.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ =
                                        uu____5468;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___88_5467.FStar_Syntax_Syntax.residual_flags)
                                    } in
                                  FStar_Pervasives_Native.Some uu____5466)) in
                    let uu____5474 =
                      let comp1 =
                        let uu____5484 = is_monadic rc_opt1 in
                        let uu____5485 =
                          FStar_Syntax_Subst.subst env2.subst s_body in
                        trans_G env2 (FStar_Syntax_Util.comp_result comp)
                          uu____5484 uu____5485 in
                      let uu____5486 =
                        FStar_Syntax_Util.ascribe u_body
                          ((FStar_Util.Inr comp1),
                            FStar_Pervasives_Native.None) in
                      (uu____5486,
                        (FStar_Pervasives_Native.Some
                           (FStar_Syntax_Util.residual_comp_of_comp comp1))) in
                    (match uu____5474 with
                     | (u_body1,u_rc_opt) ->
                         let s_body1 =
                           FStar_Syntax_Subst.close s_binders s_body in
                         let s_binders1 =
                           FStar_Syntax_Subst.close_binders s_binders in
                         let s_term =
                           let uu____5528 =
                             let uu____5529 =
                               let uu____5546 =
                                 let uu____5549 =
                                   FStar_Syntax_Subst.closing_of_binders
                                     s_binders1 in
                                 subst_rc_opt uu____5549 s_rc_opt in
                               (s_binders1, s_body1, uu____5546) in
                             FStar_Syntax_Syntax.Tm_abs uu____5529 in
                           mk1 uu____5528 in
                         let u_body2 =
                           FStar_Syntax_Subst.close u_binders1 u_body1 in
                         let u_binders2 =
                           FStar_Syntax_Subst.close_binders u_binders1 in
                         let u_term =
                           let uu____5559 =
                             let uu____5560 =
                               let uu____5577 =
                                 let uu____5580 =
                                   FStar_Syntax_Subst.closing_of_binders
                                     u_binders2 in
                                 subst_rc_opt uu____5580 u_rc_opt in
                               (u_binders2, u_body2, uu____5577) in
                             FStar_Syntax_Syntax.Tm_abs uu____5560 in
                           mk1 uu____5559 in
                         ((N t), s_term, u_term))))
      | FStar_Syntax_Syntax.Tm_fvar
          {
            FStar_Syntax_Syntax.fv_name =
              { FStar_Syntax_Syntax.v = lid;
                FStar_Syntax_Syntax.p = uu____5590;_};
            FStar_Syntax_Syntax.fv_delta = uu____5591;
            FStar_Syntax_Syntax.fv_qual = uu____5592;_}
          ->
          let uu____5595 =
            let uu____5600 = FStar_TypeChecker_Env.lookup_lid env.env lid in
            FStar_All.pipe_left FStar_Pervasives_Native.fst uu____5600 in
          (match uu____5595 with
           | (uu____5631,t) ->
               let uu____5633 = let uu____5634 = normalize1 t in N uu____5634 in
               (uu____5633, e, e))
      | FStar_Syntax_Syntax.Tm_app
          ({
             FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
               (FStar_Const.Const_range_of );
             FStar_Syntax_Syntax.pos = uu____5635;
             FStar_Syntax_Syntax.vars = uu____5636;_},a::hd1::rest)
          ->
          let rest1 = hd1 :: rest in
          let uu____5699 = FStar_Syntax_Util.head_and_args e in
          (match uu____5699 with
           | (unary_op,uu____5721) ->
               let head1 = mk1 (FStar_Syntax_Syntax.Tm_app (unary_op, [a])) in
               let t = mk1 (FStar_Syntax_Syntax.Tm_app (head1, rest1)) in
               infer env t)
      | FStar_Syntax_Syntax.Tm_app
          ({
             FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
               (FStar_Const.Const_set_range_of );
             FStar_Syntax_Syntax.pos = uu____5780;
             FStar_Syntax_Syntax.vars = uu____5781;_},a1::a2::hd1::rest)
          ->
          let rest1 = hd1 :: rest in
          let uu____5857 = FStar_Syntax_Util.head_and_args e in
          (match uu____5857 with
           | (unary_op,uu____5879) ->
               let head1 =
                 mk1 (FStar_Syntax_Syntax.Tm_app (unary_op, [a1; a2])) in
               let t = mk1 (FStar_Syntax_Syntax.Tm_app (head1, rest1)) in
               infer env t)
      | FStar_Syntax_Syntax.Tm_app
          ({
             FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
               (FStar_Const.Const_range_of );
             FStar_Syntax_Syntax.pos = uu____5944;
             FStar_Syntax_Syntax.vars = uu____5945;_},(a,FStar_Pervasives_Native.None
                                                       )::[])
          ->
          let uu____5983 = infer env a in
          (match uu____5983 with
           | (t,s,u) ->
               let uu____5999 = FStar_Syntax_Util.head_and_args e in
               (match uu____5999 with
                | (head1,uu____6021) ->
                    let uu____6042 =
                      let uu____6043 =
                        FStar_Syntax_Syntax.tabbrev
                          FStar_Parser_Const.range_lid in
                      N uu____6043 in
                    let uu____6044 =
                      let uu____6047 =
                        let uu____6048 =
                          let uu____6063 =
                            let uu____6066 = FStar_Syntax_Syntax.as_arg s in
                            [uu____6066] in
                          (head1, uu____6063) in
                        FStar_Syntax_Syntax.Tm_app uu____6048 in
                      mk1 uu____6047 in
                    let uu____6071 =
                      let uu____6074 =
                        let uu____6075 =
                          let uu____6090 =
                            let uu____6093 = FStar_Syntax_Syntax.as_arg u in
                            [uu____6093] in
                          (head1, uu____6090) in
                        FStar_Syntax_Syntax.Tm_app uu____6075 in
                      mk1 uu____6074 in
                    (uu____6042, uu____6044, uu____6071)))
      | FStar_Syntax_Syntax.Tm_app
          ({
             FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
               (FStar_Const.Const_set_range_of );
             FStar_Syntax_Syntax.pos = uu____6102;
             FStar_Syntax_Syntax.vars = uu____6103;_},(a1,uu____6105)::a2::[])
          ->
          let uu____6147 = infer env a1 in
          (match uu____6147 with
           | (t,s,u) ->
               let uu____6163 = FStar_Syntax_Util.head_and_args e in
               (match uu____6163 with
                | (head1,uu____6185) ->
                    let uu____6206 =
                      let uu____6209 =
                        let uu____6210 =
                          let uu____6225 =
                            let uu____6228 = FStar_Syntax_Syntax.as_arg s in
                            [uu____6228; a2] in
                          (head1, uu____6225) in
                        FStar_Syntax_Syntax.Tm_app uu____6210 in
                      mk1 uu____6209 in
                    let uu____6245 =
                      let uu____6248 =
                        let uu____6249 =
                          let uu____6264 =
                            let uu____6267 = FStar_Syntax_Syntax.as_arg u in
                            [uu____6267; a2] in
                          (head1, uu____6264) in
                        FStar_Syntax_Syntax.Tm_app uu____6249 in
                      mk1 uu____6248 in
                    (t, uu____6206, uu____6245)))
      | FStar_Syntax_Syntax.Tm_app
          ({
             FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
               (FStar_Const.Const_range_of );
             FStar_Syntax_Syntax.pos = uu____6288;
             FStar_Syntax_Syntax.vars = uu____6289;_},uu____6290)
          ->
          let uu____6311 =
            let uu____6316 =
              let uu____6317 = FStar_Syntax_Print.term_to_string e in
              FStar_Util.format1 "DMFF: Ill-applied constant %s" uu____6317 in
            (FStar_Errors.Fatal_IllAppliedConstant, uu____6316) in
          FStar_Errors.raise_error uu____6311 e.FStar_Syntax_Syntax.pos
      | FStar_Syntax_Syntax.Tm_app
          ({
             FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
               (FStar_Const.Const_set_range_of );
             FStar_Syntax_Syntax.pos = uu____6324;
             FStar_Syntax_Syntax.vars = uu____6325;_},uu____6326)
          ->
          let uu____6347 =
            let uu____6352 =
              let uu____6353 = FStar_Syntax_Print.term_to_string e in
              FStar_Util.format1 "DMFF: Ill-applied constant %s" uu____6353 in
            (FStar_Errors.Fatal_IllAppliedConstant, uu____6352) in
          FStar_Errors.raise_error uu____6347 e.FStar_Syntax_Syntax.pos
      | FStar_Syntax_Syntax.Tm_app (head1,args) ->
          let uu____6382 = check_n env head1 in
          (match uu____6382 with
           | (t_head,s_head,u_head) ->
               let is_arrow t =
                 let uu____6402 =
                   let uu____6403 = FStar_Syntax_Subst.compress t in
                   uu____6403.FStar_Syntax_Syntax.n in
                 match uu____6402 with
                 | FStar_Syntax_Syntax.Tm_arrow uu____6406 -> true
                 | uu____6419 -> false in
               let rec flatten1 t =
                 let uu____6436 =
                   let uu____6437 = FStar_Syntax_Subst.compress t in
                   uu____6437.FStar_Syntax_Syntax.n in
                 match uu____6436 with
                 | FStar_Syntax_Syntax.Tm_arrow
                     (binders,{
                                FStar_Syntax_Syntax.n =
                                  FStar_Syntax_Syntax.Total (t1,uu____6454);
                                FStar_Syntax_Syntax.pos = uu____6455;
                                FStar_Syntax_Syntax.vars = uu____6456;_})
                     when is_arrow t1 ->
                     let uu____6481 = flatten1 t1 in
                     (match uu____6481 with
                      | (binders',comp) ->
                          ((FStar_List.append binders binders'), comp))
                 | FStar_Syntax_Syntax.Tm_arrow (binders,comp) ->
                     (binders, comp)
                 | FStar_Syntax_Syntax.Tm_ascribed (e1,uu____6563,uu____6564)
                     -> flatten1 e1
                 | uu____6605 ->
                     let uu____6606 =
                       let uu____6611 =
                         let uu____6612 =
                           FStar_Syntax_Print.term_to_string t_head in
                         FStar_Util.format1 "%s: not a function type"
                           uu____6612 in
                       (FStar_Errors.Fatal_NotFunctionType, uu____6611) in
                     FStar_Errors.raise_err uu____6606 in
               let uu____6625 = flatten1 t_head in
               (match uu____6625 with
                | (binders,comp) ->
                    let n1 = FStar_List.length binders in
                    let n' = FStar_List.length args in
                    (if
                       (FStar_List.length binders) < (FStar_List.length args)
                     then
                       (let uu____6685 =
                          let uu____6690 =
                            let uu____6691 = FStar_Util.string_of_int n1 in
                            let uu____6698 =
                              FStar_Util.string_of_int (n' - n1) in
                            let uu____6709 = FStar_Util.string_of_int n1 in
                            FStar_Util.format3
                              "The head of this application, after being applied to %s arguments, is an effectful computation (leaving %s arguments to be applied). Please let-bind the head applied to the %s first arguments."
                              uu____6691 uu____6698 uu____6709 in
                          (FStar_Errors.Fatal_BinderAndArgsLengthMismatch,
                            uu____6690) in
                        FStar_Errors.raise_err uu____6685)
                     else ();
                     (let uu____6717 =
                        FStar_Syntax_Subst.open_comp binders comp in
                      match uu____6717 with
                      | (binders1,comp1) ->
                          let rec final_type subst1 uu____6758 args1 =
                            match uu____6758 with
                            | (binders2,comp2) ->
                                (match (binders2, args1) with
                                 | ([],[]) ->
                                     let uu____6832 =
                                       let uu____6833 =
                                         FStar_Syntax_Subst.subst_comp subst1
                                           comp2 in
                                       uu____6833.FStar_Syntax_Syntax.n in
                                     nm_of_comp uu____6832
                                 | (binders3,[]) ->
                                     let uu____6863 =
                                       let uu____6864 =
                                         let uu____6867 =
                                           let uu____6868 =
                                             mk1
                                               (FStar_Syntax_Syntax.Tm_arrow
                                                  (binders3, comp2)) in
                                           FStar_Syntax_Subst.subst subst1
                                             uu____6868 in
                                         FStar_Syntax_Subst.compress
                                           uu____6867 in
                                       uu____6864.FStar_Syntax_Syntax.n in
                                     (match uu____6863 with
                                      | FStar_Syntax_Syntax.Tm_arrow
                                          (binders4,comp3) ->
                                          let uu____6893 =
                                            let uu____6894 =
                                              let uu____6895 =
                                                let uu____6908 =
                                                  FStar_Syntax_Subst.close_comp
                                                    binders4 comp3 in
                                                (binders4, uu____6908) in
                                              FStar_Syntax_Syntax.Tm_arrow
                                                uu____6895 in
                                            mk1 uu____6894 in
                                          N uu____6893
                                      | uu____6915 -> failwith "wat?")
                                 | ([],uu____6916::uu____6917) ->
                                     failwith "just checked that?!"
                                 | ((bv,uu____6957)::binders3,(arg,uu____6960)::args2)
                                     ->
                                     final_type
                                       ((FStar_Syntax_Syntax.NT (bv, arg)) ::
                                       subst1) (binders3, comp2) args2) in
                          let final_type1 =
                            final_type [] (binders1, comp1) args in
                          let uu____7013 = FStar_List.splitAt n' binders1 in
                          (match uu____7013 with
                           | (binders2,uu____7045) ->
                               let uu____7070 =
                                 let uu____7091 =
                                   FStar_List.map2
                                     (fun uu____7145  ->
                                        fun uu____7146  ->
                                          match (uu____7145, uu____7146) with
                                          | ((bv,uu____7184),(arg,q)) ->
                                              let uu____7201 =
                                                let uu____7202 =
                                                  FStar_Syntax_Subst.compress
                                                    bv.FStar_Syntax_Syntax.sort in
                                                uu____7202.FStar_Syntax_Syntax.n in
                                              (match uu____7201 with
                                               | FStar_Syntax_Syntax.Tm_type
                                                   uu____7221 ->
                                                   let uu____7222 =
                                                     let uu____7227 =
                                                       star_type' env arg in
                                                     (uu____7227, q) in
                                                   (uu____7222, [(arg, q)])
                                               | uu____7254 ->
                                                   let uu____7255 =
                                                     check_n env arg in
                                                   (match uu____7255 with
                                                    | (uu____7278,s_arg,u_arg)
                                                        ->
                                                        let uu____7281 =
                                                          let uu____7288 =
                                                            is_C
                                                              bv.FStar_Syntax_Syntax.sort in
                                                          if uu____7288
                                                          then
                                                            let uu____7295 =
                                                              let uu____7300
                                                                =
                                                                FStar_Syntax_Subst.subst
                                                                  env.subst
                                                                  s_arg in
                                                              (uu____7300, q) in
                                                            [uu____7295;
                                                            (u_arg, q)]
                                                          else [(u_arg, q)] in
                                                        ((s_arg, q),
                                                          uu____7281))))
                                     binders2 args in
                                 FStar_List.split uu____7091 in
                               (match uu____7070 with
                                | (s_args,u_args) ->
                                    let u_args1 = FStar_List.flatten u_args in
                                    let uu____7399 =
                                      mk1
                                        (FStar_Syntax_Syntax.Tm_app
                                           (s_head, s_args)) in
                                    let uu____7408 =
                                      mk1
                                        (FStar_Syntax_Syntax.Tm_app
                                           (u_head, u_args1)) in
                                    (final_type1, uu____7399, uu____7408)))))))
      | FStar_Syntax_Syntax.Tm_let ((false ,binding::[]),e2) ->
          mk_let env binding e2 infer check_m
      | FStar_Syntax_Syntax.Tm_match (e0,branches) ->
          mk_match env e0 branches infer
      | FStar_Syntax_Syntax.Tm_uinst (e1,uu____7476) -> infer env e1
      | FStar_Syntax_Syntax.Tm_meta (e1,uu____7482) -> infer env e1
      | FStar_Syntax_Syntax.Tm_ascribed (e1,uu____7488,uu____7489) ->
          infer env e1
      | FStar_Syntax_Syntax.Tm_constant c ->
          let uu____7531 = let uu____7532 = env.tc_const c in N uu____7532 in
          (uu____7531, e, e)
      | FStar_Syntax_Syntax.Tm_let uu____7533 ->
          let uu____7546 =
            let uu____7547 = FStar_Syntax_Print.term_to_string e in
            FStar_Util.format1 "[infer]: Tm_let %s" uu____7547 in
          failwith uu____7546
      | FStar_Syntax_Syntax.Tm_type uu____7554 ->
          failwith "impossible (DM stratification)"
      | FStar_Syntax_Syntax.Tm_arrow uu____7561 ->
          failwith "impossible (DM stratification)"
      | FStar_Syntax_Syntax.Tm_refine uu____7580 ->
          let uu____7587 =
            let uu____7588 = FStar_Syntax_Print.term_to_string e in
            FStar_Util.format1 "[infer]: Tm_refine %s" uu____7588 in
          failwith uu____7587
      | FStar_Syntax_Syntax.Tm_uvar uu____7595 ->
          let uu____7612 =
            let uu____7613 = FStar_Syntax_Print.term_to_string e in
            FStar_Util.format1 "[infer]: Tm_uvar %s" uu____7613 in
          failwith uu____7612
      | FStar_Syntax_Syntax.Tm_delayed uu____7620 ->
          failwith "impossible (compressed)"
      | FStar_Syntax_Syntax.Tm_unknown  ->
          let uu____7651 =
            let uu____7652 = FStar_Syntax_Print.term_to_string e in
            FStar_Util.format1 "[infer]: Tm_unknown %s" uu____7652 in
          failwith uu____7651
and mk_match:
  env ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
      (FStar_Syntax_Syntax.pat' FStar_Syntax_Syntax.withinfo_t,FStar_Syntax_Syntax.term'
                                                                 FStar_Syntax_Syntax.syntax
                                                                 FStar_Pervasives_Native.option,
        FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
        FStar_Pervasives_Native.tuple3 Prims.list ->
        (env ->
           FStar_Syntax_Syntax.term ->
             (nm,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
               FStar_Pervasives_Native.tuple3)
          ->
          (nm,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
            FStar_Pervasives_Native.tuple3
  =
  fun env  ->
    fun e0  ->
      fun branches  ->
        fun f  ->
          let mk1 x =
            FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
              e0.FStar_Syntax_Syntax.pos in
          let uu____7697 = check_n env e0 in
          match uu____7697 with
          | (uu____7710,s_e0,u_e0) ->
              let uu____7713 =
                let uu____7742 =
                  FStar_List.map
                    (fun b  ->
                       let uu____7803 = FStar_Syntax_Subst.open_branch b in
                       match uu____7803 with
                       | (pat,FStar_Pervasives_Native.None ,body) ->
                           let env1 =
                             let uu___89_7845 = env in
                             let uu____7846 =
                               let uu____7847 =
                                 FStar_Syntax_Syntax.pat_bvs pat in
                               FStar_List.fold_left
                                 FStar_TypeChecker_Env.push_bv env.env
                                 uu____7847 in
                             {
                               env = uu____7846;
                               subst = (uu___89_7845.subst);
                               tc_const = (uu___89_7845.tc_const)
                             } in
                           let uu____7850 = f env1 body in
                           (match uu____7850 with
                            | (nm,s_body,u_body) ->
                                (nm,
                                  (pat, FStar_Pervasives_Native.None,
                                    (s_body, u_body, body))))
                       | uu____7922 ->
                           FStar_Errors.raise_err
                             (FStar_Errors.Fatal_WhenClauseNotSupported,
                               "No when clauses in the definition language"))
                    branches in
                FStar_List.split uu____7742 in
              (match uu____7713 with
               | (nms,branches1) ->
                   let t1 =
                     let uu____8024 = FStar_List.hd nms in
                     match uu____8024 with | M t1 -> t1 | N t1 -> t1 in
                   let has_m =
                     FStar_List.existsb
                       (fun uu___72_8030  ->
                          match uu___72_8030 with
                          | M uu____8031 -> true
                          | uu____8032 -> false) nms in
                   let uu____8033 =
                     let uu____8070 =
                       FStar_List.map2
                         (fun nm  ->
                            fun uu____8160  ->
                              match uu____8160 with
                              | (pat,guard,(s_body,u_body,original_body)) ->
                                  (match (nm, has_m) with
                                   | (N t2,false ) ->
                                       (nm, (pat, guard, s_body),
                                         (pat, guard, u_body))
                                   | (M t2,true ) ->
                                       (nm, (pat, guard, s_body),
                                         (pat, guard, u_body))
                                   | (N t2,true ) ->
                                       let uu____8337 =
                                         check env original_body (M t2) in
                                       (match uu____8337 with
                                        | (uu____8374,s_body1,u_body1) ->
                                            ((M t2), (pat, guard, s_body1),
                                              (pat, guard, u_body1)))
                                   | (M uu____8413,false ) ->
                                       failwith "impossible")) nms branches1 in
                     FStar_List.unzip3 uu____8070 in
                   (match uu____8033 with
                    | (nms1,s_branches,u_branches) ->
                        if has_m
                        then
                          let p_type = mk_star_to_type mk1 env t1 in
                          let p =
                            FStar_Syntax_Syntax.gen_bv "p''"
                              FStar_Pervasives_Native.None p_type in
                          let s_branches1 =
                            FStar_List.map
                              (fun uu____8597  ->
                                 match uu____8597 with
                                 | (pat,guard,s_body) ->
                                     let s_body1 =
                                       let uu____8648 =
                                         let uu____8649 =
                                           let uu____8664 =
                                             let uu____8671 =
                                               let uu____8676 =
                                                 FStar_Syntax_Syntax.bv_to_name
                                                   p in
                                               let uu____8677 =
                                                 FStar_Syntax_Syntax.as_implicit
                                                   false in
                                               (uu____8676, uu____8677) in
                                             [uu____8671] in
                                           (s_body, uu____8664) in
                                         FStar_Syntax_Syntax.Tm_app
                                           uu____8649 in
                                       mk1 uu____8648 in
                                     (pat, guard, s_body1)) s_branches in
                          let s_branches2 =
                            FStar_List.map FStar_Syntax_Subst.close_branch
                              s_branches1 in
                          let u_branches1 =
                            FStar_List.map FStar_Syntax_Subst.close_branch
                              u_branches in
                          let s_e =
                            let uu____8709 =
                              let uu____8710 =
                                FStar_Syntax_Syntax.mk_binder p in
                              [uu____8710] in
                            let uu____8711 =
                              mk1
                                (FStar_Syntax_Syntax.Tm_match
                                   (s_e0, s_branches2)) in
                            FStar_Syntax_Util.abs uu____8709 uu____8711
                              (FStar_Pervasives_Native.Some
                                 (FStar_Syntax_Util.residual_tot
                                    FStar_Syntax_Util.ktype0)) in
                          let t1_star =
                            let uu____8717 =
                              let uu____8724 =
                                let uu____8725 =
                                  FStar_Syntax_Syntax.new_bv
                                    FStar_Pervasives_Native.None p_type in
                                FStar_All.pipe_left
                                  FStar_Syntax_Syntax.mk_binder uu____8725 in
                              [uu____8724] in
                            let uu____8726 =
                              FStar_Syntax_Syntax.mk_Total
                                FStar_Syntax_Util.ktype0 in
                            FStar_Syntax_Util.arrow uu____8717 uu____8726 in
                          let uu____8729 =
                            mk1
                              (FStar_Syntax_Syntax.Tm_ascribed
                                 (s_e,
                                   ((FStar_Util.Inl t1_star),
                                     FStar_Pervasives_Native.None),
                                   FStar_Pervasives_Native.None)) in
                          let uu____8768 =
                            mk1
                              (FStar_Syntax_Syntax.Tm_match
                                 (u_e0, u_branches1)) in
                          ((M t1), uu____8729, uu____8768)
                        else
                          (let s_branches1 =
                             FStar_List.map FStar_Syntax_Subst.close_branch
                               s_branches in
                           let u_branches1 =
                             FStar_List.map FStar_Syntax_Subst.close_branch
                               u_branches in
                           let t1_star = t1 in
                           let uu____8785 =
                             let uu____8788 =
                               let uu____8789 =
                                 let uu____8816 =
                                   mk1
                                     (FStar_Syntax_Syntax.Tm_match
                                        (s_e0, s_branches1)) in
                                 (uu____8816,
                                   ((FStar_Util.Inl t1_star),
                                     FStar_Pervasives_Native.None),
                                   FStar_Pervasives_Native.None) in
                               FStar_Syntax_Syntax.Tm_ascribed uu____8789 in
                             mk1 uu____8788 in
                           let uu____8853 =
                             mk1
                               (FStar_Syntax_Syntax.Tm_match
                                  (u_e0, u_branches1)) in
                           ((N t1), uu____8785, uu____8853))))
and mk_let:
  env_ ->
    FStar_Syntax_Syntax.letbinding ->
      FStar_Syntax_Syntax.term ->
        (env_ ->
           FStar_Syntax_Syntax.term ->
             (nm,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
               FStar_Pervasives_Native.tuple3)
          ->
          (env_ ->
             FStar_Syntax_Syntax.term ->
               (FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
                 FStar_Pervasives_Native.tuple3)
            ->
            (nm,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
              FStar_Pervasives_Native.tuple3
  =
  fun env  ->
    fun binding  ->
      fun e2  ->
        fun proceed  ->
          fun ensure_m  ->
            let mk1 x =
              FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
                e2.FStar_Syntax_Syntax.pos in
            let e1 = binding.FStar_Syntax_Syntax.lbdef in
            let x = FStar_Util.left binding.FStar_Syntax_Syntax.lbname in
            let x_binders =
              let uu____8900 = FStar_Syntax_Syntax.mk_binder x in
              [uu____8900] in
            let uu____8901 = FStar_Syntax_Subst.open_term x_binders e2 in
            match uu____8901 with
            | (x_binders1,e21) ->
                let uu____8914 = infer env e1 in
                (match uu____8914 with
                 | (N t1,s_e1,u_e1) ->
                     let u_binding =
                       let uu____8931 = is_C t1 in
                       if uu____8931
                       then
                         let uu___90_8932 = binding in
                         let uu____8933 =
                           let uu____8936 =
                             FStar_Syntax_Subst.subst env.subst s_e1 in
                           trans_F_ env t1 uu____8936 in
                         {
                           FStar_Syntax_Syntax.lbname =
                             (uu___90_8932.FStar_Syntax_Syntax.lbname);
                           FStar_Syntax_Syntax.lbunivs =
                             (uu___90_8932.FStar_Syntax_Syntax.lbunivs);
                           FStar_Syntax_Syntax.lbtyp = uu____8933;
                           FStar_Syntax_Syntax.lbeff =
                             (uu___90_8932.FStar_Syntax_Syntax.lbeff);
                           FStar_Syntax_Syntax.lbdef =
                             (uu___90_8932.FStar_Syntax_Syntax.lbdef)
                         }
                       else binding in
                     let env1 =
                       let uu___91_8939 = env in
                       let uu____8940 =
                         FStar_TypeChecker_Env.push_bv env.env
                           (let uu___92_8942 = x in
                            {
                              FStar_Syntax_Syntax.ppname =
                                (uu___92_8942.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (uu___92_8942.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = t1
                            }) in
                       {
                         env = uu____8940;
                         subst = (uu___91_8939.subst);
                         tc_const = (uu___91_8939.tc_const)
                       } in
                     let uu____8943 = proceed env1 e21 in
                     (match uu____8943 with
                      | (nm_rec,s_e2,u_e2) ->
                          let s_binding =
                            let uu___93_8960 = binding in
                            let uu____8961 =
                              star_type' env1
                                binding.FStar_Syntax_Syntax.lbtyp in
                            {
                              FStar_Syntax_Syntax.lbname =
                                (uu___93_8960.FStar_Syntax_Syntax.lbname);
                              FStar_Syntax_Syntax.lbunivs =
                                (uu___93_8960.FStar_Syntax_Syntax.lbunivs);
                              FStar_Syntax_Syntax.lbtyp = uu____8961;
                              FStar_Syntax_Syntax.lbeff =
                                (uu___93_8960.FStar_Syntax_Syntax.lbeff);
                              FStar_Syntax_Syntax.lbdef =
                                (uu___93_8960.FStar_Syntax_Syntax.lbdef)
                            } in
                          let uu____8964 =
                            let uu____8967 =
                              let uu____8968 =
                                let uu____8981 =
                                  FStar_Syntax_Subst.close x_binders1 s_e2 in
                                ((false,
                                   [(let uu___94_8991 = s_binding in
                                     {
                                       FStar_Syntax_Syntax.lbname =
                                         (uu___94_8991.FStar_Syntax_Syntax.lbname);
                                       FStar_Syntax_Syntax.lbunivs =
                                         (uu___94_8991.FStar_Syntax_Syntax.lbunivs);
                                       FStar_Syntax_Syntax.lbtyp =
                                         (uu___94_8991.FStar_Syntax_Syntax.lbtyp);
                                       FStar_Syntax_Syntax.lbeff =
                                         (uu___94_8991.FStar_Syntax_Syntax.lbeff);
                                       FStar_Syntax_Syntax.lbdef = s_e1
                                     })]), uu____8981) in
                              FStar_Syntax_Syntax.Tm_let uu____8968 in
                            mk1 uu____8967 in
                          let uu____8992 =
                            let uu____8995 =
                              let uu____8996 =
                                let uu____9009 =
                                  FStar_Syntax_Subst.close x_binders1 u_e2 in
                                ((false,
                                   [(let uu___95_9019 = u_binding in
                                     {
                                       FStar_Syntax_Syntax.lbname =
                                         (uu___95_9019.FStar_Syntax_Syntax.lbname);
                                       FStar_Syntax_Syntax.lbunivs =
                                         (uu___95_9019.FStar_Syntax_Syntax.lbunivs);
                                       FStar_Syntax_Syntax.lbtyp =
                                         (uu___95_9019.FStar_Syntax_Syntax.lbtyp);
                                       FStar_Syntax_Syntax.lbeff =
                                         (uu___95_9019.FStar_Syntax_Syntax.lbeff);
                                       FStar_Syntax_Syntax.lbdef = u_e1
                                     })]), uu____9009) in
                              FStar_Syntax_Syntax.Tm_let uu____8996 in
                            mk1 uu____8995 in
                          (nm_rec, uu____8964, uu____8992))
                 | (M t1,s_e1,u_e1) ->
                     let u_binding =
                       let uu___96_9028 = binding in
                       {
                         FStar_Syntax_Syntax.lbname =
                           (uu___96_9028.FStar_Syntax_Syntax.lbname);
                         FStar_Syntax_Syntax.lbunivs =
                           (uu___96_9028.FStar_Syntax_Syntax.lbunivs);
                         FStar_Syntax_Syntax.lbtyp = t1;
                         FStar_Syntax_Syntax.lbeff =
                           FStar_Parser_Const.effect_PURE_lid;
                         FStar_Syntax_Syntax.lbdef =
                           (uu___96_9028.FStar_Syntax_Syntax.lbdef)
                       } in
                     let env1 =
                       let uu___97_9030 = env in
                       let uu____9031 =
                         FStar_TypeChecker_Env.push_bv env.env
                           (let uu___98_9033 = x in
                            {
                              FStar_Syntax_Syntax.ppname =
                                (uu___98_9033.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (uu___98_9033.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = t1
                            }) in
                       {
                         env = uu____9031;
                         subst = (uu___97_9030.subst);
                         tc_const = (uu___97_9030.tc_const)
                       } in
                     let uu____9034 = ensure_m env1 e21 in
                     (match uu____9034 with
                      | (t2,s_e2,u_e2) ->
                          let p_type = mk_star_to_type mk1 env1 t2 in
                          let p =
                            FStar_Syntax_Syntax.gen_bv "p''"
                              FStar_Pervasives_Native.None p_type in
                          let s_e21 =
                            let uu____9057 =
                              let uu____9058 =
                                let uu____9073 =
                                  let uu____9080 =
                                    let uu____9085 =
                                      FStar_Syntax_Syntax.bv_to_name p in
                                    let uu____9086 =
                                      FStar_Syntax_Syntax.as_implicit false in
                                    (uu____9085, uu____9086) in
                                  [uu____9080] in
                                (s_e2, uu____9073) in
                              FStar_Syntax_Syntax.Tm_app uu____9058 in
                            mk1 uu____9057 in
                          let s_e22 =
                            FStar_Syntax_Util.abs x_binders1 s_e21
                              (FStar_Pervasives_Native.Some
                                 (FStar_Syntax_Util.residual_tot
                                    FStar_Syntax_Util.ktype0)) in
                          let body =
                            let uu____9105 =
                              let uu____9106 =
                                let uu____9121 =
                                  let uu____9128 =
                                    let uu____9133 =
                                      FStar_Syntax_Syntax.as_implicit false in
                                    (s_e22, uu____9133) in
                                  [uu____9128] in
                                (s_e1, uu____9121) in
                              FStar_Syntax_Syntax.Tm_app uu____9106 in
                            mk1 uu____9105 in
                          let uu____9148 =
                            let uu____9149 =
                              let uu____9150 =
                                FStar_Syntax_Syntax.mk_binder p in
                              [uu____9150] in
                            FStar_Syntax_Util.abs uu____9149 body
                              (FStar_Pervasives_Native.Some
                                 (FStar_Syntax_Util.residual_tot
                                    FStar_Syntax_Util.ktype0)) in
                          let uu____9151 =
                            let uu____9154 =
                              let uu____9155 =
                                let uu____9168 =
                                  FStar_Syntax_Subst.close x_binders1 u_e2 in
                                ((false,
                                   [(let uu___99_9178 = u_binding in
                                     {
                                       FStar_Syntax_Syntax.lbname =
                                         (uu___99_9178.FStar_Syntax_Syntax.lbname);
                                       FStar_Syntax_Syntax.lbunivs =
                                         (uu___99_9178.FStar_Syntax_Syntax.lbunivs);
                                       FStar_Syntax_Syntax.lbtyp =
                                         (uu___99_9178.FStar_Syntax_Syntax.lbtyp);
                                       FStar_Syntax_Syntax.lbeff =
                                         (uu___99_9178.FStar_Syntax_Syntax.lbeff);
                                       FStar_Syntax_Syntax.lbdef = u_e1
                                     })]), uu____9168) in
                              FStar_Syntax_Syntax.Tm_let uu____9155 in
                            mk1 uu____9154 in
                          ((M t2), uu____9148, uu____9151)))
and check_n:
  env_ ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.typ,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
        FStar_Pervasives_Native.tuple3
  =
  fun env  ->
    fun e  ->
      let mn =
        let uu____9190 =
          FStar_Syntax_Syntax.mk FStar_Syntax_Syntax.Tm_unknown
            FStar_Pervasives_Native.None e.FStar_Syntax_Syntax.pos in
        N uu____9190 in
      let uu____9191 = check env e mn in
      match uu____9191 with
      | (N t,s_e,u_e) -> (t, s_e, u_e)
      | uu____9207 -> failwith "[check_n]: impossible"
and check_m:
  env_ ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.typ,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
        FStar_Pervasives_Native.tuple3
  =
  fun env  ->
    fun e  ->
      let mn =
        let uu____9229 =
          FStar_Syntax_Syntax.mk FStar_Syntax_Syntax.Tm_unknown
            FStar_Pervasives_Native.None e.FStar_Syntax_Syntax.pos in
        M uu____9229 in
      let uu____9230 = check env e mn in
      match uu____9230 with
      | (M t,s_e,u_e) -> (t, s_e, u_e)
      | uu____9246 -> failwith "[check_m]: impossible"
and comp_of_nm: nm_ -> FStar_Syntax_Syntax.comp =
  fun nm  ->
    match nm with | N t -> FStar_Syntax_Syntax.mk_Total t | M t -> mk_M t
and mk_M: FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.comp =
  fun t  ->
    FStar_Syntax_Syntax.mk_Comp
      {
        FStar_Syntax_Syntax.comp_univs = [FStar_Syntax_Syntax.U_unknown];
        FStar_Syntax_Syntax.effect_name = FStar_Parser_Const.monadic_lid;
        FStar_Syntax_Syntax.result_typ = t;
        FStar_Syntax_Syntax.effect_args = [];
        FStar_Syntax_Syntax.flags =
          [FStar_Syntax_Syntax.CPS; FStar_Syntax_Syntax.TOTAL]
      }
and type_of_comp:
  FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax
  = fun t  -> FStar_Syntax_Util.comp_result t
and trans_F_:
  env_ ->
    FStar_Syntax_Syntax.typ ->
      FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
  =
  fun env  ->
    fun c  ->
      fun wp  ->
        (let uu____9276 =
           let uu____9277 = is_C c in Prims.op_Negation uu____9277 in
         if uu____9276 then failwith "not a C" else ());
        (let mk1 x =
           FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
             c.FStar_Syntax_Syntax.pos in
         let uu____9285 =
           let uu____9286 = FStar_Syntax_Subst.compress c in
           uu____9286.FStar_Syntax_Syntax.n in
         match uu____9285 with
         | FStar_Syntax_Syntax.Tm_app (head1,args) ->
             let uu____9311 = FStar_Syntax_Util.head_and_args wp in
             (match uu____9311 with
              | (wp_head,wp_args) ->
                  ((let uu____9349 =
                      (Prims.op_Negation
                         ((FStar_List.length wp_args) =
                            (FStar_List.length args)))
                        ||
                        (let uu____9363 =
                           let uu____9364 =
                             FStar_Parser_Const.mk_tuple_data_lid
                               (FStar_List.length wp_args)
                               FStar_Range.dummyRange in
                           FStar_Syntax_Util.is_constructor wp_head
                             uu____9364 in
                         Prims.op_Negation uu____9363) in
                    if uu____9349 then failwith "mismatch" else ());
                   (let uu____9372 =
                      let uu____9373 =
                        let uu____9388 =
                          FStar_List.map2
                            (fun uu____9416  ->
                               fun uu____9417  ->
                                 match (uu____9416, uu____9417) with
                                 | ((arg,q),(wp_arg,q')) ->
                                     let print_implicit q1 =
                                       let uu____9454 =
                                         FStar_Syntax_Syntax.is_implicit q1 in
                                       if uu____9454
                                       then "implicit"
                                       else "explicit" in
                                     (if q <> q'
                                      then
                                        (let uu____9457 =
                                           let uu____9462 =
                                             let uu____9463 =
                                               print_implicit q in
                                             let uu____9464 =
                                               print_implicit q' in
                                             FStar_Util.format2
                                               "Incoherent implicit qualifiers %b %b\n"
                                               uu____9463 uu____9464 in
                                           (FStar_Errors.Warning_IncoherentImplicitQualifier,
                                             uu____9462) in
                                         FStar_Errors.log_issue
                                           head1.FStar_Syntax_Syntax.pos
                                           uu____9457)
                                      else ();
                                      (let uu____9466 =
                                         trans_F_ env arg wp_arg in
                                       (uu____9466, q)))) args wp_args in
                        (head1, uu____9388) in
                      FStar_Syntax_Syntax.Tm_app uu____9373 in
                    mk1 uu____9372)))
         | FStar_Syntax_Syntax.Tm_arrow (binders,comp) ->
             let binders1 = FStar_Syntax_Util.name_binders binders in
             let uu____9500 = FStar_Syntax_Subst.open_comp binders1 comp in
             (match uu____9500 with
              | (binders_orig,comp1) ->
                  let uu____9507 =
                    let uu____9522 =
                      FStar_List.map
                        (fun uu____9556  ->
                           match uu____9556 with
                           | (bv,q) ->
                               let h = bv.FStar_Syntax_Syntax.sort in
                               let uu____9576 = is_C h in
                               if uu____9576
                               then
                                 let w' =
                                   let uu____9588 = star_type' env h in
                                   FStar_Syntax_Syntax.gen_bv
                                     (Prims.strcat
                                        (bv.FStar_Syntax_Syntax.ppname).FStar_Ident.idText
                                        "__w'") FStar_Pervasives_Native.None
                                     uu____9588 in
                                 let uu____9589 =
                                   let uu____9596 =
                                     let uu____9603 =
                                       let uu____9608 =
                                         let uu____9609 =
                                           let uu____9610 =
                                             FStar_Syntax_Syntax.bv_to_name
                                               w' in
                                           trans_F_ env h uu____9610 in
                                         FStar_Syntax_Syntax.null_bv
                                           uu____9609 in
                                       (uu____9608, q) in
                                     [uu____9603] in
                                   (w', q) :: uu____9596 in
                                 (w', uu____9589)
                               else
                                 (let x =
                                    let uu____9631 = star_type' env h in
                                    FStar_Syntax_Syntax.gen_bv
                                      (Prims.strcat
                                         (bv.FStar_Syntax_Syntax.ppname).FStar_Ident.idText
                                         "__x") FStar_Pervasives_Native.None
                                      uu____9631 in
                                  (x, [(x, q)]))) binders_orig in
                    FStar_List.split uu____9522 in
                  (match uu____9507 with
                   | (bvs,binders2) ->
                       let binders3 = FStar_List.flatten binders2 in
                       let comp2 =
                         let uu____9686 =
                           let uu____9689 =
                             FStar_Syntax_Syntax.binders_of_list bvs in
                           FStar_Syntax_Util.rename_binders binders_orig
                             uu____9689 in
                         FStar_Syntax_Subst.subst_comp uu____9686 comp1 in
                       let app =
                         let uu____9693 =
                           let uu____9694 =
                             let uu____9709 =
                               FStar_List.map
                                 (fun bv  ->
                                    let uu____9724 =
                                      FStar_Syntax_Syntax.bv_to_name bv in
                                    let uu____9725 =
                                      FStar_Syntax_Syntax.as_implicit false in
                                    (uu____9724, uu____9725)) bvs in
                             (wp, uu____9709) in
                           FStar_Syntax_Syntax.Tm_app uu____9694 in
                         mk1 uu____9693 in
                       let comp3 =
                         let uu____9733 = type_of_comp comp2 in
                         let uu____9734 = is_monadic_comp comp2 in
                         trans_G env uu____9733 uu____9734 app in
                       FStar_Syntax_Util.arrow binders3 comp3))
         | FStar_Syntax_Syntax.Tm_ascribed (e,uu____9736,uu____9737) ->
             trans_F_ env e wp
         | uu____9778 -> failwith "impossible trans_F_")
and trans_G:
  env_ ->
    FStar_Syntax_Syntax.typ ->
      Prims.bool -> FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.comp
  =
  fun env  ->
    fun h  ->
      fun is_monadic1  ->
        fun wp  ->
          if is_monadic1
          then
            let uu____9783 =
              let uu____9784 = star_type' env h in
              let uu____9787 =
                let uu____9796 =
                  let uu____9801 = FStar_Syntax_Syntax.as_implicit false in
                  (wp, uu____9801) in
                [uu____9796] in
              {
                FStar_Syntax_Syntax.comp_univs =
                  [FStar_Syntax_Syntax.U_unknown];
                FStar_Syntax_Syntax.effect_name =
                  FStar_Parser_Const.effect_PURE_lid;
                FStar_Syntax_Syntax.result_typ = uu____9784;
                FStar_Syntax_Syntax.effect_args = uu____9787;
                FStar_Syntax_Syntax.flags = []
              } in
            FStar_Syntax_Syntax.mk_Comp uu____9783
          else
            (let uu____9811 = trans_F_ env h wp in
             FStar_Syntax_Syntax.mk_Total uu____9811)
let n:
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
  =
  FStar_TypeChecker_Normalize.normalize
    [FStar_TypeChecker_Normalize.Beta;
    FStar_TypeChecker_Normalize.UnfoldUntil
      FStar_Syntax_Syntax.Delta_constant;
    FStar_TypeChecker_Normalize.NoDeltaSteps;
    FStar_TypeChecker_Normalize.Eager_unfolding;
    FStar_TypeChecker_Normalize.EraseUniverses]
let star_type: env -> FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ =
  fun env  ->
    fun t  -> let uu____9822 = n env.env t in star_type' env uu____9822
let star_expr:
  env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.typ,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
        FStar_Pervasives_Native.tuple3
  =
  fun env  ->
    fun t  -> let uu____9837 = n env.env t in check_n env uu____9837
let trans_F:
  env ->
    FStar_Syntax_Syntax.typ ->
      FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
  =
  fun env  ->
    fun c  ->
      fun wp  ->
        let uu____9847 = n env.env c in
        let uu____9848 = n env.env wp in trans_F_ env uu____9847 uu____9848