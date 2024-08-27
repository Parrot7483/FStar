open Prims
let (dbg_Exports : Prims.bool FStar_Compiler_Effect.ref) =
  FStar_Compiler_Debug.get_toggle "Exports"
let (dbg_LayeredEffects : Prims.bool FStar_Compiler_Effect.ref) =
  FStar_Compiler_Debug.get_toggle "LayeredEffects"
let (dbg_NYC : Prims.bool FStar_Compiler_Effect.ref) =
  FStar_Compiler_Debug.get_toggle "NYC"
let (dbg_Patterns : Prims.bool FStar_Compiler_Effect.ref) =
  FStar_Compiler_Debug.get_toggle "Patterns"
let (dbg_Range : Prims.bool FStar_Compiler_Effect.ref) =
  FStar_Compiler_Debug.get_toggle "Range"
let (dbg_RelCheck : Prims.bool FStar_Compiler_Effect.ref) =
  FStar_Compiler_Debug.get_toggle "RelCheck"
let (dbg_RFD : Prims.bool FStar_Compiler_Effect.ref) =
  FStar_Compiler_Debug.get_toggle "RFD"
let (dbg_Tac : Prims.bool FStar_Compiler_Effect.ref) =
  FStar_Compiler_Debug.get_toggle "Tac"
let (dbg_UniverseOf : Prims.bool FStar_Compiler_Effect.ref) =
  FStar_Compiler_Debug.get_toggle "UniverseOf"
let (instantiate_both :
  FStar_TypeChecker_Env.env -> FStar_TypeChecker_Env.env) =
  fun env ->
    {
      FStar_TypeChecker_Env.solver = (env.FStar_TypeChecker_Env.solver);
      FStar_TypeChecker_Env.range = (env.FStar_TypeChecker_Env.range);
      FStar_TypeChecker_Env.curmodule = (env.FStar_TypeChecker_Env.curmodule);
      FStar_TypeChecker_Env.gamma = (env.FStar_TypeChecker_Env.gamma);
      FStar_TypeChecker_Env.gamma_sig = (env.FStar_TypeChecker_Env.gamma_sig);
      FStar_TypeChecker_Env.gamma_cache =
        (env.FStar_TypeChecker_Env.gamma_cache);
      FStar_TypeChecker_Env.modules = (env.FStar_TypeChecker_Env.modules);
      FStar_TypeChecker_Env.expected_typ =
        (env.FStar_TypeChecker_Env.expected_typ);
      FStar_TypeChecker_Env.sigtab = (env.FStar_TypeChecker_Env.sigtab);
      FStar_TypeChecker_Env.attrtab = (env.FStar_TypeChecker_Env.attrtab);
      FStar_TypeChecker_Env.instantiate_imp = true;
      FStar_TypeChecker_Env.effects = (env.FStar_TypeChecker_Env.effects);
      FStar_TypeChecker_Env.generalize =
        (env.FStar_TypeChecker_Env.generalize);
      FStar_TypeChecker_Env.letrecs = (env.FStar_TypeChecker_Env.letrecs);
      FStar_TypeChecker_Env.top_level = (env.FStar_TypeChecker_Env.top_level);
      FStar_TypeChecker_Env.check_uvars =
        (env.FStar_TypeChecker_Env.check_uvars);
      FStar_TypeChecker_Env.use_eq_strict =
        (env.FStar_TypeChecker_Env.use_eq_strict);
      FStar_TypeChecker_Env.is_iface = (env.FStar_TypeChecker_Env.is_iface);
      FStar_TypeChecker_Env.admit = (env.FStar_TypeChecker_Env.admit);
      FStar_TypeChecker_Env.lax_universes =
        (env.FStar_TypeChecker_Env.lax_universes);
      FStar_TypeChecker_Env.phase1 = (env.FStar_TypeChecker_Env.phase1);
      FStar_TypeChecker_Env.failhard = (env.FStar_TypeChecker_Env.failhard);
      FStar_TypeChecker_Env.flychecking =
        (env.FStar_TypeChecker_Env.flychecking);
      FStar_TypeChecker_Env.uvar_subtyping =
        (env.FStar_TypeChecker_Env.uvar_subtyping);
      FStar_TypeChecker_Env.intactics = (env.FStar_TypeChecker_Env.intactics);
      FStar_TypeChecker_Env.nocoerce = (env.FStar_TypeChecker_Env.nocoerce);
      FStar_TypeChecker_Env.tc_term = (env.FStar_TypeChecker_Env.tc_term);
      FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
        (env.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
      FStar_TypeChecker_Env.universe_of =
        (env.FStar_TypeChecker_Env.universe_of);
      FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term =
        (env.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
      FStar_TypeChecker_Env.teq_nosmt_force =
        (env.FStar_TypeChecker_Env.teq_nosmt_force);
      FStar_TypeChecker_Env.subtype_nosmt_force =
        (env.FStar_TypeChecker_Env.subtype_nosmt_force);
      FStar_TypeChecker_Env.qtbl_name_and_index =
        (env.FStar_TypeChecker_Env.qtbl_name_and_index);
      FStar_TypeChecker_Env.normalized_eff_names =
        (env.FStar_TypeChecker_Env.normalized_eff_names);
      FStar_TypeChecker_Env.fv_delta_depths =
        (env.FStar_TypeChecker_Env.fv_delta_depths);
      FStar_TypeChecker_Env.proof_ns = (env.FStar_TypeChecker_Env.proof_ns);
      FStar_TypeChecker_Env.synth_hook =
        (env.FStar_TypeChecker_Env.synth_hook);
      FStar_TypeChecker_Env.try_solve_implicits_hook =
        (env.FStar_TypeChecker_Env.try_solve_implicits_hook);
      FStar_TypeChecker_Env.splice = (env.FStar_TypeChecker_Env.splice);
      FStar_TypeChecker_Env.mpreprocess =
        (env.FStar_TypeChecker_Env.mpreprocess);
      FStar_TypeChecker_Env.postprocess =
        (env.FStar_TypeChecker_Env.postprocess);
      FStar_TypeChecker_Env.identifier_info =
        (env.FStar_TypeChecker_Env.identifier_info);
      FStar_TypeChecker_Env.tc_hooks = (env.FStar_TypeChecker_Env.tc_hooks);
      FStar_TypeChecker_Env.dsenv = (env.FStar_TypeChecker_Env.dsenv);
      FStar_TypeChecker_Env.nbe = (env.FStar_TypeChecker_Env.nbe);
      FStar_TypeChecker_Env.strict_args_tab =
        (env.FStar_TypeChecker_Env.strict_args_tab);
      FStar_TypeChecker_Env.erasable_types_tab =
        (env.FStar_TypeChecker_Env.erasable_types_tab);
      FStar_TypeChecker_Env.enable_defer_to_tac =
        (env.FStar_TypeChecker_Env.enable_defer_to_tac);
      FStar_TypeChecker_Env.unif_allow_ref_guards =
        (env.FStar_TypeChecker_Env.unif_allow_ref_guards);
      FStar_TypeChecker_Env.erase_erasable_args =
        (env.FStar_TypeChecker_Env.erase_erasable_args);
      FStar_TypeChecker_Env.core_check =
        (env.FStar_TypeChecker_Env.core_check);
      FStar_TypeChecker_Env.missing_decl =
        (env.FStar_TypeChecker_Env.missing_decl)
    }
let (no_inst : FStar_TypeChecker_Env.env -> FStar_TypeChecker_Env.env) =
  fun env ->
    {
      FStar_TypeChecker_Env.solver = (env.FStar_TypeChecker_Env.solver);
      FStar_TypeChecker_Env.range = (env.FStar_TypeChecker_Env.range);
      FStar_TypeChecker_Env.curmodule = (env.FStar_TypeChecker_Env.curmodule);
      FStar_TypeChecker_Env.gamma = (env.FStar_TypeChecker_Env.gamma);
      FStar_TypeChecker_Env.gamma_sig = (env.FStar_TypeChecker_Env.gamma_sig);
      FStar_TypeChecker_Env.gamma_cache =
        (env.FStar_TypeChecker_Env.gamma_cache);
      FStar_TypeChecker_Env.modules = (env.FStar_TypeChecker_Env.modules);
      FStar_TypeChecker_Env.expected_typ =
        (env.FStar_TypeChecker_Env.expected_typ);
      FStar_TypeChecker_Env.sigtab = (env.FStar_TypeChecker_Env.sigtab);
      FStar_TypeChecker_Env.attrtab = (env.FStar_TypeChecker_Env.attrtab);
      FStar_TypeChecker_Env.instantiate_imp = false;
      FStar_TypeChecker_Env.effects = (env.FStar_TypeChecker_Env.effects);
      FStar_TypeChecker_Env.generalize =
        (env.FStar_TypeChecker_Env.generalize);
      FStar_TypeChecker_Env.letrecs = (env.FStar_TypeChecker_Env.letrecs);
      FStar_TypeChecker_Env.top_level = (env.FStar_TypeChecker_Env.top_level);
      FStar_TypeChecker_Env.check_uvars =
        (env.FStar_TypeChecker_Env.check_uvars);
      FStar_TypeChecker_Env.use_eq_strict =
        (env.FStar_TypeChecker_Env.use_eq_strict);
      FStar_TypeChecker_Env.is_iface = (env.FStar_TypeChecker_Env.is_iface);
      FStar_TypeChecker_Env.admit = (env.FStar_TypeChecker_Env.admit);
      FStar_TypeChecker_Env.lax_universes =
        (env.FStar_TypeChecker_Env.lax_universes);
      FStar_TypeChecker_Env.phase1 = (env.FStar_TypeChecker_Env.phase1);
      FStar_TypeChecker_Env.failhard = (env.FStar_TypeChecker_Env.failhard);
      FStar_TypeChecker_Env.flychecking =
        (env.FStar_TypeChecker_Env.flychecking);
      FStar_TypeChecker_Env.uvar_subtyping =
        (env.FStar_TypeChecker_Env.uvar_subtyping);
      FStar_TypeChecker_Env.intactics = (env.FStar_TypeChecker_Env.intactics);
      FStar_TypeChecker_Env.nocoerce = (env.FStar_TypeChecker_Env.nocoerce);
      FStar_TypeChecker_Env.tc_term = (env.FStar_TypeChecker_Env.tc_term);
      FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
        (env.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
      FStar_TypeChecker_Env.universe_of =
        (env.FStar_TypeChecker_Env.universe_of);
      FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term =
        (env.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
      FStar_TypeChecker_Env.teq_nosmt_force =
        (env.FStar_TypeChecker_Env.teq_nosmt_force);
      FStar_TypeChecker_Env.subtype_nosmt_force =
        (env.FStar_TypeChecker_Env.subtype_nosmt_force);
      FStar_TypeChecker_Env.qtbl_name_and_index =
        (env.FStar_TypeChecker_Env.qtbl_name_and_index);
      FStar_TypeChecker_Env.normalized_eff_names =
        (env.FStar_TypeChecker_Env.normalized_eff_names);
      FStar_TypeChecker_Env.fv_delta_depths =
        (env.FStar_TypeChecker_Env.fv_delta_depths);
      FStar_TypeChecker_Env.proof_ns = (env.FStar_TypeChecker_Env.proof_ns);
      FStar_TypeChecker_Env.synth_hook =
        (env.FStar_TypeChecker_Env.synth_hook);
      FStar_TypeChecker_Env.try_solve_implicits_hook =
        (env.FStar_TypeChecker_Env.try_solve_implicits_hook);
      FStar_TypeChecker_Env.splice = (env.FStar_TypeChecker_Env.splice);
      FStar_TypeChecker_Env.mpreprocess =
        (env.FStar_TypeChecker_Env.mpreprocess);
      FStar_TypeChecker_Env.postprocess =
        (env.FStar_TypeChecker_Env.postprocess);
      FStar_TypeChecker_Env.identifier_info =
        (env.FStar_TypeChecker_Env.identifier_info);
      FStar_TypeChecker_Env.tc_hooks = (env.FStar_TypeChecker_Env.tc_hooks);
      FStar_TypeChecker_Env.dsenv = (env.FStar_TypeChecker_Env.dsenv);
      FStar_TypeChecker_Env.nbe = (env.FStar_TypeChecker_Env.nbe);
      FStar_TypeChecker_Env.strict_args_tab =
        (env.FStar_TypeChecker_Env.strict_args_tab);
      FStar_TypeChecker_Env.erasable_types_tab =
        (env.FStar_TypeChecker_Env.erasable_types_tab);
      FStar_TypeChecker_Env.enable_defer_to_tac =
        (env.FStar_TypeChecker_Env.enable_defer_to_tac);
      FStar_TypeChecker_Env.unif_allow_ref_guards =
        (env.FStar_TypeChecker_Env.unif_allow_ref_guards);
      FStar_TypeChecker_Env.erase_erasable_args =
        (env.FStar_TypeChecker_Env.erase_erasable_args);
      FStar_TypeChecker_Env.core_check =
        (env.FStar_TypeChecker_Env.core_check);
      FStar_TypeChecker_Env.missing_decl =
        (env.FStar_TypeChecker_Env.missing_decl)
    }
let (is_eq :
  FStar_Syntax_Syntax.binder_qualifier FStar_Pervasives_Native.option ->
    Prims.bool)
  =
  fun uu___ ->
    match uu___ with
    | FStar_Pervasives_Native.Some (FStar_Syntax_Syntax.Equality) -> true
    | uu___1 -> false
let steps : 'uuuuu . 'uuuuu -> FStar_TypeChecker_Env.step Prims.list =
  fun env ->
    [FStar_TypeChecker_Env.Beta;
    FStar_TypeChecker_Env.Eager_unfolding;
    FStar_TypeChecker_Env.NoFullNorm;
    FStar_TypeChecker_Env.Exclude FStar_TypeChecker_Env.Zeta]
let (norm :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env -> fun t -> FStar_TypeChecker_Normalize.normalize (steps env) env t
let (norm_c :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp)
  =
  fun env ->
    fun c -> FStar_TypeChecker_Normalize.normalize_comp (steps env) env c
let (check_no_escape :
  FStar_Syntax_Syntax.term FStar_Pervasives_Native.option ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.bv Prims.list ->
        FStar_Syntax_Syntax.term ->
          (FStar_Syntax_Syntax.term * FStar_TypeChecker_Env.guard_t))
  =
  fun head_opt ->
    fun env ->
      fun fvs ->
        fun kt ->
          FStar_Errors.with_ctx "While checking for escaped variables"
            (fun uu___ ->
               let fail x =
                 let msg =
                   match head_opt with
                   | FStar_Pervasives_Native.None ->
                       let uu___1 =
                         let uu___2 = FStar_Errors_Msg.text "Bound variable" in
                         let uu___3 =
                           let uu___4 =
                             let uu___5 =
                               let uu___6 =
                                 FStar_Class_Show.show
                                   FStar_Syntax_Print.showable_bv x in
                               FStar_Pprint.doc_of_string uu___6 in
                             FStar_Pprint.squotes uu___5 in
                           let uu___5 =
                             FStar_Errors_Msg.text
                               "would escape in the type of this letbinding" in
                           FStar_Pprint.op_Hat_Slash_Hat uu___4 uu___5 in
                         FStar_Pprint.op_Hat_Slash_Hat uu___2 uu___3 in
                       let uu___2 =
                         let uu___3 =
                           FStar_Errors_Msg.text
                             "Add a type annotation that does not mention it" in
                         [uu___3] in
                       uu___1 :: uu___2
                   | FStar_Pervasives_Native.Some head ->
                       let uu___1 =
                         let uu___2 = FStar_Errors_Msg.text "Bound variable" in
                         let uu___3 =
                           let uu___4 =
                             let uu___5 =
                               let uu___6 =
                                 FStar_Class_Show.show
                                   FStar_Syntax_Print.showable_bv x in
                               FStar_Pprint.doc_of_string uu___6 in
                             FStar_Pprint.squotes uu___5 in
                           let uu___5 =
                             let uu___6 =
                               FStar_Errors_Msg.text
                                 "escapes because of impure applications in the type of" in
                             let uu___7 =
                               let uu___8 =
                                 FStar_TypeChecker_Normalize.term_to_doc env
                                   head in
                               FStar_Pprint.squotes uu___8 in
                             FStar_Pprint.op_Hat_Slash_Hat uu___6 uu___7 in
                           FStar_Pprint.op_Hat_Slash_Hat uu___4 uu___5 in
                         FStar_Pprint.op_Hat_Slash_Hat uu___2 uu___3 in
                       let uu___2 =
                         let uu___3 =
                           FStar_Errors_Msg.text
                             "Add explicit let-bindings to avoid this" in
                         [uu___3] in
                       uu___1 :: uu___2 in
                 let uu___1 = FStar_TypeChecker_Env.get_range env in
                 FStar_Errors.raise_error_doc
                   (FStar_Errors_Codes.Fatal_EscapedBoundVar, msg) uu___1 in
               match fvs with
               | [] ->
                   (kt,
                     (FStar_Class_Monoid.mzero
                        FStar_TypeChecker_Common.monoid_guard_t))
               | uu___1 ->
                   let rec aux try_norm t =
                     let t1 = if try_norm then norm env t else t in
                     let fvs' = FStar_Syntax_Free.names t1 in
                     let uu___2 =
                       FStar_Compiler_List.tryFind
                         (fun x ->
                            FStar_Class_Setlike.mem ()
                              (Obj.magic
                                 (FStar_Compiler_FlatSet.setlike_flat_set
                                    FStar_Syntax_Syntax.ord_bv)) x
                              (Obj.magic fvs')) fvs in
                     match uu___2 with
                     | FStar_Pervasives_Native.None ->
                         (t1,
                           (FStar_Class_Monoid.mzero
                              FStar_TypeChecker_Common.monoid_guard_t))
                     | FStar_Pervasives_Native.Some x ->
                         if Prims.op_Negation try_norm
                         then let uu___3 = norm env t1 in aux true uu___3
                         else
                           (try
                              (fun uu___4 ->
                                 match () with
                                 | () ->
                                     let env_extended =
                                       FStar_TypeChecker_Env.push_bvs env fvs in
                                     let uu___5 =
                                       let uu___6 =
                                         FStar_TypeChecker_Env.get_range env in
                                       let uu___7 =
                                         let uu___8 =
                                           FStar_Syntax_Util.type_u () in
                                         FStar_Pervasives_Native.fst uu___8 in
                                       FStar_TypeChecker_Util.new_implicit_var
                                         "no escape" uu___6 env uu___7 in
                                     (match uu___5 with
                                      | (s, uu___6, g0) ->
                                          let uu___7 =
                                            FStar_TypeChecker_Rel.try_teq
                                              false env_extended t1 s in
                                          (match uu___7 with
                                           | FStar_Pervasives_Native.Some g
                                               ->
                                               let g1 =
                                                 let uu___8 =
                                                   FStar_Class_Monoid.op_Plus_Plus
                                                     FStar_TypeChecker_Common.monoid_guard_t
                                                     g g0 in
                                                 FStar_TypeChecker_Rel.solve_deferred_constraints
                                                   env_extended uu___8 in
                                               (s, g1)
                                           | uu___8 -> fail x))) ()
                            with | uu___4 -> fail x) in
                   aux false kt)
let (check_expected_aqual_for_binder :
  FStar_Syntax_Syntax.aqual ->
    FStar_Syntax_Syntax.binder ->
      FStar_Compiler_Range_Type.range -> FStar_Syntax_Syntax.aqual)
  =
  fun aq ->
    fun b ->
      fun pos ->
        let uu___ =
          let expected_aq = FStar_Syntax_Util.aqual_of_binder b in
          match (aq, expected_aq) with
          | (FStar_Pervasives_Native.None, FStar_Pervasives_Native.None) ->
              FStar_Pervasives.Inr aq
          | (FStar_Pervasives_Native.None, FStar_Pervasives_Native.Some eaq)
              ->
              if eaq.FStar_Syntax_Syntax.aqual_implicit
              then
                FStar_Pervasives.Inl
                  "expected implicit annotation on the argument"
              else FStar_Pervasives.Inr expected_aq
          | (FStar_Pervasives_Native.Some aq1, FStar_Pervasives_Native.None)
              ->
              FStar_Pervasives.Inl
                "expected an explicit argument (without annotation)"
          | (FStar_Pervasives_Native.Some aq1, FStar_Pervasives_Native.Some
             eaq) ->
              if
                aq1.FStar_Syntax_Syntax.aqual_implicit <>
                  eaq.FStar_Syntax_Syntax.aqual_implicit
              then FStar_Pervasives.Inl "mismatch"
              else FStar_Pervasives.Inr expected_aq in
        match uu___ with
        | FStar_Pervasives.Inl err ->
            let msg =
              let uu___1 =
                FStar_Errors_Msg.text
                  (Prims.strcat "Inconsistent argument qualifiers: "
                     (Prims.strcat err ".")) in
              [uu___1] in
            FStar_Errors.raise_error_doc
              (FStar_Errors_Codes.Fatal_InconsistentImplicitQualifier, msg)
              pos
        | FStar_Pervasives.Inr r -> r
let (check_erasable_binder_attributes :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax Prims.list ->
      FStar_Syntax_Syntax.typ -> unit)
  =
  fun env ->
    fun attrs ->
      fun binder_ty ->
        FStar_Compiler_List.iter
          (fun attr ->
             let uu___ =
               (FStar_Syntax_Util.is_fvar FStar_Parser_Const.erasable_attr
                  attr)
                 &&
                 (let uu___1 =
                    FStar_TypeChecker_Normalize.non_info_norm env binder_ty in
                  Prims.op_Negation uu___1) in
             if uu___
             then
               FStar_Errors.raise_error
                 (FStar_Errors_Codes.Fatal_QulifierListNotPermitted,
                   "Incompatible attributes:an erasable attribute on a binder must bind a name at an non-informative type")
                 attr.FStar_Syntax_Syntax.pos
             else ()) attrs
let (push_binding :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.binder -> FStar_TypeChecker_Env.env)
  =
  fun env ->
    fun b ->
      FStar_TypeChecker_Env.push_bv env b.FStar_Syntax_Syntax.binder_bv
let (maybe_extend_subst :
  FStar_Syntax_Syntax.subst_elt Prims.list ->
    FStar_Syntax_Syntax.binder ->
      FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
        FStar_Syntax_Syntax.subst_t)
  =
  fun s ->
    fun b ->
      fun v ->
        let uu___ = FStar_Syntax_Syntax.is_null_binder b in
        if uu___
        then s
        else (FStar_Syntax_Syntax.NT ((b.FStar_Syntax_Syntax.binder_bv), v))
          :: s
let (set_lcomp_result :
  FStar_TypeChecker_Common.lcomp ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
      FStar_TypeChecker_Common.lcomp)
  =
  fun lc ->
    fun t ->
      FStar_TypeChecker_Common.apply_lcomp
        (fun c -> FStar_Syntax_Util.set_result_typ c t) (fun g -> g)
        {
          FStar_TypeChecker_Common.eff_name =
            (lc.FStar_TypeChecker_Common.eff_name);
          FStar_TypeChecker_Common.res_typ = t;
          FStar_TypeChecker_Common.cflags =
            (lc.FStar_TypeChecker_Common.cflags);
          FStar_TypeChecker_Common.comp_thunk =
            (lc.FStar_TypeChecker_Common.comp_thunk)
        }
let (memo_tk :
  FStar_Syntax_Syntax.term ->
    FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.term)
  = fun e -> fun t -> e
let (maybe_warn_on_use :
  FStar_TypeChecker_Env.env -> FStar_Syntax_Syntax.fv -> unit) =
  fun env ->
    fun fv ->
      let uu___ =
        FStar_TypeChecker_Env.lookup_attrs_of_lid env
          (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
      match uu___ with
      | FStar_Pervasives_Native.None -> ()
      | FStar_Pervasives_Native.Some attrs ->
          FStar_Compiler_List.iter
            (fun a ->
               let uu___1 = FStar_Syntax_Util.head_and_args a in
               match uu___1 with
               | (head, args) ->
                   let msg_arg m =
                     match args with
                     | ({
                          FStar_Syntax_Syntax.n =
                            FStar_Syntax_Syntax.Tm_constant
                            (FStar_Const.Const_string (s, uu___2));
                          FStar_Syntax_Syntax.pos = uu___3;
                          FStar_Syntax_Syntax.vars = uu___4;
                          FStar_Syntax_Syntax.hash_code = uu___5;_},
                        uu___6)::[] ->
                         let uu___7 =
                           let uu___8 = FStar_Errors_Msg.text s in [uu___8] in
                         FStar_Compiler_List.op_At m uu___7
                     | uu___2 -> m in
                   (match head.FStar_Syntax_Syntax.n with
                    | FStar_Syntax_Syntax.Tm_fvar attr_fv when
                        FStar_Ident.lid_equals
                          (attr_fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                          FStar_Parser_Const.warn_on_use_attr
                        ->
                        let m =
                          let uu___2 =
                            let uu___3 =
                              FStar_Ident.string_of_lid
                                (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                            FStar_Compiler_Util.format1
                              "Every use of %s triggers a warning" uu___3 in
                          FStar_Errors_Msg.text uu___2 in
                        let uu___2 =
                          FStar_Ident.range_of_lid
                            (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                        let uu___3 =
                          let uu___4 = msg_arg [m] in
                          (FStar_Errors_Codes.Warning_WarnOnUse, uu___4) in
                        FStar_Errors.log_issue_doc uu___2 uu___3
                    | FStar_Syntax_Syntax.Tm_fvar attr_fv when
                        FStar_Ident.lid_equals
                          (attr_fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                          FStar_Parser_Const.deprecated_attr
                        ->
                        let m =
                          let uu___2 =
                            let uu___3 =
                              FStar_Ident.string_of_lid
                                (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                            FStar_Compiler_Util.format1 "%s is deprecated"
                              uu___3 in
                          FStar_Errors_Msg.text uu___2 in
                        let uu___2 =
                          FStar_Ident.range_of_lid
                            (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                        let uu___3 =
                          let uu___4 = msg_arg [m] in
                          (FStar_Errors_Codes.Warning_DeprecatedDefinition,
                            uu___4) in
                        FStar_Errors.log_issue_doc uu___2 uu___3
                    | uu___2 -> ())) attrs
let (value_check_expected_typ :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.typ, FStar_TypeChecker_Common.lcomp)
        FStar_Pervasives.either ->
        FStar_TypeChecker_Env.guard_t ->
          (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
            FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      fun tlc ->
        fun guard ->
          FStar_Defensive.def_check_scoped
            FStar_TypeChecker_Env.hasBinders_env
            FStar_TypeChecker_Env.hasNames_guard
            FStar_TypeChecker_Env.pretty_guard e.FStar_Syntax_Syntax.pos
            "value_check_expected_typ" env guard;
          (let lc =
             match tlc with
             | FStar_Pervasives.Inl t ->
                 let uu___1 = FStar_Syntax_Syntax.mk_Total t in
                 FStar_TypeChecker_Common.lcomp_of_comp uu___1
             | FStar_Pervasives.Inr lc1 -> lc1 in
           let t = lc.FStar_TypeChecker_Common.res_typ in
           let uu___1 =
             let uu___2 = FStar_TypeChecker_Env.expected_typ env in
             match uu___2 with
             | FStar_Pervasives_Native.None -> ((memo_tk e t), lc, guard)
             | FStar_Pervasives_Native.Some (t', use_eq) ->
                 let uu___3 =
                   FStar_TypeChecker_Util.check_has_type_maybe_coerce env e
                     lc t' use_eq in
                 (match uu___3 with
                  | (e1, lc1, g) ->
                      ((let uu___5 = FStar_Compiler_Debug.medium () in
                        if uu___5
                        then
                          let uu___6 =
                            FStar_TypeChecker_Common.lcomp_to_string lc1 in
                          let uu___7 =
                            FStar_Class_Show.show
                              FStar_Syntax_Print.showable_term t' in
                          let uu___8 =
                            FStar_TypeChecker_Rel.guard_to_string env g in
                          let uu___9 =
                            FStar_TypeChecker_Rel.guard_to_string env guard in
                          FStar_Compiler_Util.print4
                            "value_check_expected_typ: type is %s<:%s \tguard is %s, %s\n"
                            uu___6 uu___7 uu___8 uu___9
                        else ());
                       (let t1 = lc1.FStar_TypeChecker_Common.res_typ in
                        let g1 =
                          FStar_Class_Monoid.op_Plus_Plus
                            FStar_TypeChecker_Common.monoid_guard_t g guard in
                        let msg =
                          let uu___5 =
                            FStar_TypeChecker_Env.is_trivial_guard_formula g1 in
                          if uu___5
                          then FStar_Pervasives_Native.None
                          else
                            FStar_Pervasives_Native.Some
                              (FStar_TypeChecker_Err.subtyping_failed env t1
                                 t') in
                        let uu___5 =
                          FStar_TypeChecker_Util.strengthen_precondition msg
                            env e1 lc1 g1 in
                        match uu___5 with
                        | (lc2, g2) ->
                            let uu___6 = set_lcomp_result lc2 t' in
                            ((memo_tk e1 t'), uu___6, g2)))) in
           match uu___1 with | (e1, lc1, g) -> (e1, lc1, g))
let (comp_check_expected_typ :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_TypeChecker_Common.lcomp ->
        (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
          FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      fun lc ->
        let uu___ = FStar_TypeChecker_Env.expected_typ env in
        match uu___ with
        | FStar_Pervasives_Native.None ->
            (e, lc,
              (FStar_Class_Monoid.mzero
                 FStar_TypeChecker_Common.monoid_guard_t))
        | FStar_Pervasives_Native.Some (t, use_eq) ->
            let uu___1 = FStar_TypeChecker_Util.maybe_coerce_lc env e lc t in
            (match uu___1 with
             | (e1, lc1, g_c) ->
                 let uu___2 =
                   FStar_TypeChecker_Util.weaken_result_typ env e1 lc1 t
                     use_eq in
                 (match uu___2 with
                  | (e2, lc2, g) ->
                      let uu___3 =
                        FStar_Class_Monoid.op_Plus_Plus
                          FStar_TypeChecker_Common.monoid_guard_t g g_c in
                      (e2, lc2, uu___3)))
let (check_expected_effect :
  FStar_TypeChecker_Env.env ->
    Prims.bool ->
      FStar_Syntax_Syntax.comp FStar_Pervasives_Native.option ->
        (FStar_Syntax_Syntax.term * FStar_Syntax_Syntax.comp) ->
          (FStar_Syntax_Syntax.term * FStar_Syntax_Syntax.comp *
            FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun use_eq ->
      fun copt ->
        fun ec ->
          let uu___ = ec in
          match uu___ with
          | (e, c) ->
              let tot_or_gtot c1 =
                let uu___1 = FStar_Syntax_Util.is_pure_comp c1 in
                if uu___1
                then
                  FStar_Syntax_Syntax.mk_Total
                    (FStar_Syntax_Util.comp_result c1)
                else
                  (let uu___3 = FStar_Syntax_Util.is_pure_or_ghost_comp c1 in
                   if uu___3
                   then
                     FStar_Syntax_Syntax.mk_GTotal
                       (FStar_Syntax_Util.comp_result c1)
                   else
                     FStar_Compiler_Effect.failwith
                       "Impossible: Expected pure_or_ghost comp") in
              let uu___1 =
                let ct = FStar_Syntax_Util.comp_result c in
                match copt with
                | FStar_Pervasives_Native.Some uu___2 ->
                    (copt, c, FStar_Pervasives_Native.None)
                | FStar_Pervasives_Native.None ->
                    let uu___2 =
                      ((FStar_Options.ml_ish ()) &&
                         (let uu___3 = FStar_Parser_Const.effect_ALL_lid () in
                          FStar_Ident.lid_equals uu___3
                            (FStar_Syntax_Util.comp_effect_name c)))
                        ||
                        (((FStar_Options.ml_ish ()) && (FStar_Options.lax ()))
                           &&
                           (let uu___3 =
                              FStar_Syntax_Util.is_pure_or_ghost_comp c in
                            Prims.op_Negation uu___3)) in
                    if uu___2
                    then
                      let uu___3 =
                        let uu___4 =
                          FStar_Syntax_Util.ml_comp ct
                            e.FStar_Syntax_Syntax.pos in
                        FStar_Pervasives_Native.Some uu___4 in
                      (uu___3, c, FStar_Pervasives_Native.None)
                    else
                      (let uu___4 = FStar_Syntax_Util.is_tot_or_gtot_comp c in
                       if uu___4
                       then
                         let uu___5 = tot_or_gtot c in
                         (FStar_Pervasives_Native.None, uu___5,
                           FStar_Pervasives_Native.None)
                       else
                         (let uu___6 =
                            FStar_Syntax_Util.is_pure_or_ghost_comp c in
                          if uu___6
                          then
                            let uu___7 =
                              let uu___8 = tot_or_gtot c in
                              FStar_Pervasives_Native.Some uu___8 in
                            (uu___7, c, FStar_Pervasives_Native.None)
                          else
                            (let norm_eff_name =
                               FStar_TypeChecker_Env.norm_eff_name env
                                 (FStar_Syntax_Util.comp_effect_name c) in
                             let uu___8 =
                               FStar_TypeChecker_Env.is_layered_effect env
                                 norm_eff_name in
                             if uu___8
                             then
                               let def_eff_opt =
                                 FStar_TypeChecker_Env.get_default_effect env
                                   norm_eff_name in
                               match def_eff_opt with
                               | FStar_Pervasives_Native.None ->
                                   let uu___9 =
                                     let uu___10 =
                                       let uu___11 =
                                         FStar_Ident.string_of_lid
                                           (FStar_Syntax_Util.comp_effect_name
                                              c) in
                                       let uu___12 =
                                         FStar_Compiler_Range_Ops.string_of_range
                                           e.FStar_Syntax_Syntax.pos in
                                       FStar_Compiler_Util.format2
                                         "Missing annotation for a layered effect (%s) computation at %s"
                                         uu___11 uu___12 in
                                     (FStar_Errors_Codes.Error_LayeredMissingAnnot,
                                       uu___10) in
                                   FStar_Errors.raise_error uu___9
                                     e.FStar_Syntax_Syntax.pos
                               | FStar_Pervasives_Native.Some def_eff ->
                                   let uu___9 =
                                     match c.FStar_Syntax_Syntax.n with
                                     | FStar_Syntax_Syntax.Comp
                                         {
                                           FStar_Syntax_Syntax.comp_univs =
                                             comp_univs;
                                           FStar_Syntax_Syntax.effect_name =
                                             uu___10;
                                           FStar_Syntax_Syntax.result_typ =
                                             result_ty;
                                           FStar_Syntax_Syntax.effect_args =
                                             uu___11;
                                           FStar_Syntax_Syntax.flags =
                                             uu___12;_}
                                         -> (comp_univs, result_ty)
                                     | uu___10 ->
                                         FStar_Compiler_Effect.failwith
                                           "Impossible!" in
                                   (match uu___9 with
                                    | (comp_univs, result_ty) ->
                                        let expected_c =
                                          {
                                            FStar_Syntax_Syntax.comp_univs =
                                              comp_univs;
                                            FStar_Syntax_Syntax.effect_name =
                                              def_eff;
                                            FStar_Syntax_Syntax.result_typ =
                                              result_ty;
                                            FStar_Syntax_Syntax.effect_args =
                                              [];
                                            FStar_Syntax_Syntax.flags = []
                                          } in
                                        let uu___10 =
                                          let uu___11 =
                                            FStar_Syntax_Syntax.mk_Comp
                                              expected_c in
                                          FStar_Pervasives_Native.Some
                                            uu___11 in
                                        (uu___10, c,
                                          FStar_Pervasives_Native.None))
                             else
                               (let uu___10 =
                                  FStar_Options.trivial_pre_for_unannotated_effectful_fns
                                    () in
                                if uu___10
                                then
                                  let uu___11 =
                                    let uu___12 =
                                      FStar_TypeChecker_Util.check_trivial_precondition_wp
                                        env c in
                                    match uu___12 with
                                    | (uu___13, uu___14, g) ->
                                        FStar_Pervasives_Native.Some g in
                                  (FStar_Pervasives_Native.None, c, uu___11)
                                else
                                  (FStar_Pervasives_Native.None, c,
                                    FStar_Pervasives_Native.None))))) in
              (match uu___1 with
               | (expected_c_opt, c1, gopt) ->
                   (FStar_Defensive.def_check_scoped
                      FStar_TypeChecker_Env.hasBinders_env
                      FStar_Class_Binders.hasNames_comp
                      FStar_Syntax_Print.pretty_comp
                      c1.FStar_Syntax_Syntax.pos
                      "check_expected_effect.c.before_norm" env c1;
                    (let c2 =
                       FStar_Errors.with_ctx
                         "While normalizing actual computation type in check_expected_effect"
                         (fun uu___3 -> norm_c env c1) in
                     FStar_Defensive.def_check_scoped
                       FStar_TypeChecker_Env.hasBinders_env
                       FStar_Class_Binders.hasNames_comp
                       FStar_Syntax_Print.pretty_comp
                       c2.FStar_Syntax_Syntax.pos
                       "check_expected_effect.c.after_norm" env c2;
                     (match expected_c_opt with
                      | FStar_Pervasives_Native.None ->
                          (e, c2,
                            ((match gopt with
                              | FStar_Pervasives_Native.None ->
                                  FStar_Class_Monoid.mzero
                                    FStar_TypeChecker_Common.monoid_guard_t
                              | FStar_Pervasives_Native.Some g -> g)))
                      | FStar_Pervasives_Native.Some expected_c ->
                          ((match gopt with
                            | FStar_Pervasives_Native.None -> ()
                            | FStar_Pervasives_Native.Some uu___5 ->
                                FStar_Compiler_Effect.failwith
                                  "Impossible! check_expected_effect, gopt should have been None");
                           (let c3 =
                              let uu___5 =
                                FStar_TypeChecker_Common.lcomp_of_comp c2 in
                              FStar_TypeChecker_Util.maybe_assume_result_eq_pure_term
                                env e uu___5 in
                            let uu___5 =
                              FStar_TypeChecker_Common.lcomp_comp c3 in
                            match uu___5 with
                            | (c4, g_c) ->
                                (FStar_Defensive.def_check_scoped
                                   FStar_TypeChecker_Env.hasBinders_env
                                   FStar_Class_Binders.hasNames_comp
                                   FStar_Syntax_Print.pretty_comp
                                   c4.FStar_Syntax_Syntax.pos
                                   "check_expected_effect.c.after_assume" env
                                   c4;
                                 (let uu___8 = FStar_Compiler_Debug.medium () in
                                  if uu___8
                                  then
                                    let uu___9 =
                                      FStar_Class_Show.show
                                        FStar_Syntax_Print.showable_term e in
                                    let uu___10 =
                                      FStar_Class_Show.show
                                        FStar_Syntax_Print.showable_comp c4 in
                                    let uu___11 =
                                      FStar_Class_Show.show
                                        FStar_Syntax_Print.showable_comp
                                        expected_c in
                                    let uu___12 =
                                      FStar_Class_Show.show
                                        (FStar_Class_Show.printableshow
                                           FStar_Class_Printable.printable_bool)
                                        use_eq in
                                    FStar_Compiler_Util.print4
                                      "In check_expected_effect, asking rel to solve the problem on e=(%s) and c=(%s), expected_c=(%s), and use_eq=%s\n"
                                      uu___9 uu___10 uu___11 uu___12
                                  else ());
                                 (let uu___8 =
                                    FStar_TypeChecker_Util.check_comp env
                                      use_eq e c4 expected_c in
                                  match uu___8 with
                                  | (e1, uu___9, g) ->
                                      let g1 =
                                        let uu___10 =
                                          FStar_TypeChecker_Env.get_range env in
                                        let uu___11 =
                                          FStar_Errors_Msg.mkmsg
                                            "Could not prove post-condition" in
                                        FStar_TypeChecker_Util.label_guard
                                          uu___10 uu___11 g in
                                      ((let uu___11 =
                                          FStar_Compiler_Debug.medium () in
                                        if uu___11
                                        then
                                          let uu___12 =
                                            FStar_Compiler_Range_Ops.string_of_range
                                              e1.FStar_Syntax_Syntax.pos in
                                          let uu___13 =
                                            FStar_TypeChecker_Rel.guard_to_string
                                              env g1 in
                                          FStar_Compiler_Util.print2
                                            "(%s) DONE check_expected_effect;\n\tguard is: %s\n"
                                            uu___12 uu___13
                                        else ());
                                       (let e2 =
                                          FStar_TypeChecker_Util.maybe_lift
                                            env e1
                                            (FStar_Syntax_Util.comp_effect_name
                                               c4)
                                            (FStar_Syntax_Util.comp_effect_name
                                               expected_c)
                                            (FStar_Syntax_Util.comp_result c4) in
                                        let uu___11 =
                                          FStar_Class_Monoid.op_Plus_Plus
                                            FStar_TypeChecker_Common.monoid_guard_t
                                            g1 g_c in
                                        (e2, expected_c, uu___11)))))))))))
let no_logical_guard :
  'uuuuu 'uuuuu1 .
    FStar_TypeChecker_Env.env ->
      ('uuuuu * 'uuuuu1 * FStar_TypeChecker_Env.guard_t) ->
        ('uuuuu * 'uuuuu1 * FStar_TypeChecker_Env.guard_t)
  =
  fun env ->
    fun uu___ ->
      match uu___ with
      | (te, kt, f) ->
          let uu___1 = FStar_TypeChecker_Env.guard_form f in
          (match uu___1 with
           | FStar_TypeChecker_Common.Trivial -> (te, kt, f)
           | FStar_TypeChecker_Common.NonTrivial f1 ->
               let uu___2 =
                 FStar_TypeChecker_Err.unexpected_non_trivial_precondition_on_term
                   env f1 in
               let uu___3 = FStar_TypeChecker_Env.get_range env in
               FStar_Errors.raise_error uu___2 uu___3)
let (print_expected_ty_str : FStar_TypeChecker_Env.env -> Prims.string) =
  fun env ->
    let uu___ = FStar_TypeChecker_Env.expected_typ env in
    match uu___ with
    | FStar_Pervasives_Native.None -> "Expected type is None"
    | FStar_Pervasives_Native.Some (t, use_eq) ->
        let uu___1 = FStar_Class_Show.show FStar_Syntax_Print.showable_term t in
        let uu___2 = FStar_Compiler_Util.string_of_bool use_eq in
        FStar_Compiler_Util.format2 "Expected type is (%s, use_eq = %s)"
          uu___1 uu___2
let (print_expected_ty : FStar_TypeChecker_Env.env -> unit) =
  fun env ->
    let uu___ = print_expected_ty_str env in
    FStar_Compiler_Util.print1 "%s\n" uu___
let rec (get_pat_vars' :
  FStar_Syntax_Syntax.bv Prims.list ->
    Prims.bool ->
      FStar_Syntax_Syntax.term ->
        FStar_Syntax_Syntax.bv FStar_Compiler_FlatSet.t)
  =
  fun uu___2 ->
    fun uu___1 ->
      fun uu___ ->
        (fun all ->
           fun andlist ->
             fun pats ->
               let pats1 = FStar_Syntax_Util.unmeta pats in
               let uu___ = FStar_Syntax_Util.head_and_args pats1 in
               match uu___ with
               | (head, args) ->
                   let uu___1 =
                     let uu___2 =
                       let uu___3 = FStar_Syntax_Util.un_uinst head in
                       uu___3.FStar_Syntax_Syntax.n in
                     (uu___2, args) in
                   (match uu___1 with
                    | (FStar_Syntax_Syntax.Tm_fvar fv, uu___2) when
                        FStar_Syntax_Syntax.fv_eq_lid fv
                          FStar_Parser_Const.nil_lid
                        ->
                        Obj.magic
                          (Obj.repr
                             (if andlist
                              then
                                FStar_Class_Setlike.from_list ()
                                  (Obj.magic
                                     (FStar_Compiler_FlatSet.setlike_flat_set
                                        FStar_Syntax_Syntax.ord_bv)) all
                              else
                                FStar_Class_Setlike.empty ()
                                  (Obj.magic
                                     (FStar_Compiler_FlatSet.setlike_flat_set
                                        FStar_Syntax_Syntax.ord_bv)) ()))
                    | (FStar_Syntax_Syntax.Tm_fvar fv,
                       (uu___2, FStar_Pervasives_Native.Some
                        { FStar_Syntax_Syntax.aqual_implicit = true;
                          FStar_Syntax_Syntax.aqual_attributes = uu___3;_})::
                       (hd, FStar_Pervasives_Native.None)::(tl,
                                                            FStar_Pervasives_Native.None)::[])
                        when
                        FStar_Syntax_Syntax.fv_eq_lid fv
                          FStar_Parser_Const.cons_lid
                        ->
                        Obj.magic
                          (Obj.repr
                             (let hdvs = get_pat_vars' all false hd in
                              let tlvs = get_pat_vars' all andlist tl in
                              if andlist
                              then
                                FStar_Class_Setlike.inter ()
                                  (Obj.magic
                                     (FStar_Compiler_FlatSet.setlike_flat_set
                                        FStar_Syntax_Syntax.ord_bv))
                                  (Obj.magic hdvs) (Obj.magic tlvs)
                              else
                                FStar_Class_Setlike.union ()
                                  (Obj.magic
                                     (FStar_Compiler_FlatSet.setlike_flat_set
                                        FStar_Syntax_Syntax.ord_bv))
                                  (Obj.magic hdvs) (Obj.magic tlvs)))
                    | (FStar_Syntax_Syntax.Tm_fvar fv,
                       (uu___2, FStar_Pervasives_Native.Some
                        { FStar_Syntax_Syntax.aqual_implicit = true;
                          FStar_Syntax_Syntax.aqual_attributes = uu___3;_})::
                       (pat, FStar_Pervasives_Native.None)::[]) when
                        FStar_Syntax_Syntax.fv_eq_lid fv
                          FStar_Parser_Const.smtpat_lid
                        -> Obj.magic (Obj.repr (FStar_Syntax_Free.names pat))
                    | (FStar_Syntax_Syntax.Tm_fvar fv,
                       (subpats, FStar_Pervasives_Native.None)::[]) when
                        FStar_Syntax_Syntax.fv_eq_lid fv
                          FStar_Parser_Const.smtpatOr_lid
                        ->
                        Obj.magic (Obj.repr (get_pat_vars' all true subpats))
                    | uu___2 ->
                        Obj.magic
                          (Obj.repr
                             (FStar_Class_Setlike.empty ()
                                (Obj.magic
                                   (FStar_Compiler_FlatSet.setlike_flat_set
                                      FStar_Syntax_Syntax.ord_bv)) ()))))
          uu___2 uu___1 uu___
let (get_pat_vars :
  FStar_Syntax_Syntax.bv Prims.list ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.bv FStar_Compiler_FlatSet.t)
  = fun all -> fun pats -> get_pat_vars' all false pats
let (check_pat_fvs :
  FStar_Compiler_Range_Type.range ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.term ->
        FStar_Syntax_Syntax.binder Prims.list -> unit)
  =
  fun rng ->
    fun env ->
      fun pats ->
        fun bs ->
          let pat_vars =
            let uu___ =
              FStar_Compiler_List.map
                (fun b -> b.FStar_Syntax_Syntax.binder_bv) bs in
            let uu___1 =
              FStar_TypeChecker_Normalize.normalize
                [FStar_TypeChecker_Env.Beta] env pats in
            get_pat_vars uu___ uu___1 in
          let uu___ =
            FStar_Compiler_Util.find_opt
              (fun uu___1 ->
                 match uu___1 with
                 | { FStar_Syntax_Syntax.binder_bv = b;
                     FStar_Syntax_Syntax.binder_qual = uu___2;
                     FStar_Syntax_Syntax.binder_positivity = uu___3;
                     FStar_Syntax_Syntax.binder_attrs = uu___4;_} ->
                     let uu___5 =
                       FStar_Class_Setlike.mem ()
                         (Obj.magic
                            (FStar_Compiler_FlatSet.setlike_flat_set
                               FStar_Syntax_Syntax.ord_bv)) b
                         (Obj.magic pat_vars) in
                     Prims.op_Negation uu___5) bs in
          match uu___ with
          | FStar_Pervasives_Native.None -> ()
          | FStar_Pervasives_Native.Some
              { FStar_Syntax_Syntax.binder_bv = x;
                FStar_Syntax_Syntax.binder_qual = uu___1;
                FStar_Syntax_Syntax.binder_positivity = uu___2;
                FStar_Syntax_Syntax.binder_attrs = uu___3;_}
              ->
              let uu___4 =
                let uu___5 =
                  let uu___6 =
                    FStar_Class_Show.show FStar_Syntax_Print.showable_bv x in
                  FStar_Compiler_Util.format1
                    "Pattern misses at least one bound variable: %s" uu___6 in
                (FStar_Errors_Codes.Warning_SMTPatternIllFormed, uu___5) in
              FStar_Errors.log_issue rng uu___4
let (check_no_smt_theory_symbols :
  FStar_TypeChecker_Env.env -> FStar_Syntax_Syntax.term -> unit) =
  fun en ->
    fun t ->
      let rec pat_terms t1 =
        let t2 = FStar_Syntax_Util.unmeta t1 in
        let uu___ = FStar_Syntax_Util.head_and_args t2 in
        match uu___ with
        | (head, args) ->
            let uu___1 =
              let uu___2 =
                let uu___3 = FStar_Syntax_Util.un_uinst head in
                uu___3.FStar_Syntax_Syntax.n in
              (uu___2, args) in
            (match uu___1 with
             | (FStar_Syntax_Syntax.Tm_fvar fv, uu___2) when
                 FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.nil_lid
                 -> []
             | (FStar_Syntax_Syntax.Tm_fvar fv,
                uu___2::(hd, uu___3)::(tl, uu___4)::[]) when
                 FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.cons_lid
                 ->
                 let uu___5 = pat_terms hd in
                 let uu___6 = pat_terms tl in
                 FStar_Compiler_List.op_At uu___5 uu___6
             | (FStar_Syntax_Syntax.Tm_fvar fv, uu___2::(pat, uu___3)::[])
                 when
                 FStar_Syntax_Syntax.fv_eq_lid fv
                   FStar_Parser_Const.smtpat_lid
                 -> [pat]
             | (FStar_Syntax_Syntax.Tm_fvar fv,
                (subpats, FStar_Pervasives_Native.None)::[]) when
                 FStar_Syntax_Syntax.fv_eq_lid fv
                   FStar_Parser_Const.smtpatOr_lid
                 -> pat_terms subpats
             | uu___2 -> []) in
      let rec aux t1 =
        let uu___ =
          let uu___1 = FStar_Syntax_Subst.compress t1 in
          uu___1.FStar_Syntax_Syntax.n in
        match uu___ with
        | FStar_Syntax_Syntax.Tm_bvar uu___1 -> []
        | FStar_Syntax_Syntax.Tm_name uu___1 -> []
        | FStar_Syntax_Syntax.Tm_constant uu___1 -> []
        | FStar_Syntax_Syntax.Tm_type uu___1 -> []
        | FStar_Syntax_Syntax.Tm_uvar uu___1 -> []
        | FStar_Syntax_Syntax.Tm_lazy uu___1 -> []
        | FStar_Syntax_Syntax.Tm_unknown -> []
        | FStar_Syntax_Syntax.Tm_abs uu___1 -> [t1]
        | FStar_Syntax_Syntax.Tm_arrow uu___1 -> [t1]
        | FStar_Syntax_Syntax.Tm_refine uu___1 -> [t1]
        | FStar_Syntax_Syntax.Tm_match uu___1 -> [t1]
        | FStar_Syntax_Syntax.Tm_let uu___1 -> [t1]
        | FStar_Syntax_Syntax.Tm_delayed uu___1 -> [t1]
        | FStar_Syntax_Syntax.Tm_quoted uu___1 -> [t1]
        | FStar_Syntax_Syntax.Tm_fvar fv ->
            let uu___1 =
              FStar_TypeChecker_Env.fv_has_attr en fv
                FStar_Parser_Const.smt_theory_symbol_attr_lid in
            if uu___1 then [t1] else []
        | FStar_Syntax_Syntax.Tm_app
            { FStar_Syntax_Syntax.hd = t2; FStar_Syntax_Syntax.args = args;_}
            ->
            let uu___1 = aux t2 in
            FStar_Compiler_List.fold_left
              (fun acc ->
                 fun uu___2 ->
                   match uu___2 with
                   | (t3, uu___3) ->
                       let uu___4 = aux t3 in
                       FStar_Compiler_List.op_At acc uu___4) uu___1 args
        | FStar_Syntax_Syntax.Tm_ascribed
            { FStar_Syntax_Syntax.tm = t2; FStar_Syntax_Syntax.asc = uu___1;
              FStar_Syntax_Syntax.eff_opt = uu___2;_}
            -> aux t2
        | FStar_Syntax_Syntax.Tm_uinst (t2, uu___1) -> aux t2
        | FStar_Syntax_Syntax.Tm_meta
            { FStar_Syntax_Syntax.tm2 = t2;
              FStar_Syntax_Syntax.meta = uu___1;_}
            -> aux t2 in
      let tlist =
        let uu___ = pat_terms t in FStar_Compiler_List.collect aux uu___ in
      if (FStar_Compiler_List.length tlist) = Prims.int_zero
      then ()
      else
        (let uu___1 =
           let uu___2 =
             let uu___3 =
               let uu___4 =
                 FStar_Errors_Msg.text
                   "Pattern uses these theory symbols or terms that should not be in an SMT pattern:" in
               let uu___5 =
                 let uu___6 =
                   let uu___7 =
                     let uu___8 = FStar_Pprint.break_ Prims.int_one in
                     FStar_Pprint.op_Hat_Hat FStar_Pprint.comma uu___8 in
                   FStar_Pprint.separate_map uu___7
                     (FStar_Class_PP.pp FStar_Syntax_Print.pretty_term) tlist in
                 FStar_Pprint.group uu___6 in
               FStar_Pprint.prefix (Prims.of_int (2)) Prims.int_one uu___4
                 uu___5 in
             [uu___3] in
           (FStar_Errors_Codes.Warning_SMTPatternIllFormed, uu___2) in
         FStar_Errors.log_issue_doc t.FStar_Syntax_Syntax.pos uu___1)
let (check_smt_pat :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
      FStar_Syntax_Syntax.binder Prims.list ->
        FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax -> unit)
  =
  fun env ->
    fun t ->
      fun bs ->
        fun c ->
          let uu___ = FStar_Syntax_Util.is_smt_lemma t in
          if uu___
          then
            match c.FStar_Syntax_Syntax.n with
            | FStar_Syntax_Syntax.Comp
                { FStar_Syntax_Syntax.comp_univs = uu___1;
                  FStar_Syntax_Syntax.effect_name = uu___2;
                  FStar_Syntax_Syntax.result_typ = uu___3;
                  FStar_Syntax_Syntax.effect_args =
                    _pre::_post::(pats, uu___4)::[];
                  FStar_Syntax_Syntax.flags = uu___5;_}
                ->
                (check_pat_fvs t.FStar_Syntax_Syntax.pos env pats bs;
                 check_no_smt_theory_symbols env pats)
            | uu___1 ->
                FStar_Compiler_Effect.failwith
                  "Impossible: check_smt_pat: not Comp"
          else ()
let (guard_letrecs :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.binders ->
      FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax ->
        (FStar_Syntax_Syntax.lbname * FStar_Syntax_Syntax.typ *
          FStar_Syntax_Syntax.univ_names) Prims.list)
  =
  fun env ->
    fun actuals ->
      fun expected_c ->
        match env.FStar_TypeChecker_Env.letrecs with
        | [] -> []
        | letrecs ->
            let r = FStar_TypeChecker_Env.get_range env in
            let env1 =
              {
                FStar_TypeChecker_Env.solver =
                  (env.FStar_TypeChecker_Env.solver);
                FStar_TypeChecker_Env.range =
                  (env.FStar_TypeChecker_Env.range);
                FStar_TypeChecker_Env.curmodule =
                  (env.FStar_TypeChecker_Env.curmodule);
                FStar_TypeChecker_Env.gamma =
                  (env.FStar_TypeChecker_Env.gamma);
                FStar_TypeChecker_Env.gamma_sig =
                  (env.FStar_TypeChecker_Env.gamma_sig);
                FStar_TypeChecker_Env.gamma_cache =
                  (env.FStar_TypeChecker_Env.gamma_cache);
                FStar_TypeChecker_Env.modules =
                  (env.FStar_TypeChecker_Env.modules);
                FStar_TypeChecker_Env.expected_typ =
                  (env.FStar_TypeChecker_Env.expected_typ);
                FStar_TypeChecker_Env.sigtab =
                  (env.FStar_TypeChecker_Env.sigtab);
                FStar_TypeChecker_Env.attrtab =
                  (env.FStar_TypeChecker_Env.attrtab);
                FStar_TypeChecker_Env.instantiate_imp =
                  (env.FStar_TypeChecker_Env.instantiate_imp);
                FStar_TypeChecker_Env.effects =
                  (env.FStar_TypeChecker_Env.effects);
                FStar_TypeChecker_Env.generalize =
                  (env.FStar_TypeChecker_Env.generalize);
                FStar_TypeChecker_Env.letrecs = [];
                FStar_TypeChecker_Env.top_level =
                  (env.FStar_TypeChecker_Env.top_level);
                FStar_TypeChecker_Env.check_uvars =
                  (env.FStar_TypeChecker_Env.check_uvars);
                FStar_TypeChecker_Env.use_eq_strict =
                  (env.FStar_TypeChecker_Env.use_eq_strict);
                FStar_TypeChecker_Env.is_iface =
                  (env.FStar_TypeChecker_Env.is_iface);
                FStar_TypeChecker_Env.admit =
                  (env.FStar_TypeChecker_Env.admit);
                FStar_TypeChecker_Env.lax_universes =
                  (env.FStar_TypeChecker_Env.lax_universes);
                FStar_TypeChecker_Env.phase1 =
                  (env.FStar_TypeChecker_Env.phase1);
                FStar_TypeChecker_Env.failhard =
                  (env.FStar_TypeChecker_Env.failhard);
                FStar_TypeChecker_Env.flychecking =
                  (env.FStar_TypeChecker_Env.flychecking);
                FStar_TypeChecker_Env.uvar_subtyping =
                  (env.FStar_TypeChecker_Env.uvar_subtyping);
                FStar_TypeChecker_Env.intactics =
                  (env.FStar_TypeChecker_Env.intactics);
                FStar_TypeChecker_Env.nocoerce =
                  (env.FStar_TypeChecker_Env.nocoerce);
                FStar_TypeChecker_Env.tc_term =
                  (env.FStar_TypeChecker_Env.tc_term);
                FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                  (env.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                FStar_TypeChecker_Env.universe_of =
                  (env.FStar_TypeChecker_Env.universe_of);
                FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term =
                  (env.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                FStar_TypeChecker_Env.teq_nosmt_force =
                  (env.FStar_TypeChecker_Env.teq_nosmt_force);
                FStar_TypeChecker_Env.subtype_nosmt_force =
                  (env.FStar_TypeChecker_Env.subtype_nosmt_force);
                FStar_TypeChecker_Env.qtbl_name_and_index =
                  (env.FStar_TypeChecker_Env.qtbl_name_and_index);
                FStar_TypeChecker_Env.normalized_eff_names =
                  (env.FStar_TypeChecker_Env.normalized_eff_names);
                FStar_TypeChecker_Env.fv_delta_depths =
                  (env.FStar_TypeChecker_Env.fv_delta_depths);
                FStar_TypeChecker_Env.proof_ns =
                  (env.FStar_TypeChecker_Env.proof_ns);
                FStar_TypeChecker_Env.synth_hook =
                  (env.FStar_TypeChecker_Env.synth_hook);
                FStar_TypeChecker_Env.try_solve_implicits_hook =
                  (env.FStar_TypeChecker_Env.try_solve_implicits_hook);
                FStar_TypeChecker_Env.splice =
                  (env.FStar_TypeChecker_Env.splice);
                FStar_TypeChecker_Env.mpreprocess =
                  (env.FStar_TypeChecker_Env.mpreprocess);
                FStar_TypeChecker_Env.postprocess =
                  (env.FStar_TypeChecker_Env.postprocess);
                FStar_TypeChecker_Env.identifier_info =
                  (env.FStar_TypeChecker_Env.identifier_info);
                FStar_TypeChecker_Env.tc_hooks =
                  (env.FStar_TypeChecker_Env.tc_hooks);
                FStar_TypeChecker_Env.dsenv =
                  (env.FStar_TypeChecker_Env.dsenv);
                FStar_TypeChecker_Env.nbe = (env.FStar_TypeChecker_Env.nbe);
                FStar_TypeChecker_Env.strict_args_tab =
                  (env.FStar_TypeChecker_Env.strict_args_tab);
                FStar_TypeChecker_Env.erasable_types_tab =
                  (env.FStar_TypeChecker_Env.erasable_types_tab);
                FStar_TypeChecker_Env.enable_defer_to_tac =
                  (env.FStar_TypeChecker_Env.enable_defer_to_tac);
                FStar_TypeChecker_Env.unif_allow_ref_guards =
                  (env.FStar_TypeChecker_Env.unif_allow_ref_guards);
                FStar_TypeChecker_Env.erase_erasable_args =
                  (env.FStar_TypeChecker_Env.erase_erasable_args);
                FStar_TypeChecker_Env.core_check =
                  (env.FStar_TypeChecker_Env.core_check);
                FStar_TypeChecker_Env.missing_decl =
                  (env.FStar_TypeChecker_Env.missing_decl)
              } in
            let decreases_clause bs c =
              (let uu___1 = FStar_Compiler_Debug.low () in
               if uu___1
               then
                 let uu___2 = FStar_Syntax_Print.binders_to_string ", " bs in
                 let uu___3 =
                   FStar_Class_Show.show FStar_Syntax_Print.showable_comp c in
                 FStar_Compiler_Util.print2
                   "Building a decreases clause over (%s) and %s\n" uu___2
                   uu___3
               else ());
              (let filter_types_and_functions bs1 =
                 let uu___1 =
                   FStar_Compiler_List.fold_left
                     (fun uu___2 ->
                        fun binder ->
                          match uu___2 with
                          | (out, env2) ->
                              let b = binder.FStar_Syntax_Syntax.binder_bv in
                              let t =
                                let uu___3 =
                                  FStar_Syntax_Util.unrefine
                                    b.FStar_Syntax_Syntax.sort in
                                FStar_TypeChecker_Normalize.unfold_whnf env2
                                  uu___3 in
                              let env3 =
                                FStar_TypeChecker_Env.push_binders env2
                                  [binder] in
                              (match t.FStar_Syntax_Syntax.n with
                               | FStar_Syntax_Syntax.Tm_type uu___3 ->
                                   (out, env3)
                               | FStar_Syntax_Syntax.Tm_arrow uu___3 ->
                                   (out, env3)
                               | uu___3 ->
                                   let arg = FStar_Syntax_Syntax.bv_to_name b in
                                   let arg1 =
                                     let uu___4 =
                                       FStar_Syntax_Util.is_erased_head t in
                                     match uu___4 with
                                     | FStar_Pervasives_Native.Some (u, ty)
                                         ->
                                         FStar_Syntax_Util.apply_reveal u ty
                                           arg
                                     | uu___5 -> arg in
                                   ((arg1 :: out), env3))) ([], env1) bs1 in
                 match uu___1 with
                 | (out_rev, env2) -> FStar_Compiler_List.rev out_rev in
               let cflags = FStar_Syntax_Util.comp_flags c in
               let uu___1 =
                 FStar_Compiler_List.tryFind
                   (fun uu___2 ->
                      match uu___2 with
                      | FStar_Syntax_Syntax.DECREASES uu___3 -> true
                      | uu___3 -> false) cflags in
               match uu___1 with
               | FStar_Pervasives_Native.Some (FStar_Syntax_Syntax.DECREASES
                   d) -> d
               | uu___2 ->
                   let uu___3 = filter_types_and_functions bs in
                   FStar_Syntax_Syntax.Decreases_lex uu___3) in
            let precedes_t =
              FStar_TypeChecker_Util.fvar_env env1
                FStar_Parser_Const.precedes_lid in
            let rec mk_precedes_lex env2 l l_prev =
              let rec aux l1 l_prev1 =
                let type_of should_warn e1 e2 =
                  let t1 =
                    let uu___ =
                      let uu___1 =
                        env2.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                          env2 e1 false in
                      FStar_Pervasives_Native.fst uu___1 in
                    FStar_Syntax_Util.unrefine uu___ in
                  let t2 =
                    let uu___ =
                      let uu___1 =
                        env2.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                          env2 e2 false in
                      FStar_Pervasives_Native.fst uu___1 in
                    FStar_Syntax_Util.unrefine uu___ in
                  let rec warn t11 t21 =
                    let uu___ =
                      let uu___1 =
                        FStar_TypeChecker_TermEqAndSimplify.eq_tm env2 t11
                          t21 in
                      uu___1 = FStar_TypeChecker_TermEqAndSimplify.Equal in
                    if uu___
                    then false
                    else
                      (let uu___2 =
                         let uu___3 =
                           let uu___4 = FStar_Syntax_Subst.compress t11 in
                           uu___4.FStar_Syntax_Syntax.n in
                         let uu___4 =
                           let uu___5 = FStar_Syntax_Subst.compress t21 in
                           uu___5.FStar_Syntax_Syntax.n in
                         (uu___3, uu___4) in
                       match uu___2 with
                       | (FStar_Syntax_Syntax.Tm_uinst (t12, uu___3),
                          FStar_Syntax_Syntax.Tm_uinst (t22, uu___4)) ->
                           warn t12 t22
                       | (FStar_Syntax_Syntax.Tm_name uu___3,
                          FStar_Syntax_Syntax.Tm_name uu___4) -> false
                       | (FStar_Syntax_Syntax.Tm_app
                          { FStar_Syntax_Syntax.hd = h1;
                            FStar_Syntax_Syntax.args = args1;_},
                          FStar_Syntax_Syntax.Tm_app
                          { FStar_Syntax_Syntax.hd = h2;
                            FStar_Syntax_Syntax.args = args2;_})
                           ->
                           ((warn h1 h2) ||
                              ((FStar_Compiler_List.length args1) <>
                                 (FStar_Compiler_List.length args2)))
                             ||
                             (let uu___3 =
                                FStar_Compiler_List.zip args1 args2 in
                              FStar_Compiler_List.existsML
                                (fun uu___4 ->
                                   match uu___4 with
                                   | ((a1, uu___5), (a2, uu___6)) ->
                                       warn a1 a2) uu___3)
                       | (FStar_Syntax_Syntax.Tm_refine
                          { FStar_Syntax_Syntax.b = t12;
                            FStar_Syntax_Syntax.phi = phi1;_},
                          FStar_Syntax_Syntax.Tm_refine
                          { FStar_Syntax_Syntax.b = t22;
                            FStar_Syntax_Syntax.phi = phi2;_})
                           ->
                           (warn t12.FStar_Syntax_Syntax.sort
                              t22.FStar_Syntax_Syntax.sort)
                             || (warn phi1 phi2)
                       | (FStar_Syntax_Syntax.Tm_uvar uu___3, uu___4) ->
                           false
                       | (uu___3, FStar_Syntax_Syntax.Tm_uvar uu___4) ->
                           false
                       | (uu___3, uu___4) -> true) in
                  (let uu___1 =
                     ((Prims.op_Negation env2.FStar_TypeChecker_Env.phase1)
                        && should_warn)
                       && (warn t1 t2) in
                   if uu___1
                   then
                     let uu___2 =
                       let uu___3 =
                         let uu___4 = FStar_Syntax_Subst.compress t1 in
                         uu___4.FStar_Syntax_Syntax.n in
                       let uu___4 =
                         let uu___5 = FStar_Syntax_Subst.compress t2 in
                         uu___5.FStar_Syntax_Syntax.n in
                       (uu___3, uu___4) in
                     match uu___2 with
                     | (FStar_Syntax_Syntax.Tm_name uu___3,
                        FStar_Syntax_Syntax.Tm_name uu___4) -> ()
                     | (uu___3, uu___4) ->
                         let uu___5 =
                           let uu___6 =
                             let uu___7 =
                               let uu___8 =
                                 let uu___9 =
                                   FStar_Errors_Msg.text
                                     "In the decreases clause for this function, the SMT solver may not be able to prove that the types of" in
                                 let uu___10 =
                                   let uu___11 =
                                     let uu___12 =
                                       FStar_Class_PP.pp
                                         FStar_Syntax_Print.pretty_term e1 in
                                     let uu___13 =
                                       let uu___14 =
                                         let uu___15 =
                                           FStar_Errors_Msg.text "bound in" in
                                         let uu___16 =
                                           FStar_Class_PP.pp
                                             FStar_Compiler_Range_Ops.pretty_range
                                             e1.FStar_Syntax_Syntax.pos in
                                         FStar_Pprint.op_Hat_Slash_Hat
                                           uu___15 uu___16 in
                                       FStar_Pprint.parens uu___14 in
                                     FStar_Pprint.op_Hat_Slash_Hat uu___12
                                       uu___13 in
                                   FStar_Pprint.group uu___11 in
                                 FStar_Pprint.prefix (Prims.of_int (2))
                                   Prims.int_one uu___9 uu___10 in
                               let uu___9 =
                                 let uu___10 =
                                   let uu___11 = FStar_Errors_Msg.text "and" in
                                   let uu___12 =
                                     let uu___13 =
                                       let uu___14 =
                                         FStar_Class_PP.pp
                                           FStar_Syntax_Print.pretty_term e2 in
                                       let uu___15 =
                                         let uu___16 =
                                           let uu___17 =
                                             FStar_Errors_Msg.text "bound in" in
                                           let uu___18 =
                                             FStar_Class_PP.pp
                                               FStar_Compiler_Range_Ops.pretty_range
                                               e2.FStar_Syntax_Syntax.pos in
                                           FStar_Pprint.op_Hat_Slash_Hat
                                             uu___17 uu___18 in
                                         FStar_Pprint.parens uu___16 in
                                       FStar_Pprint.op_Hat_Slash_Hat uu___14
                                         uu___15 in
                                     FStar_Pprint.group uu___13 in
                                   FStar_Pprint.prefix (Prims.of_int (2))
                                     Prims.int_one uu___11 uu___12 in
                                 let uu___11 =
                                   FStar_Errors_Msg.text "are equal." in
                                 FStar_Pprint.op_Hat_Slash_Hat uu___10
                                   uu___11 in
                               FStar_Pprint.op_Hat_Slash_Hat uu___8 uu___9 in
                             let uu___8 =
                               let uu___9 =
                                 let uu___10 =
                                   FStar_Errors_Msg.text
                                     "The type of the first term is:" in
                                 let uu___11 =
                                   FStar_Class_PP.pp
                                     FStar_Syntax_Print.pretty_term t1 in
                                 FStar_Pprint.prefix (Prims.of_int (2))
                                   Prims.int_one uu___10 uu___11 in
                               let uu___10 =
                                 let uu___11 =
                                   let uu___12 =
                                     FStar_Errors_Msg.text
                                       "The type of the second term is:" in
                                   let uu___13 =
                                     FStar_Class_PP.pp
                                       FStar_Syntax_Print.pretty_term t2 in
                                   FStar_Pprint.prefix (Prims.of_int (2))
                                     Prims.int_one uu___12 uu___13 in
                                 let uu___12 =
                                   let uu___13 =
                                     FStar_Errors_Msg.text
                                       "If the proof fails, try annotating these with the same type." in
                                   [uu___13] in
                                 uu___11 :: uu___12 in
                               uu___9 :: uu___10 in
                             uu___7 :: uu___8 in
                           (FStar_Errors_Codes.Warning_Defensive, uu___6) in
                         FStar_Errors.log_issue_doc
                           e1.FStar_Syntax_Syntax.pos uu___5
                   else ());
                  (t1, t2) in
                match (l1, l_prev1) with
                | ([], []) ->
                    let uu___ =
                      let uu___1 =
                        FStar_Syntax_Syntax.as_arg
                          FStar_Syntax_Syntax.unit_const in
                      let uu___2 =
                        let uu___3 =
                          FStar_Syntax_Syntax.as_arg
                            FStar_Syntax_Syntax.unit_const in
                        [uu___3] in
                      uu___1 :: uu___2 in
                    FStar_Syntax_Syntax.mk_Tm_app precedes_t uu___ r
                | (x::[], x_prev::[]) ->
                    let uu___ = type_of false x x_prev in
                    (match uu___ with
                     | (t_x, t_x_prev) ->
                         let uu___1 =
                           let uu___2 = FStar_Syntax_Syntax.iarg t_x in
                           let uu___3 =
                             let uu___4 = FStar_Syntax_Syntax.iarg t_x_prev in
                             let uu___5 =
                               let uu___6 = FStar_Syntax_Syntax.as_arg x in
                               let uu___7 =
                                 let uu___8 =
                                   FStar_Syntax_Syntax.as_arg x_prev in
                                 [uu___8] in
                               uu___6 :: uu___7 in
                             uu___4 :: uu___5 in
                           uu___2 :: uu___3 in
                         FStar_Syntax_Syntax.mk_Tm_app precedes_t uu___1 r)
                | (x::tl, x_prev::tl_prev) ->
                    let uu___ = type_of true x x_prev in
                    (match uu___ with
                     | (t_x, t_x_prev) ->
                         let tm_precedes =
                           let uu___1 =
                             let uu___2 = FStar_Syntax_Syntax.iarg t_x in
                             let uu___3 =
                               let uu___4 = FStar_Syntax_Syntax.iarg t_x_prev in
                               let uu___5 =
                                 let uu___6 = FStar_Syntax_Syntax.as_arg x in
                                 let uu___7 =
                                   let uu___8 =
                                     FStar_Syntax_Syntax.as_arg x_prev in
                                   [uu___8] in
                                 uu___6 :: uu___7 in
                               uu___4 :: uu___5 in
                             uu___2 :: uu___3 in
                           FStar_Syntax_Syntax.mk_Tm_app precedes_t uu___1 r in
                         let eq3_x_x_prev =
                           FStar_Syntax_Util.mk_eq3_no_univ t_x t_x_prev x
                             x_prev in
                         let uu___1 =
                           let uu___2 = aux tl tl_prev in
                           FStar_Syntax_Util.mk_conj eq3_x_x_prev uu___2 in
                         FStar_Syntax_Util.mk_disj tm_precedes uu___1) in
              let uu___ =
                let uu___1 =
                  ((FStar_Compiler_List.length l),
                    (FStar_Compiler_List.length l_prev)) in
                match uu___1 with
                | (n, n_prev) ->
                    if n = n_prev
                    then (l, l_prev)
                    else
                      if n < n_prev
                      then
                        (let uu___3 =
                           let uu___4 = FStar_Compiler_List.splitAt n l_prev in
                           FStar_Pervasives_Native.fst uu___4 in
                         (l, uu___3))
                      else
                        (let uu___4 =
                           let uu___5 = FStar_Compiler_List.splitAt n_prev l in
                           FStar_Pervasives_Native.fst uu___5 in
                         (uu___4, l_prev)) in
              match uu___ with | (l1, l_prev1) -> aux l1 l_prev1 in
            let mk_precedes env2 d d_prev =
              match (d, d_prev) with
              | (FStar_Syntax_Syntax.Decreases_lex l,
                 FStar_Syntax_Syntax.Decreases_lex l_prev) ->
                  mk_precedes_lex env2 l l_prev
              | (FStar_Syntax_Syntax.Decreases_wf (rel, e),
                 FStar_Syntax_Syntax.Decreases_wf (rel_prev, e_prev)) ->
                  let rel_guard =
                    let uu___ =
                      let uu___1 = FStar_Syntax_Syntax.as_arg e in
                      let uu___2 =
                        let uu___3 = FStar_Syntax_Syntax.as_arg e_prev in
                        [uu___3] in
                      uu___1 :: uu___2 in
                    FStar_Syntax_Syntax.mk_Tm_app rel uu___ r in
                  let uu___ =
                    let uu___1 =
                      FStar_TypeChecker_TermEqAndSimplify.eq_tm env2 rel
                        rel_prev in
                    uu___1 = FStar_TypeChecker_TermEqAndSimplify.Equal in
                  if uu___
                  then rel_guard
                  else
                    (let uu___2 =
                       FStar_Errors.with_ctx
                         "Typechecking decreases well-founded relation"
                         (fun uu___3 ->
                            env2.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                              env2 rel false) in
                     match uu___2 with
                     | (t_rel, uu___3) ->
                         let uu___4 =
                           FStar_Errors.with_ctx
                             "Typechecking previous decreases well-founded relation"
                             (fun uu___5 ->
                                env2.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                                  env2 rel_prev false) in
                         (match uu___4 with
                          | (t_rel_prev, uu___5) ->
                              let eq_guard =
                                FStar_Syntax_Util.mk_eq3_no_univ t_rel
                                  t_rel_prev rel rel_prev in
                              FStar_Syntax_Util.mk_conj eq_guard rel_guard))
              | (uu___, uu___1) ->
                  FStar_Errors.raise_error
                    (FStar_Errors_Codes.Fatal_UnexpectedTerm,
                      "Cannot build termination VC with a well-founded relation and lex ordering")
                    r in
            let previous_dec = decreases_clause actuals expected_c in
            let guard_one_letrec uu___ =
              match uu___ with
              | (l, arity, t, u_names) ->
                  let uu___1 =
                    FStar_TypeChecker_Normalize.get_n_binders env1 arity t in
                  (match uu___1 with
                   | (formals, c) ->
                       (if arity > (FStar_Compiler_List.length formals)
                        then
                          FStar_Compiler_Effect.failwith
                            "impossible: bad formals arity, guard_one_letrec"
                        else ();
                        (let formals1 =
                           FStar_Compiler_List.map
                             (fun b ->
                                let uu___3 =
                                  FStar_Syntax_Syntax.is_null_bv
                                    b.FStar_Syntax_Syntax.binder_bv in
                                if uu___3
                                then
                                  let uu___4 =
                                    let uu___5 =
                                      let uu___6 =
                                        FStar_Syntax_Syntax.range_of_bv
                                          b.FStar_Syntax_Syntax.binder_bv in
                                      FStar_Pervasives_Native.Some uu___6 in
                                    FStar_Syntax_Syntax.new_bv uu___5
                                      (b.FStar_Syntax_Syntax.binder_bv).FStar_Syntax_Syntax.sort in
                                  {
                                    FStar_Syntax_Syntax.binder_bv = uu___4;
                                    FStar_Syntax_Syntax.binder_qual =
                                      (b.FStar_Syntax_Syntax.binder_qual);
                                    FStar_Syntax_Syntax.binder_positivity =
                                      (b.FStar_Syntax_Syntax.binder_positivity);
                                    FStar_Syntax_Syntax.binder_attrs =
                                      (b.FStar_Syntax_Syntax.binder_attrs)
                                  }
                                else b) formals in
                         let dec = decreases_clause formals1 c in
                         let precedes =
                           let env2 =
                             FStar_TypeChecker_Env.push_binders env1 formals1 in
                           mk_precedes env2 dec previous_dec in
                         let precedes1 =
                           let uu___3 =
                             FStar_Errors_Msg.mkmsg
                               "Could not prove termination of this recursive call" in
                           FStar_TypeChecker_Util.label uu___3 r precedes in
                         let uu___3 = FStar_Compiler_Util.prefix formals1 in
                         match uu___3 with
                         | (bs,
                            { FStar_Syntax_Syntax.binder_bv = last;
                              FStar_Syntax_Syntax.binder_qual = imp;
                              FStar_Syntax_Syntax.binder_positivity = pqual;
                              FStar_Syntax_Syntax.binder_attrs = attrs;_})
                             ->
                             let last1 =
                               let uu___4 =
                                 FStar_Syntax_Util.refine last precedes1 in
                               {
                                 FStar_Syntax_Syntax.ppname =
                                   (last.FStar_Syntax_Syntax.ppname);
                                 FStar_Syntax_Syntax.index =
                                   (last.FStar_Syntax_Syntax.index);
                                 FStar_Syntax_Syntax.sort = uu___4
                               } in
                             let refined_formals =
                               let uu___4 =
                                 let uu___5 =
                                   FStar_Syntax_Syntax.mk_binder_with_attrs
                                     last1 imp pqual attrs in
                                 [uu___5] in
                               FStar_Compiler_List.op_At bs uu___4 in
                             let t' =
                               FStar_Syntax_Util.arrow refined_formals c in
                             ((let uu___5 = FStar_Compiler_Debug.medium () in
                               if uu___5
                               then
                                 let uu___6 =
                                   FStar_Class_Show.show
                                     (FStar_Class_Show.show_either
                                        FStar_Syntax_Print.showable_bv
                                        FStar_Syntax_Print.showable_fv) l in
                                 let uu___7 =
                                   FStar_Class_Show.show
                                     FStar_Syntax_Print.showable_term t in
                                 let uu___8 =
                                   FStar_Class_Show.show
                                     FStar_Syntax_Print.showable_term t' in
                                 FStar_Compiler_Util.print3
                                   "Refined let rec %s\n\tfrom type %s\n\tto type %s\n"
                                   uu___6 uu___7 uu___8
                               else ());
                              (l, t', u_names))))) in
            FStar_Compiler_List.map guard_one_letrec letrecs
let (wrap_guard_with_tactic_opt :
  FStar_Syntax_Syntax.term FStar_Pervasives_Native.option ->
    FStar_TypeChecker_Env.guard_t -> FStar_TypeChecker_Env.guard_t)
  =
  fun topt ->
    fun g ->
      match topt with
      | FStar_Pervasives_Native.None -> g
      | FStar_Pervasives_Native.Some tactic ->
          FStar_TypeChecker_Env.always_map_guard g
            (fun g1 ->
               let uu___ =
                 FStar_Syntax_Util.mk_squash FStar_Syntax_Syntax.U_zero g1 in
               FStar_TypeChecker_Common.mk_by_tactic tactic uu___)
let (is_comp_ascribed_reflect :
  FStar_Syntax_Syntax.term ->
    (FStar_Ident.lident * FStar_Syntax_Syntax.term *
      FStar_Syntax_Syntax.aqual) FStar_Pervasives_Native.option)
  =
  fun e ->
    let uu___ =
      let uu___1 = FStar_Syntax_Subst.compress e in
      uu___1.FStar_Syntax_Syntax.n in
    match uu___ with
    | FStar_Syntax_Syntax.Tm_ascribed
        { FStar_Syntax_Syntax.tm = e1;
          FStar_Syntax_Syntax.asc =
            (FStar_Pervasives.Inr uu___1, uu___2, uu___3);
          FStar_Syntax_Syntax.eff_opt = uu___4;_}
        ->
        let uu___5 =
          let uu___6 = FStar_Syntax_Subst.compress e1 in
          uu___6.FStar_Syntax_Syntax.n in
        (match uu___5 with
         | FStar_Syntax_Syntax.Tm_app
             { FStar_Syntax_Syntax.hd = head;
               FStar_Syntax_Syntax.args = args;_}
             when (FStar_Compiler_List.length args) = Prims.int_one ->
             let uu___6 =
               let uu___7 = FStar_Syntax_Subst.compress head in
               uu___7.FStar_Syntax_Syntax.n in
             (match uu___6 with
              | FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_reflect l)
                  ->
                  let uu___7 =
                    let uu___8 = FStar_Compiler_List.hd args in
                    match uu___8 with | (e2, aqual) -> (l, e2, aqual) in
                  FStar_Pervasives_Native.Some uu___7
              | uu___7 -> FStar_Pervasives_Native.None)
         | uu___6 -> FStar_Pervasives_Native.None)
    | uu___1 -> FStar_Pervasives_Native.None
let rec (tc_term :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
        FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      FStar_Defensive.def_check_scoped FStar_TypeChecker_Env.hasBinders_env
        FStar_Class_Binders.hasNames_term FStar_Syntax_Print.pretty_term
        e.FStar_Syntax_Syntax.pos "tc_term.entry" env e;
      (let uu___2 = FStar_Compiler_Debug.medium () in
       if uu___2
       then
         let uu___3 =
           let uu___4 = FStar_TypeChecker_Env.get_range env in
           FStar_Compiler_Range_Ops.string_of_range uu___4 in
         let uu___4 =
           FStar_Compiler_Util.string_of_bool
             env.FStar_TypeChecker_Env.phase1 in
         let uu___5 =
           FStar_Class_Show.show FStar_Syntax_Print.showable_term e in
         let uu___6 =
           let uu___7 = FStar_Syntax_Subst.compress e in
           FStar_Syntax_Print.tag_of_term uu___7 in
         let uu___7 = print_expected_ty_str env in
         FStar_Compiler_Util.print5
           "(%s) Starting tc_term (phase1=%s) of %s (%s), %s {\n" uu___3
           uu___4 uu___5 uu___6 uu___7
       else ());
      (let uu___2 =
         FStar_Compiler_Util.record_time
           (fun uu___3 ->
              tc_maybe_toplevel_term
                {
                  FStar_TypeChecker_Env.solver =
                    (env.FStar_TypeChecker_Env.solver);
                  FStar_TypeChecker_Env.range =
                    (env.FStar_TypeChecker_Env.range);
                  FStar_TypeChecker_Env.curmodule =
                    (env.FStar_TypeChecker_Env.curmodule);
                  FStar_TypeChecker_Env.gamma =
                    (env.FStar_TypeChecker_Env.gamma);
                  FStar_TypeChecker_Env.gamma_sig =
                    (env.FStar_TypeChecker_Env.gamma_sig);
                  FStar_TypeChecker_Env.gamma_cache =
                    (env.FStar_TypeChecker_Env.gamma_cache);
                  FStar_TypeChecker_Env.modules =
                    (env.FStar_TypeChecker_Env.modules);
                  FStar_TypeChecker_Env.expected_typ =
                    (env.FStar_TypeChecker_Env.expected_typ);
                  FStar_TypeChecker_Env.sigtab =
                    (env.FStar_TypeChecker_Env.sigtab);
                  FStar_TypeChecker_Env.attrtab =
                    (env.FStar_TypeChecker_Env.attrtab);
                  FStar_TypeChecker_Env.instantiate_imp =
                    (env.FStar_TypeChecker_Env.instantiate_imp);
                  FStar_TypeChecker_Env.effects =
                    (env.FStar_TypeChecker_Env.effects);
                  FStar_TypeChecker_Env.generalize =
                    (env.FStar_TypeChecker_Env.generalize);
                  FStar_TypeChecker_Env.letrecs =
                    (env.FStar_TypeChecker_Env.letrecs);
                  FStar_TypeChecker_Env.top_level = false;
                  FStar_TypeChecker_Env.check_uvars =
                    (env.FStar_TypeChecker_Env.check_uvars);
                  FStar_TypeChecker_Env.use_eq_strict =
                    (env.FStar_TypeChecker_Env.use_eq_strict);
                  FStar_TypeChecker_Env.is_iface =
                    (env.FStar_TypeChecker_Env.is_iface);
                  FStar_TypeChecker_Env.admit =
                    (env.FStar_TypeChecker_Env.admit);
                  FStar_TypeChecker_Env.lax_universes =
                    (env.FStar_TypeChecker_Env.lax_universes);
                  FStar_TypeChecker_Env.phase1 =
                    (env.FStar_TypeChecker_Env.phase1);
                  FStar_TypeChecker_Env.failhard =
                    (env.FStar_TypeChecker_Env.failhard);
                  FStar_TypeChecker_Env.flychecking =
                    (env.FStar_TypeChecker_Env.flychecking);
                  FStar_TypeChecker_Env.uvar_subtyping =
                    (env.FStar_TypeChecker_Env.uvar_subtyping);
                  FStar_TypeChecker_Env.intactics =
                    (env.FStar_TypeChecker_Env.intactics);
                  FStar_TypeChecker_Env.nocoerce =
                    (env.FStar_TypeChecker_Env.nocoerce);
                  FStar_TypeChecker_Env.tc_term =
                    (env.FStar_TypeChecker_Env.tc_term);
                  FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                    (env.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                  FStar_TypeChecker_Env.universe_of =
                    (env.FStar_TypeChecker_Env.universe_of);
                  FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term =
                    (env.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                  FStar_TypeChecker_Env.teq_nosmt_force =
                    (env.FStar_TypeChecker_Env.teq_nosmt_force);
                  FStar_TypeChecker_Env.subtype_nosmt_force =
                    (env.FStar_TypeChecker_Env.subtype_nosmt_force);
                  FStar_TypeChecker_Env.qtbl_name_and_index =
                    (env.FStar_TypeChecker_Env.qtbl_name_and_index);
                  FStar_TypeChecker_Env.normalized_eff_names =
                    (env.FStar_TypeChecker_Env.normalized_eff_names);
                  FStar_TypeChecker_Env.fv_delta_depths =
                    (env.FStar_TypeChecker_Env.fv_delta_depths);
                  FStar_TypeChecker_Env.proof_ns =
                    (env.FStar_TypeChecker_Env.proof_ns);
                  FStar_TypeChecker_Env.synth_hook =
                    (env.FStar_TypeChecker_Env.synth_hook);
                  FStar_TypeChecker_Env.try_solve_implicits_hook =
                    (env.FStar_TypeChecker_Env.try_solve_implicits_hook);
                  FStar_TypeChecker_Env.splice =
                    (env.FStar_TypeChecker_Env.splice);
                  FStar_TypeChecker_Env.mpreprocess =
                    (env.FStar_TypeChecker_Env.mpreprocess);
                  FStar_TypeChecker_Env.postprocess =
                    (env.FStar_TypeChecker_Env.postprocess);
                  FStar_TypeChecker_Env.identifier_info =
                    (env.FStar_TypeChecker_Env.identifier_info);
                  FStar_TypeChecker_Env.tc_hooks =
                    (env.FStar_TypeChecker_Env.tc_hooks);
                  FStar_TypeChecker_Env.dsenv =
                    (env.FStar_TypeChecker_Env.dsenv);
                  FStar_TypeChecker_Env.nbe = (env.FStar_TypeChecker_Env.nbe);
                  FStar_TypeChecker_Env.strict_args_tab =
                    (env.FStar_TypeChecker_Env.strict_args_tab);
                  FStar_TypeChecker_Env.erasable_types_tab =
                    (env.FStar_TypeChecker_Env.erasable_types_tab);
                  FStar_TypeChecker_Env.enable_defer_to_tac =
                    (env.FStar_TypeChecker_Env.enable_defer_to_tac);
                  FStar_TypeChecker_Env.unif_allow_ref_guards =
                    (env.FStar_TypeChecker_Env.unif_allow_ref_guards);
                  FStar_TypeChecker_Env.erase_erasable_args =
                    (env.FStar_TypeChecker_Env.erase_erasable_args);
                  FStar_TypeChecker_Env.core_check =
                    (env.FStar_TypeChecker_Env.core_check);
                  FStar_TypeChecker_Env.missing_decl =
                    (env.FStar_TypeChecker_Env.missing_decl)
                } e) in
       match uu___2 with
       | (r, ms) ->
           ((let uu___4 = FStar_Compiler_Debug.medium () in
             if uu___4
             then
               ((let uu___6 =
                   let uu___7 = FStar_TypeChecker_Env.get_range env in
                   FStar_Compiler_Range_Ops.string_of_range uu___7 in
                 let uu___7 =
                   FStar_Class_Show.show FStar_Syntax_Print.showable_term e in
                 let uu___8 =
                   let uu___9 = FStar_Syntax_Subst.compress e in
                   FStar_Syntax_Print.tag_of_term uu___9 in
                 let uu___9 = FStar_Compiler_Util.string_of_int ms in
                 FStar_Compiler_Util.print4
                   "(%s) } tc_term of %s (%s) took %sms\n" uu___6 uu___7
                   uu___8 uu___9);
                (let uu___6 = r in
                 match uu___6 with
                 | (e1, lc, uu___7) ->
                     let uu___8 =
                       let uu___9 = FStar_TypeChecker_Env.get_range env in
                       FStar_Compiler_Range_Ops.string_of_range uu___9 in
                     let uu___9 =
                       FStar_Class_Show.show FStar_Syntax_Print.showable_term
                         e1 in
                     let uu___10 =
                       FStar_TypeChecker_Common.lcomp_to_string lc in
                     let uu___11 =
                       let uu___12 = FStar_Syntax_Subst.compress e1 in
                       FStar_Syntax_Print.tag_of_term uu___12 in
                     FStar_Compiler_Util.print4
                       "(%s) Result is: (%s:%s) (%s)\n" uu___8 uu___9 uu___10
                       uu___11))
             else ());
            r))
and (tc_maybe_toplevel_term :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
        FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      let env1 =
        if e.FStar_Syntax_Syntax.pos = FStar_Compiler_Range_Type.dummyRange
        then env
        else FStar_TypeChecker_Env.set_range env e.FStar_Syntax_Syntax.pos in
      FStar_Defensive.def_check_scoped FStar_TypeChecker_Env.hasBinders_env
        FStar_Class_Binders.hasNames_term FStar_Syntax_Print.pretty_term
        e.FStar_Syntax_Syntax.pos "tc_maybe_toplevel_term.entry" env1 e;
      (let top = FStar_Syntax_Subst.compress e in
       (let uu___2 = FStar_Compiler_Debug.medium () in
        if uu___2
        then
          let uu___3 =
            let uu___4 = FStar_TypeChecker_Env.get_range env1 in
            FStar_Class_Show.show FStar_Compiler_Range_Ops.showable_range
              uu___4 in
          let uu___4 = FStar_Syntax_Print.tag_of_term top in
          let uu___5 =
            FStar_Class_Show.show FStar_Syntax_Print.showable_term top in
          FStar_Compiler_Util.print3 "Typechecking %s (%s): %s\n" uu___3
            uu___4 uu___5
        else ());
       (match top.FStar_Syntax_Syntax.n with
        | FStar_Syntax_Syntax.Tm_delayed uu___2 ->
            FStar_Compiler_Effect.failwith "Impossible"
        | FStar_Syntax_Syntax.Tm_bvar uu___2 ->
            FStar_Compiler_Effect.failwith
              "Impossible: tc_maybe_toplevel_term: not LN"
        | FStar_Syntax_Syntax.Tm_uinst uu___2 -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_uvar uu___2 -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_name uu___2 -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_fvar uu___2 -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_constant uu___2 -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_abs uu___2 -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_arrow uu___2 -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_refine uu___2 -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_type uu___2 -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_unknown -> tc_value env1 e
        | FStar_Syntax_Syntax.Tm_quoted (qt, qi) ->
            let projl uu___2 =
              match uu___2 with
              | FStar_Pervasives.Inl x -> x
              | FStar_Pervasives.Inr uu___3 ->
                  FStar_Compiler_Effect.failwith "projl fail" in
            let non_trivial_antiquotations qi1 =
              let is_not_name t =
                let uu___2 =
                  let uu___3 = FStar_Syntax_Subst.compress t in
                  uu___3.FStar_Syntax_Syntax.n in
                match uu___2 with
                | FStar_Syntax_Syntax.Tm_name uu___3 -> false
                | uu___3 -> true in
              FStar_Compiler_Util.for_some is_not_name
                (FStar_Pervasives_Native.snd
                   qi1.FStar_Syntax_Syntax.antiquotations) in
            (match qi.FStar_Syntax_Syntax.qkind with
             | FStar_Syntax_Syntax.Quote_static when
                 non_trivial_antiquotations qi ->
                 let e0 = e in
                 let newbvs =
                   FStar_Compiler_List.map
                     (fun uu___2 ->
                        FStar_Syntax_Syntax.new_bv
                          FStar_Pervasives_Native.None
                          FStar_Syntax_Syntax.t_term)
                     (FStar_Pervasives_Native.snd
                        qi.FStar_Syntax_Syntax.antiquotations) in
                 let z =
                   FStar_Compiler_List.zip
                     (FStar_Pervasives_Native.snd
                        qi.FStar_Syntax_Syntax.antiquotations) newbvs in
                 let lbs =
                   FStar_Compiler_List.map
                     (fun uu___2 ->
                        match uu___2 with
                        | (t, bv') ->
                            FStar_Syntax_Util.close_univs_and_mk_letbinding
                              FStar_Pervasives_Native.None
                              (FStar_Pervasives.Inl bv') []
                              FStar_Syntax_Syntax.t_term
                              FStar_Parser_Const.effect_Tot_lid t []
                              t.FStar_Syntax_Syntax.pos) z in
                 let qi1 =
                   let uu___2 =
                     let uu___3 =
                       FStar_Compiler_List.map
                         (fun uu___4 ->
                            match uu___4 with
                            | (t, bv') -> FStar_Syntax_Syntax.bv_to_name bv')
                         z in
                     (Prims.int_zero, uu___3) in
                   {
                     FStar_Syntax_Syntax.qkind =
                       (qi.FStar_Syntax_Syntax.qkind);
                     FStar_Syntax_Syntax.antiquotations = uu___2
                   } in
                 let nq =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_quoted (qt, qi1))
                     top.FStar_Syntax_Syntax.pos in
                 let e1 =
                   FStar_Compiler_List.fold_left
                     (fun t ->
                        fun lb ->
                          let uu___2 =
                            let uu___3 =
                              let uu___4 =
                                let uu___5 =
                                  let uu___6 =
                                    let uu___7 =
                                      projl lb.FStar_Syntax_Syntax.lbname in
                                    FStar_Syntax_Syntax.mk_binder uu___7 in
                                  [uu___6] in
                                FStar_Syntax_Subst.close uu___5 t in
                              {
                                FStar_Syntax_Syntax.lbs = (false, [lb]);
                                FStar_Syntax_Syntax.body1 = uu___4
                              } in
                            FStar_Syntax_Syntax.Tm_let uu___3 in
                          FStar_Syntax_Syntax.mk uu___2
                            top.FStar_Syntax_Syntax.pos) nq lbs in
                 tc_maybe_toplevel_term env1 e1
             | FStar_Syntax_Syntax.Quote_static ->
                 let aqs =
                   FStar_Pervasives_Native.snd
                     qi.FStar_Syntax_Syntax.antiquotations in
                 let env_tm =
                   FStar_TypeChecker_Env.set_expected_typ env1
                     FStar_Syntax_Syntax.t_term in
                 let uu___2 =
                   FStar_Compiler_List.fold_left
                     (fun uu___3 ->
                        fun aq_tm ->
                          match uu___3 with
                          | (aqs_rev, guard, env_tm1) ->
                              let uu___4 = tc_term env_tm1 aq_tm in
                              (match uu___4 with
                               | (aq_tm1, uu___5, g) ->
                                   let env_tm2 =
                                     let uu___6 =
                                       FStar_Syntax_Syntax.new_bv
                                         FStar_Pervasives_Native.None
                                         FStar_Syntax_Syntax.t_term in
                                     FStar_TypeChecker_Env.push_bv env_tm1
                                       uu___6 in
                                   let uu___6 =
                                     FStar_Class_Monoid.op_Plus_Plus
                                       FStar_TypeChecker_Common.monoid_guard_t
                                       g guard in
                                   ((aq_tm1 :: aqs_rev), uu___6, env_tm2)))
                     ([],
                       (FStar_Class_Monoid.mzero
                          FStar_TypeChecker_Common.monoid_guard_t), env_tm)
                     aqs in
                 (match uu___2 with
                  | (aqs_rev, guard, _env) ->
                      let qi1 =
                        {
                          FStar_Syntax_Syntax.qkind =
                            (qi.FStar_Syntax_Syntax.qkind);
                          FStar_Syntax_Syntax.antiquotations =
                            (Prims.int_zero,
                              (FStar_Compiler_List.rev aqs_rev))
                        } in
                      let tm =
                        FStar_Syntax_Syntax.mk
                          (FStar_Syntax_Syntax.Tm_quoted (qt, qi1))
                          top.FStar_Syntax_Syntax.pos in
                      value_check_expected_typ env1 tm
                        (FStar_Pervasives.Inl FStar_Syntax_Syntax.t_term)
                        guard)
             | FStar_Syntax_Syntax.Quote_dynamic ->
                 let c =
                   FStar_Syntax_Syntax.mk_Tac FStar_Syntax_Syntax.t_term in
                 let uu___2 = FStar_TypeChecker_Env.clear_expected_typ env1 in
                 (match uu___2 with
                  | (env', uu___3) ->
                      let env'1 =
                        {
                          FStar_TypeChecker_Env.solver =
                            (env'.FStar_TypeChecker_Env.solver);
                          FStar_TypeChecker_Env.range =
                            (env'.FStar_TypeChecker_Env.range);
                          FStar_TypeChecker_Env.curmodule =
                            (env'.FStar_TypeChecker_Env.curmodule);
                          FStar_TypeChecker_Env.gamma =
                            (env'.FStar_TypeChecker_Env.gamma);
                          FStar_TypeChecker_Env.gamma_sig =
                            (env'.FStar_TypeChecker_Env.gamma_sig);
                          FStar_TypeChecker_Env.gamma_cache =
                            (env'.FStar_TypeChecker_Env.gamma_cache);
                          FStar_TypeChecker_Env.modules =
                            (env'.FStar_TypeChecker_Env.modules);
                          FStar_TypeChecker_Env.expected_typ =
                            (env'.FStar_TypeChecker_Env.expected_typ);
                          FStar_TypeChecker_Env.sigtab =
                            (env'.FStar_TypeChecker_Env.sigtab);
                          FStar_TypeChecker_Env.attrtab =
                            (env'.FStar_TypeChecker_Env.attrtab);
                          FStar_TypeChecker_Env.instantiate_imp =
                            (env'.FStar_TypeChecker_Env.instantiate_imp);
                          FStar_TypeChecker_Env.effects =
                            (env'.FStar_TypeChecker_Env.effects);
                          FStar_TypeChecker_Env.generalize =
                            (env'.FStar_TypeChecker_Env.generalize);
                          FStar_TypeChecker_Env.letrecs =
                            (env'.FStar_TypeChecker_Env.letrecs);
                          FStar_TypeChecker_Env.top_level =
                            (env'.FStar_TypeChecker_Env.top_level);
                          FStar_TypeChecker_Env.check_uvars =
                            (env'.FStar_TypeChecker_Env.check_uvars);
                          FStar_TypeChecker_Env.use_eq_strict =
                            (env'.FStar_TypeChecker_Env.use_eq_strict);
                          FStar_TypeChecker_Env.is_iface =
                            (env'.FStar_TypeChecker_Env.is_iface);
                          FStar_TypeChecker_Env.admit = true;
                          FStar_TypeChecker_Env.lax_universes =
                            (env'.FStar_TypeChecker_Env.lax_universes);
                          FStar_TypeChecker_Env.phase1 =
                            (env'.FStar_TypeChecker_Env.phase1);
                          FStar_TypeChecker_Env.failhard =
                            (env'.FStar_TypeChecker_Env.failhard);
                          FStar_TypeChecker_Env.flychecking =
                            (env'.FStar_TypeChecker_Env.flychecking);
                          FStar_TypeChecker_Env.uvar_subtyping =
                            (env'.FStar_TypeChecker_Env.uvar_subtyping);
                          FStar_TypeChecker_Env.intactics =
                            (env'.FStar_TypeChecker_Env.intactics);
                          FStar_TypeChecker_Env.nocoerce =
                            (env'.FStar_TypeChecker_Env.nocoerce);
                          FStar_TypeChecker_Env.tc_term =
                            (env'.FStar_TypeChecker_Env.tc_term);
                          FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                            (env'.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                          FStar_TypeChecker_Env.universe_of =
                            (env'.FStar_TypeChecker_Env.universe_of);
                          FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                            =
                            (env'.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                          FStar_TypeChecker_Env.teq_nosmt_force =
                            (env'.FStar_TypeChecker_Env.teq_nosmt_force);
                          FStar_TypeChecker_Env.subtype_nosmt_force =
                            (env'.FStar_TypeChecker_Env.subtype_nosmt_force);
                          FStar_TypeChecker_Env.qtbl_name_and_index =
                            (env'.FStar_TypeChecker_Env.qtbl_name_and_index);
                          FStar_TypeChecker_Env.normalized_eff_names =
                            (env'.FStar_TypeChecker_Env.normalized_eff_names);
                          FStar_TypeChecker_Env.fv_delta_depths =
                            (env'.FStar_TypeChecker_Env.fv_delta_depths);
                          FStar_TypeChecker_Env.proof_ns =
                            (env'.FStar_TypeChecker_Env.proof_ns);
                          FStar_TypeChecker_Env.synth_hook =
                            (env'.FStar_TypeChecker_Env.synth_hook);
                          FStar_TypeChecker_Env.try_solve_implicits_hook =
                            (env'.FStar_TypeChecker_Env.try_solve_implicits_hook);
                          FStar_TypeChecker_Env.splice =
                            (env'.FStar_TypeChecker_Env.splice);
                          FStar_TypeChecker_Env.mpreprocess =
                            (env'.FStar_TypeChecker_Env.mpreprocess);
                          FStar_TypeChecker_Env.postprocess =
                            (env'.FStar_TypeChecker_Env.postprocess);
                          FStar_TypeChecker_Env.identifier_info =
                            (env'.FStar_TypeChecker_Env.identifier_info);
                          FStar_TypeChecker_Env.tc_hooks =
                            (env'.FStar_TypeChecker_Env.tc_hooks);
                          FStar_TypeChecker_Env.dsenv =
                            (env'.FStar_TypeChecker_Env.dsenv);
                          FStar_TypeChecker_Env.nbe =
                            (env'.FStar_TypeChecker_Env.nbe);
                          FStar_TypeChecker_Env.strict_args_tab =
                            (env'.FStar_TypeChecker_Env.strict_args_tab);
                          FStar_TypeChecker_Env.erasable_types_tab =
                            (env'.FStar_TypeChecker_Env.erasable_types_tab);
                          FStar_TypeChecker_Env.enable_defer_to_tac =
                            (env'.FStar_TypeChecker_Env.enable_defer_to_tac);
                          FStar_TypeChecker_Env.unif_allow_ref_guards =
                            (env'.FStar_TypeChecker_Env.unif_allow_ref_guards);
                          FStar_TypeChecker_Env.erase_erasable_args =
                            (env'.FStar_TypeChecker_Env.erase_erasable_args);
                          FStar_TypeChecker_Env.core_check =
                            (env'.FStar_TypeChecker_Env.core_check);
                          FStar_TypeChecker_Env.missing_decl =
                            (env'.FStar_TypeChecker_Env.missing_decl)
                        } in
                      let uu___4 = tc_term env'1 qt in
                      (match uu___4 with
                       | (qt1, uu___5, g) ->
                           let g0 =
                             {
                               FStar_TypeChecker_Common.guard_f =
                                 FStar_TypeChecker_Common.Trivial;
                               FStar_TypeChecker_Common.deferred_to_tac =
                                 (g.FStar_TypeChecker_Common.deferred_to_tac);
                               FStar_TypeChecker_Common.deferred =
                                 (g.FStar_TypeChecker_Common.deferred);
                               FStar_TypeChecker_Common.univ_ineqs =
                                 (g.FStar_TypeChecker_Common.univ_ineqs);
                               FStar_TypeChecker_Common.implicits =
                                 (g.FStar_TypeChecker_Common.implicits)
                             } in
                           let g01 =
                             FStar_TypeChecker_Rel.resolve_implicits env'1 g0 in
                           let t =
                             FStar_Syntax_Syntax.mk
                               (FStar_Syntax_Syntax.Tm_quoted (qt1, qi))
                               top.FStar_Syntax_Syntax.pos in
                           let uu___6 =
                             let uu___7 =
                               let uu___8 =
                                 FStar_TypeChecker_Common.lcomp_of_comp c in
                               FStar_Pervasives.Inr uu___8 in
                             value_check_expected_typ env1 t uu___7
                               (FStar_Class_Monoid.mzero
                                  FStar_TypeChecker_Common.monoid_guard_t) in
                           (match uu___6 with
                            | (t1, lc, g1) ->
                                let t2 =
                                  FStar_Syntax_Syntax.mk
                                    (FStar_Syntax_Syntax.Tm_meta
                                       {
                                         FStar_Syntax_Syntax.tm2 = t1;
                                         FStar_Syntax_Syntax.meta =
                                           (FStar_Syntax_Syntax.Meta_monadic_lift
                                              (FStar_Parser_Const.effect_PURE_lid,
                                                FStar_Parser_Const.effect_TAC_lid,
                                                FStar_Syntax_Syntax.t_term))
                                       }) t1.FStar_Syntax_Syntax.pos in
                                let uu___7 =
                                  FStar_Class_Monoid.op_Plus_Plus
                                    FStar_TypeChecker_Common.monoid_guard_t
                                    g1 g01 in
                                (t2, lc, uu___7)))))
        | FStar_Syntax_Syntax.Tm_lazy
            { FStar_Syntax_Syntax.blob = uu___2;
              FStar_Syntax_Syntax.lkind = FStar_Syntax_Syntax.Lazy_embedding
                uu___3;
              FStar_Syntax_Syntax.ltyp = uu___4;
              FStar_Syntax_Syntax.rng = uu___5;_}
            ->
            let uu___6 = FStar_Syntax_Util.unlazy top in tc_term env1 uu___6
        | FStar_Syntax_Syntax.Tm_lazy i ->
            value_check_expected_typ env1 top
              (FStar_Pervasives.Inl (i.FStar_Syntax_Syntax.ltyp))
              (FStar_Class_Monoid.mzero
                 FStar_TypeChecker_Common.monoid_guard_t)
        | FStar_Syntax_Syntax.Tm_meta
            { FStar_Syntax_Syntax.tm2 = e1;
              FStar_Syntax_Syntax.meta = FStar_Syntax_Syntax.Meta_desugared
                (FStar_Syntax_Syntax.Meta_smt_pat);_}
            ->
            let uu___2 = tc_tot_or_gtot_term env1 e1 in
            (match uu___2 with
             | (e2, c, g) ->
                 let g1 =
                   {
                     FStar_TypeChecker_Common.guard_f =
                       FStar_TypeChecker_Common.Trivial;
                     FStar_TypeChecker_Common.deferred_to_tac =
                       (g.FStar_TypeChecker_Common.deferred_to_tac);
                     FStar_TypeChecker_Common.deferred =
                       (g.FStar_TypeChecker_Common.deferred);
                     FStar_TypeChecker_Common.univ_ineqs =
                       (g.FStar_TypeChecker_Common.univ_ineqs);
                     FStar_TypeChecker_Common.implicits =
                       (g.FStar_TypeChecker_Common.implicits)
                   } in
                 let uu___3 =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_meta
                        {
                          FStar_Syntax_Syntax.tm2 = e2;
                          FStar_Syntax_Syntax.meta =
                            (FStar_Syntax_Syntax.Meta_desugared
                               FStar_Syntax_Syntax.Meta_smt_pat)
                        }) top.FStar_Syntax_Syntax.pos in
                 (uu___3, c, g1))
        | FStar_Syntax_Syntax.Tm_meta
            { FStar_Syntax_Syntax.tm2 = e1;
              FStar_Syntax_Syntax.meta = FStar_Syntax_Syntax.Meta_pattern
                (names, pats);_}
            ->
            let uu___2 = FStar_Syntax_Util.type_u () in
            (match uu___2 with
             | (t, u) ->
                 let uu___3 = tc_check_tot_or_gtot_term env1 e1 t "" in
                 (match uu___3 with
                  | (e2, c, g) ->
                      let uu___4 =
                        let uu___5 =
                          FStar_TypeChecker_Env.clear_expected_typ env1 in
                        match uu___5 with
                        | (env2, uu___6) -> tc_smt_pats env2 pats in
                      (match uu___4 with
                       | (pats1, g') ->
                           let g'1 =
                             {
                               FStar_TypeChecker_Common.guard_f =
                                 FStar_TypeChecker_Common.Trivial;
                               FStar_TypeChecker_Common.deferred_to_tac =
                                 (g'.FStar_TypeChecker_Common.deferred_to_tac);
                               FStar_TypeChecker_Common.deferred =
                                 (g'.FStar_TypeChecker_Common.deferred);
                               FStar_TypeChecker_Common.univ_ineqs =
                                 (g'.FStar_TypeChecker_Common.univ_ineqs);
                               FStar_TypeChecker_Common.implicits =
                                 (g'.FStar_TypeChecker_Common.implicits)
                             } in
                           let uu___5 =
                             FStar_Syntax_Syntax.mk
                               (FStar_Syntax_Syntax.Tm_meta
                                  {
                                    FStar_Syntax_Syntax.tm2 = e2;
                                    FStar_Syntax_Syntax.meta =
                                      (FStar_Syntax_Syntax.Meta_pattern
                                         (names, pats1))
                                  }) top.FStar_Syntax_Syntax.pos in
                           let uu___6 =
                             FStar_Class_Monoid.op_Plus_Plus
                               FStar_TypeChecker_Common.monoid_guard_t g g'1 in
                           (uu___5, c, uu___6))))
        | FStar_Syntax_Syntax.Tm_meta
            { FStar_Syntax_Syntax.tm2 = e1;
              FStar_Syntax_Syntax.meta = FStar_Syntax_Syntax.Meta_desugared
                (FStar_Syntax_Syntax.Sequence);_}
            ->
            let uu___2 = tc_term env1 e1 in
            (match uu___2 with
             | (e2, c, g) ->
                 let e3 =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_meta
                        {
                          FStar_Syntax_Syntax.tm2 = e2;
                          FStar_Syntax_Syntax.meta =
                            (FStar_Syntax_Syntax.Meta_desugared
                               FStar_Syntax_Syntax.Sequence)
                        }) top.FStar_Syntax_Syntax.pos in
                 (e3, c, g))
        | FStar_Syntax_Syntax.Tm_meta
            { FStar_Syntax_Syntax.tm2 = e1;
              FStar_Syntax_Syntax.meta = FStar_Syntax_Syntax.Meta_monadic
                uu___2;_}
            -> tc_term env1 e1
        | FStar_Syntax_Syntax.Tm_meta
            { FStar_Syntax_Syntax.tm2 = e1;
              FStar_Syntax_Syntax.meta =
                FStar_Syntax_Syntax.Meta_monadic_lift uu___2;_}
            -> tc_term env1 e1
        | FStar_Syntax_Syntax.Tm_meta
            { FStar_Syntax_Syntax.tm2 = e1; FStar_Syntax_Syntax.meta = m;_}
            ->
            let uu___2 = tc_term env1 e1 in
            (match uu___2 with
             | (e2, c, g) ->
                 let e3 =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_meta
                        {
                          FStar_Syntax_Syntax.tm2 = e2;
                          FStar_Syntax_Syntax.meta = m
                        }) top.FStar_Syntax_Syntax.pos in
                 (e3, c, g))
        | FStar_Syntax_Syntax.Tm_ascribed
            { FStar_Syntax_Syntax.tm = e1;
              FStar_Syntax_Syntax.asc =
                (asc, FStar_Pervasives_Native.Some tac, use_eq);
              FStar_Syntax_Syntax.eff_opt = labopt;_}
            ->
            let uu___2 =
              tc_tactic FStar_Syntax_Syntax.t_unit FStar_Syntax_Syntax.t_unit
                env1 tac in
            (match uu___2 with
             | (tac1, uu___3, g_tac) ->
                 let t' =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_ascribed
                        {
                          FStar_Syntax_Syntax.tm = e1;
                          FStar_Syntax_Syntax.asc =
                            (asc, FStar_Pervasives_Native.None, use_eq);
                          FStar_Syntax_Syntax.eff_opt = labopt
                        }) top.FStar_Syntax_Syntax.pos in
                 let uu___4 = tc_term env1 t' in
                 (match uu___4 with
                  | (t'1, c, g) ->
                      let t'2 =
                        let uu___5 =
                          let uu___6 = FStar_Syntax_Subst.compress t'1 in
                          uu___6.FStar_Syntax_Syntax.n in
                        match uu___5 with
                        | FStar_Syntax_Syntax.Tm_ascribed
                            { FStar_Syntax_Syntax.tm = e2;
                              FStar_Syntax_Syntax.asc =
                                (asc1, FStar_Pervasives_Native.None, _use_eq);
                              FStar_Syntax_Syntax.eff_opt = labopt1;_}
                            ->
                            FStar_Syntax_Syntax.mk
                              (FStar_Syntax_Syntax.Tm_ascribed
                                 {
                                   FStar_Syntax_Syntax.tm = e2;
                                   FStar_Syntax_Syntax.asc =
                                     (asc1,
                                       (FStar_Pervasives_Native.Some tac1),
                                       use_eq);
                                   FStar_Syntax_Syntax.eff_opt = labopt1
                                 }) t'1.FStar_Syntax_Syntax.pos
                        | uu___6 ->
                            FStar_Compiler_Effect.failwith "impossible" in
                      let g1 =
                        wrap_guard_with_tactic_opt
                          (FStar_Pervasives_Native.Some tac1) g in
                      let uu___5 =
                        FStar_Class_Monoid.op_Plus_Plus
                          FStar_TypeChecker_Common.monoid_guard_t g1 g_tac in
                      (t'2, c, uu___5)))
        | FStar_Syntax_Syntax.Tm_ascribed
            { FStar_Syntax_Syntax.tm = uu___2;
              FStar_Syntax_Syntax.asc =
                (FStar_Pervasives.Inr expected_c,
                 FStar_Pervasives_Native.None, use_eq);
              FStar_Syntax_Syntax.eff_opt = uu___3;_}
            when
            let uu___4 = is_comp_ascribed_reflect top in
            FStar_Compiler_Util.is_some uu___4 ->
            let uu___4 =
              let uu___5 = is_comp_ascribed_reflect top in
              FStar_Compiler_Util.must uu___5 in
            (match uu___4 with
             | (effect_lid, e1, aqual) ->
                 let uu___5 = FStar_TypeChecker_Env.clear_expected_typ env1 in
                 (match uu___5 with
                  | (env0, uu___6) ->
                      let uu___7 = tc_comp env0 expected_c in
                      (match uu___7 with
                       | (expected_c1, uu___8, g_c) ->
                           let expected_ct =
                             FStar_TypeChecker_Env.unfold_effect_abbrev env0
                               expected_c1 in
                           ((let uu___10 =
                               let uu___11 =
                                 FStar_Ident.lid_equals effect_lid
                                   expected_ct.FStar_Syntax_Syntax.effect_name in
                               Prims.op_Negation uu___11 in
                             if uu___10
                             then
                               let uu___11 =
                                 let uu___12 =
                                   let uu___13 =
                                     FStar_Ident.string_of_lid effect_lid in
                                   let uu___14 =
                                     FStar_Ident.string_of_lid
                                       expected_ct.FStar_Syntax_Syntax.effect_name in
                                   FStar_Compiler_Util.format2
                                     "The effect on reflect %s does not match with the annotation %s\n"
                                     uu___13 uu___14 in
                                 (FStar_Errors_Codes.Fatal_UnexpectedEffect,
                                   uu___12) in
                               FStar_Errors.raise_error uu___11
                                 top.FStar_Syntax_Syntax.pos
                             else ());
                            (let uu___11 =
                               let uu___12 =
                                 FStar_TypeChecker_Env.is_user_reflectable_effect
                                   env1 effect_lid in
                               Prims.op_Negation uu___12 in
                             if uu___11
                             then
                               let uu___12 =
                                 let uu___13 =
                                   let uu___14 =
                                     FStar_Ident.string_of_lid effect_lid in
                                   FStar_Compiler_Util.format1
                                     "Effect %s cannot be reflected" uu___14 in
                                 (FStar_Errors_Codes.Fatal_EffectCannotBeReified,
                                   uu___13) in
                               FStar_Errors.raise_error uu___12
                                 top.FStar_Syntax_Syntax.pos
                             else ());
                            (let u_c =
                               FStar_Compiler_List.hd
                                 expected_ct.FStar_Syntax_Syntax.comp_univs in
                             let repr =
                               let uu___11 =
                                 let uu___12 =
                                   FStar_Syntax_Syntax.mk_Comp expected_ct in
                                 FStar_TypeChecker_Env.effect_repr env0
                                   uu___12 u_c in
                               FStar_Compiler_Util.must uu___11 in
                             let e2 =
                               let uu___11 =
                                 let uu___12 =
                                   let uu___13 =
                                     let uu___14 =
                                       let uu___15 =
                                         FStar_Syntax_Syntax.mk_Total repr in
                                       FStar_Pervasives.Inr uu___15 in
                                     (uu___14, FStar_Pervasives_Native.None,
                                       use_eq) in
                                   {
                                     FStar_Syntax_Syntax.tm = e1;
                                     FStar_Syntax_Syntax.asc = uu___13;
                                     FStar_Syntax_Syntax.eff_opt =
                                       FStar_Pervasives_Native.None
                                   } in
                                 FStar_Syntax_Syntax.Tm_ascribed uu___12 in
                               FStar_Syntax_Syntax.mk uu___11
                                 e1.FStar_Syntax_Syntax.pos in
                             (let uu___12 = FStar_Compiler_Debug.extreme () in
                              if uu___12
                              then
                                let uu___13 =
                                  FStar_Class_Show.show
                                    FStar_Syntax_Print.showable_term e2 in
                                FStar_Compiler_Util.print1
                                  "Typechecking ascribed reflect, inner ascribed term: %s\n"
                                  uu___13
                              else ());
                             (let uu___12 = tc_tot_or_gtot_term env0 e2 in
                              match uu___12 with
                              | (e3, uu___13, g_e) ->
                                  let e4 = FStar_Syntax_Util.unascribe e3 in
                                  ((let uu___15 =
                                      FStar_Compiler_Debug.extreme () in
                                    if uu___15
                                    then
                                      let uu___16 =
                                        FStar_Class_Show.show
                                          FStar_Syntax_Print.showable_term e4 in
                                      let uu___17 =
                                        FStar_TypeChecker_Rel.guard_to_string
                                          env0 g_e in
                                      FStar_Compiler_Util.print2
                                        "Typechecking ascribed reflect, after typechecking inner ascribed term: %s and guard: %s\n"
                                        uu___16 uu___17
                                    else ());
                                   (let top1 =
                                      let r = top.FStar_Syntax_Syntax.pos in
                                      let tm =
                                        FStar_Syntax_Syntax.mk
                                          (FStar_Syntax_Syntax.Tm_constant
                                             (FStar_Const.Const_reflect
                                                effect_lid)) r in
                                      let tm1 =
                                        FStar_Syntax_Syntax.mk
                                          (FStar_Syntax_Syntax.Tm_app
                                             {
                                               FStar_Syntax_Syntax.hd = tm;
                                               FStar_Syntax_Syntax.args =
                                                 [(e4, aqual)]
                                             }) r in
                                      FStar_Syntax_Syntax.mk
                                        (FStar_Syntax_Syntax.Tm_ascribed
                                           {
                                             FStar_Syntax_Syntax.tm = tm1;
                                             FStar_Syntax_Syntax.asc =
                                               ((FStar_Pervasives.Inr
                                                   expected_c1),
                                                 FStar_Pervasives_Native.None,
                                                 use_eq);
                                             FStar_Syntax_Syntax.eff_opt =
                                               (FStar_Pervasives_Native.Some
                                                  (FStar_Syntax_Util.comp_effect_name
                                                     expected_c1))
                                           }) r in
                                    let uu___15 =
                                      let uu___16 =
                                        FStar_TypeChecker_Common.lcomp_of_comp
                                          expected_c1 in
                                      comp_check_expected_typ env1 top1
                                        uu___16 in
                                    match uu___15 with
                                    | (top2, c, g_env) ->
                                        let uu___16 =
                                          let uu___17 =
                                            FStar_Class_Monoid.op_Plus_Plus
                                              FStar_TypeChecker_Common.monoid_guard_t
                                              g_c g_e in
                                          FStar_Class_Monoid.op_Plus_Plus
                                            FStar_TypeChecker_Common.monoid_guard_t
                                            uu___17 g_env in
                                        (top2, c, uu___16)))))))))
        | FStar_Syntax_Syntax.Tm_ascribed
            { FStar_Syntax_Syntax.tm = e1;
              FStar_Syntax_Syntax.asc =
                (FStar_Pervasives.Inr expected_c,
                 FStar_Pervasives_Native.None, use_eq);
              FStar_Syntax_Syntax.eff_opt = uu___2;_}
            ->
            let uu___3 = FStar_TypeChecker_Env.clear_expected_typ env1 in
            (match uu___3 with
             | (env0, uu___4) ->
                 let uu___5 = tc_comp env0 expected_c in
                 (match uu___5 with
                  | (expected_c1, uu___6, g) ->
                      let uu___7 =
                        let uu___8 =
                          FStar_TypeChecker_Env.set_expected_typ_maybe_eq
                            env0 (FStar_Syntax_Util.comp_result expected_c1)
                            use_eq in
                        tc_term uu___8 e1 in
                      (match uu___7 with
                       | (e2, c', g') ->
                           let uu___8 =
                             let uu___9 =
                               FStar_TypeChecker_Common.lcomp_comp c' in
                             match uu___9 with
                             | (c'1, g_c') ->
                                 let uu___10 =
                                   check_expected_effect env0 use_eq
                                     (FStar_Pervasives_Native.Some
                                        expected_c1) (e2, c'1) in
                                 (match uu___10 with
                                  | (e3, expected_c2, g'') ->
                                      let uu___11 =
                                        FStar_Class_Monoid.op_Plus_Plus
                                          FStar_TypeChecker_Common.monoid_guard_t
                                          g_c' g'' in
                                      (e3, expected_c2, uu___11)) in
                           (match uu___8 with
                            | (e3, expected_c2, g'') ->
                                let e4 =
                                  FStar_Syntax_Syntax.mk
                                    (FStar_Syntax_Syntax.Tm_ascribed
                                       {
                                         FStar_Syntax_Syntax.tm = e3;
                                         FStar_Syntax_Syntax.asc =
                                           ((FStar_Pervasives.Inr expected_c2),
                                             FStar_Pervasives_Native.None,
                                             use_eq);
                                         FStar_Syntax_Syntax.eff_opt =
                                           (FStar_Pervasives_Native.Some
                                              (FStar_Syntax_Util.comp_effect_name
                                                 expected_c2))
                                       }) top.FStar_Syntax_Syntax.pos in
                                let lc =
                                  FStar_TypeChecker_Common.lcomp_of_comp
                                    expected_c2 in
                                let f =
                                  let uu___9 =
                                    FStar_Class_Monoid.op_Plus_Plus
                                      FStar_TypeChecker_Common.monoid_guard_t
                                      g g' in
                                  FStar_Class_Monoid.op_Plus_Plus
                                    FStar_TypeChecker_Common.monoid_guard_t
                                    uu___9 g'' in
                                let uu___9 =
                                  comp_check_expected_typ env1 e4 lc in
                                (match uu___9 with
                                 | (e5, c, f2) ->
                                     let uu___10 =
                                       FStar_Class_Monoid.op_Plus_Plus
                                         FStar_TypeChecker_Common.monoid_guard_t
                                         f f2 in
                                     (e5, c, uu___10))))))
        | FStar_Syntax_Syntax.Tm_ascribed
            { FStar_Syntax_Syntax.tm = e1;
              FStar_Syntax_Syntax.asc =
                (FStar_Pervasives.Inl t, FStar_Pervasives_Native.None,
                 use_eq);
              FStar_Syntax_Syntax.eff_opt = uu___2;_}
            ->
            let uu___3 = FStar_Syntax_Util.type_u () in
            (match uu___3 with
             | (k, u) ->
                 let uu___4 = tc_check_tot_or_gtot_term env1 t k "" in
                 (match uu___4 with
                  | (t1, uu___5, f) ->
                      let uu___6 =
                        let uu___7 =
                          FStar_TypeChecker_Env.set_expected_typ_maybe_eq
                            env1 t1 use_eq in
                        tc_term uu___7 e1 in
                      (match uu___6 with
                       | (e2, c, g) ->
                           let uu___7 =
                             let uu___8 =
                               FStar_TypeChecker_Env.set_range env1
                                 t1.FStar_Syntax_Syntax.pos in
                             FStar_TypeChecker_Util.strengthen_precondition
                               (FStar_Pervasives_Native.Some
                                  (fun uu___9 ->
                                     FStar_TypeChecker_Err.ill_kinded_type))
                               uu___8 e2 c f in
                           (match uu___7 with
                            | (c1, f1) ->
                                let uu___8 =
                                  let uu___9 =
                                    FStar_Syntax_Syntax.mk
                                      (FStar_Syntax_Syntax.Tm_ascribed
                                         {
                                           FStar_Syntax_Syntax.tm = e2;
                                           FStar_Syntax_Syntax.asc =
                                             ((FStar_Pervasives.Inl t1),
                                               FStar_Pervasives_Native.None,
                                               use_eq);
                                           FStar_Syntax_Syntax.eff_opt =
                                             (FStar_Pervasives_Native.Some
                                                (c1.FStar_TypeChecker_Common.eff_name))
                                         }) top.FStar_Syntax_Syntax.pos in
                                  comp_check_expected_typ env1 uu___9 c1 in
                                (match uu___8 with
                                 | (e3, c2, f2) ->
                                     let uu___9 =
                                       let uu___10 =
                                         FStar_Class_Monoid.op_Plus_Plus
                                           FStar_TypeChecker_Common.monoid_guard_t
                                           g f2 in
                                       FStar_Class_Monoid.op_Plus_Plus
                                         FStar_TypeChecker_Common.monoid_guard_t
                                         f1 uu___10 in
                                     (e3, c2, uu___9))))))
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_range_of);
                  FStar_Syntax_Syntax.pos = uu___2;
                  FStar_Syntax_Syntax.vars = uu___3;
                  FStar_Syntax_Syntax.hash_code = uu___4;_};
              FStar_Syntax_Syntax.args = a::hd::rest;_}
            ->
            let rest1 = hd :: rest in
            let uu___5 = FStar_Syntax_Util.head_and_args top in
            (match uu___5 with
             | (unary_op, uu___6) ->
                 let head =
                   let uu___7 =
                     FStar_Compiler_Range_Ops.union_ranges
                       unary_op.FStar_Syntax_Syntax.pos
                       (FStar_Pervasives_Native.fst a).FStar_Syntax_Syntax.pos in
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = unary_op;
                          FStar_Syntax_Syntax.args = [a]
                        }) uu___7 in
                 let t =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = head;
                          FStar_Syntax_Syntax.args = rest1
                        }) top.FStar_Syntax_Syntax.pos in
                 tc_term env1 t)
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_reify uu___2);
                  FStar_Syntax_Syntax.pos = uu___3;
                  FStar_Syntax_Syntax.vars = uu___4;
                  FStar_Syntax_Syntax.hash_code = uu___5;_};
              FStar_Syntax_Syntax.args = a::hd::rest;_}
            ->
            let rest1 = hd :: rest in
            let uu___6 = FStar_Syntax_Util.head_and_args top in
            (match uu___6 with
             | (unary_op, uu___7) ->
                 let head =
                   let uu___8 =
                     FStar_Compiler_Range_Ops.union_ranges
                       unary_op.FStar_Syntax_Syntax.pos
                       (FStar_Pervasives_Native.fst a).FStar_Syntax_Syntax.pos in
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = unary_op;
                          FStar_Syntax_Syntax.args = [a]
                        }) uu___8 in
                 let t =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = head;
                          FStar_Syntax_Syntax.args = rest1
                        }) top.FStar_Syntax_Syntax.pos in
                 tc_term env1 t)
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_reflect uu___2);
                  FStar_Syntax_Syntax.pos = uu___3;
                  FStar_Syntax_Syntax.vars = uu___4;
                  FStar_Syntax_Syntax.hash_code = uu___5;_};
              FStar_Syntax_Syntax.args = a::hd::rest;_}
            ->
            let rest1 = hd :: rest in
            let uu___6 = FStar_Syntax_Util.head_and_args top in
            (match uu___6 with
             | (unary_op, uu___7) ->
                 let head =
                   let uu___8 =
                     FStar_Compiler_Range_Ops.union_ranges
                       unary_op.FStar_Syntax_Syntax.pos
                       (FStar_Pervasives_Native.fst a).FStar_Syntax_Syntax.pos in
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = unary_op;
                          FStar_Syntax_Syntax.args = [a]
                        }) uu___8 in
                 let t =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = head;
                          FStar_Syntax_Syntax.args = rest1
                        }) top.FStar_Syntax_Syntax.pos in
                 tc_term env1 t)
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_set_range_of);
                  FStar_Syntax_Syntax.pos = uu___2;
                  FStar_Syntax_Syntax.vars = uu___3;
                  FStar_Syntax_Syntax.hash_code = uu___4;_};
              FStar_Syntax_Syntax.args = a1::a2::hd::rest;_}
            ->
            let rest1 = hd :: rest in
            let uu___5 = FStar_Syntax_Util.head_and_args top in
            (match uu___5 with
             | (unary_op, uu___6) ->
                 let head =
                   let uu___7 =
                     FStar_Compiler_Range_Ops.union_ranges
                       unary_op.FStar_Syntax_Syntax.pos
                       (FStar_Pervasives_Native.fst a1).FStar_Syntax_Syntax.pos in
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = unary_op;
                          FStar_Syntax_Syntax.args = [a1; a2]
                        }) uu___7 in
                 let t =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = head;
                          FStar_Syntax_Syntax.args = rest1
                        }) top.FStar_Syntax_Syntax.pos in
                 tc_term env1 t)
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_range_of);
                  FStar_Syntax_Syntax.pos = uu___2;
                  FStar_Syntax_Syntax.vars = uu___3;
                  FStar_Syntax_Syntax.hash_code = uu___4;_};
              FStar_Syntax_Syntax.args =
                (e1, FStar_Pervasives_Native.None)::[];_}
            ->
            let uu___5 =
              let uu___6 =
                let uu___7 = FStar_TypeChecker_Env.clear_expected_typ env1 in
                FStar_Pervasives_Native.fst uu___7 in
              tc_term uu___6 e1 in
            (match uu___5 with
             | (e2, c, g) ->
                 let uu___6 = FStar_Syntax_Util.head_and_args top in
                 (match uu___6 with
                  | (head, uu___7) ->
                      let uu___8 =
                        FStar_Syntax_Syntax.mk
                          (FStar_Syntax_Syntax.Tm_app
                             {
                               FStar_Syntax_Syntax.hd = head;
                               FStar_Syntax_Syntax.args =
                                 [(e2, FStar_Pervasives_Native.None)]
                             }) top.FStar_Syntax_Syntax.pos in
                      let uu___9 =
                        let uu___10 =
                          let uu___11 =
                            FStar_Syntax_Syntax.tabbrev
                              FStar_Parser_Const.range_lid in
                          FStar_Syntax_Syntax.mk_Total uu___11 in
                        FStar_TypeChecker_Common.lcomp_of_comp uu___10 in
                      (uu___8, uu___9, g)))
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_set_range_of);
                  FStar_Syntax_Syntax.pos = uu___2;
                  FStar_Syntax_Syntax.vars = uu___3;
                  FStar_Syntax_Syntax.hash_code = uu___4;_};
              FStar_Syntax_Syntax.args =
                (t, FStar_Pervasives_Native.None)::(r,
                                                    FStar_Pervasives_Native.None)::[];_}
            ->
            let uu___5 = FStar_Syntax_Util.head_and_args top in
            (match uu___5 with
             | (head, uu___6) ->
                 let env' =
                   let uu___7 =
                     FStar_Syntax_Syntax.tabbrev FStar_Parser_Const.range_lid in
                   FStar_TypeChecker_Env.set_expected_typ env1 uu___7 in
                 let uu___7 = tc_term env' r in
                 (match uu___7 with
                  | (er, uu___8, gr) ->
                      let uu___9 = tc_term env1 t in
                      (match uu___9 with
                       | (t1, tt, gt) ->
                           let g =
                             FStar_Class_Monoid.op_Plus_Plus
                               FStar_TypeChecker_Common.monoid_guard_t gr gt in
                           let uu___10 =
                             let uu___11 =
                               let uu___12 = FStar_Syntax_Syntax.as_arg t1 in
                               let uu___13 =
                                 let uu___14 = FStar_Syntax_Syntax.as_arg r in
                                 [uu___14] in
                               uu___12 :: uu___13 in
                             FStar_Syntax_Syntax.mk_Tm_app head uu___11
                               top.FStar_Syntax_Syntax.pos in
                           (uu___10, tt, g))))
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_range_of);
                  FStar_Syntax_Syntax.pos = uu___2;
                  FStar_Syntax_Syntax.vars = uu___3;
                  FStar_Syntax_Syntax.hash_code = uu___4;_};
              FStar_Syntax_Syntax.args = uu___5;_}
            ->
            let uu___6 =
              let uu___7 =
                let uu___8 =
                  FStar_Class_Show.show FStar_Syntax_Print.showable_term top in
                FStar_Compiler_Util.format1 "Ill-applied constant %s" uu___8 in
              (FStar_Errors_Codes.Fatal_IllAppliedConstant, uu___7) in
            FStar_Errors.raise_error uu___6 e.FStar_Syntax_Syntax.pos
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_set_range_of);
                  FStar_Syntax_Syntax.pos = uu___2;
                  FStar_Syntax_Syntax.vars = uu___3;
                  FStar_Syntax_Syntax.hash_code = uu___4;_};
              FStar_Syntax_Syntax.args = uu___5;_}
            ->
            let uu___6 =
              let uu___7 =
                let uu___8 =
                  FStar_Class_Show.show FStar_Syntax_Print.showable_term top in
                FStar_Compiler_Util.format1 "Ill-applied constant %s" uu___8 in
              (FStar_Errors_Codes.Fatal_IllAppliedConstant, uu___7) in
            FStar_Errors.raise_error uu___6 e.FStar_Syntax_Syntax.pos
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_reify uu___2);
                  FStar_Syntax_Syntax.pos = uu___3;
                  FStar_Syntax_Syntax.vars = uu___4;
                  FStar_Syntax_Syntax.hash_code = uu___5;_};
              FStar_Syntax_Syntax.args = (e1, aqual)::[];_}
            ->
            (if FStar_Compiler_Option.isSome aqual
             then
               FStar_Errors.log_issue e1.FStar_Syntax_Syntax.pos
                 (FStar_Errors_Codes.Warning_IrrelevantQualifierOnArgumentToReify,
                   "Qualifier on argument to reify is irrelevant and will be ignored")
             else ();
             (let uu___7 = FStar_TypeChecker_Env.clear_expected_typ env1 in
              match uu___7 with
              | (env0, uu___8) ->
                  let uu___9 = tc_term env0 e1 in
                  (match uu___9 with
                   | (e2, c, g) ->
                       let uu___10 =
                         let uu___11 = FStar_TypeChecker_Common.lcomp_comp c in
                         match uu___11 with
                         | (c1, g_c) ->
                             let uu___12 =
                               FStar_TypeChecker_Env.unfold_effect_abbrev
                                 env1 c1 in
                             (uu___12, g_c) in
                       (match uu___10 with
                        | (c1, g_c) ->
                            ((let uu___12 =
                                let uu___13 =
                                  FStar_TypeChecker_Env.is_user_reifiable_effect
                                    env1 c1.FStar_Syntax_Syntax.effect_name in
                                Prims.op_Negation uu___13 in
                              if uu___12
                              then
                                let uu___13 =
                                  let uu___14 =
                                    let uu___15 =
                                      FStar_Ident.string_of_lid
                                        c1.FStar_Syntax_Syntax.effect_name in
                                    FStar_Compiler_Util.format1
                                      "Effect %s cannot be reified" uu___15 in
                                  (FStar_Errors_Codes.Fatal_EffectCannotBeReified,
                                    uu___14) in
                                FStar_Errors.raise_error uu___13
                                  e2.FStar_Syntax_Syntax.pos
                              else ());
                             (let u_c =
                                FStar_Compiler_List.hd
                                  c1.FStar_Syntax_Syntax.comp_univs in
                              let e3 =
                                FStar_Syntax_Util.mk_reify e2
                                  (FStar_Pervasives_Native.Some
                                     (c1.FStar_Syntax_Syntax.effect_name)) in
                              let repr =
                                let uu___12 = FStar_Syntax_Syntax.mk_Comp c1 in
                                FStar_TypeChecker_Env.reify_comp env1 uu___12
                                  u_c in
                              let c2 =
                                let uu___12 =
                                  FStar_TypeChecker_Env.is_total_effect env1
                                    c1.FStar_Syntax_Syntax.effect_name in
                                if uu___12
                                then
                                  let uu___13 =
                                    FStar_Syntax_Syntax.mk_Total repr in
                                  FStar_TypeChecker_Common.lcomp_of_comp
                                    uu___13
                                else
                                  (let ct =
                                     {
                                       FStar_Syntax_Syntax.comp_univs = [u_c];
                                       FStar_Syntax_Syntax.effect_name =
                                         FStar_Parser_Const.effect_Dv_lid;
                                       FStar_Syntax_Syntax.result_typ = repr;
                                       FStar_Syntax_Syntax.effect_args = [];
                                       FStar_Syntax_Syntax.flags = []
                                     } in
                                   let uu___14 =
                                     FStar_Syntax_Syntax.mk_Comp ct in
                                   FStar_TypeChecker_Common.lcomp_of_comp
                                     uu___14) in
                              let uu___12 =
                                comp_check_expected_typ env1 e3 c2 in
                              match uu___12 with
                              | (e4, c3, g') ->
                                  let uu___13 =
                                    let uu___14 =
                                      FStar_Class_Monoid.op_Plus_Plus
                                        FStar_TypeChecker_Common.monoid_guard_t
                                        g_c g' in
                                    FStar_Class_Monoid.op_Plus_Plus
                                      FStar_TypeChecker_Common.monoid_guard_t
                                      g uu___14 in
                                  (e4, c3, uu___13)))))))
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_reflect l);
                  FStar_Syntax_Syntax.pos = uu___2;
                  FStar_Syntax_Syntax.vars = uu___3;
                  FStar_Syntax_Syntax.hash_code = uu___4;_};
              FStar_Syntax_Syntax.args = (e1, aqual)::[];_}
            ->
            (if FStar_Compiler_Option.isSome aqual
             then
               FStar_Errors.log_issue e1.FStar_Syntax_Syntax.pos
                 (FStar_Errors_Codes.Warning_IrrelevantQualifierOnArgumentToReflect,
                   "Qualifier on argument to reflect is irrelevant and will be ignored")
             else ();
             (let uu___7 =
                let uu___8 =
                  FStar_TypeChecker_Env.is_user_reflectable_effect env1 l in
                Prims.op_Negation uu___8 in
              if uu___7
              then
                let uu___8 =
                  let uu___9 =
                    let uu___10 = FStar_Ident.string_of_lid l in
                    FStar_Compiler_Util.format1
                      "Effect %s cannot be reflected" uu___10 in
                  (FStar_Errors_Codes.Fatal_EffectCannotBeReified, uu___9) in
                FStar_Errors.raise_error uu___8 e1.FStar_Syntax_Syntax.pos
              else ());
             (let uu___7 = FStar_Syntax_Util.head_and_args top in
              match uu___7 with
              | (reflect_op, uu___8) ->
                  let uu___9 = FStar_TypeChecker_Env.effect_decl_opt env1 l in
                  (match uu___9 with
                   | FStar_Pervasives_Native.None ->
                       let uu___10 =
                         let uu___11 =
                           let uu___12 = FStar_Ident.string_of_lid l in
                           FStar_Compiler_Util.format1
                             "Effect %s not found (for reflect)" uu___12 in
                         (FStar_Errors_Codes.Fatal_EffectNotFound, uu___11) in
                       FStar_Errors.raise_error uu___10
                         e1.FStar_Syntax_Syntax.pos
                   | FStar_Pervasives_Native.Some (ed, qualifiers) ->
                       let uu___10 =
                         FStar_TypeChecker_Env.clear_expected_typ env1 in
                       (match uu___10 with
                        | (env_no_ex, uu___11) ->
                            let uu___12 =
                              let uu___13 = tc_tot_or_gtot_term env_no_ex e1 in
                              match uu___13 with
                              | (e2, c, g) ->
                                  ((let uu___15 =
                                      let uu___16 =
                                        FStar_TypeChecker_Common.is_total_lcomp
                                          c in
                                      Prims.op_Negation uu___16 in
                                    if uu___15
                                    then
                                      FStar_Errors.log_issue
                                        e2.FStar_Syntax_Syntax.pos
                                        (FStar_Errors_Codes.Error_UnexpectedGTotComputation,
                                          "Expected Tot, got a GTot computation")
                                    else ());
                                   (e2, c, g)) in
                            (match uu___12 with
                             | (e2, c_e, g_e) ->
                                 let uu___13 =
                                   let uu___14 = FStar_Syntax_Util.type_u () in
                                   match uu___14 with
                                   | (a, u_a) ->
                                       let uu___15 =
                                         FStar_TypeChecker_Util.new_implicit_var
                                           "tc_term reflect"
                                           e2.FStar_Syntax_Syntax.pos
                                           env_no_ex a in
                                       (match uu___15 with
                                        | (a_uvar, uu___16, g_a) ->
                                            let uu___17 =
                                              FStar_TypeChecker_Util.fresh_effect_repr_en
                                                env_no_ex
                                                e2.FStar_Syntax_Syntax.pos l
                                                u_a a_uvar in
                                            (uu___17, u_a, a_uvar, g_a)) in
                                 (match uu___13 with
                                  | ((expected_repr_typ, g_repr), u_a, a,
                                     g_a) ->
                                      let g_eq =
                                        FStar_TypeChecker_Rel.teq env_no_ex
                                          c_e.FStar_TypeChecker_Common.res_typ
                                          expected_repr_typ in
                                      let eff_args =
                                        let uu___14 =
                                          let uu___15 =
                                            FStar_Syntax_Subst.compress
                                              expected_repr_typ in
                                          uu___15.FStar_Syntax_Syntax.n in
                                        match uu___14 with
                                        | FStar_Syntax_Syntax.Tm_app
                                            {
                                              FStar_Syntax_Syntax.hd =
                                                uu___15;
                                              FStar_Syntax_Syntax.args =
                                                uu___16::args;_}
                                            -> args
                                        | uu___15 ->
                                            let uu___16 =
                                              let uu___17 =
                                                let uu___18 =
                                                  FStar_Ident.string_of_lid l in
                                                let uu___19 =
                                                  FStar_Syntax_Print.tag_of_term
                                                    expected_repr_typ in
                                                let uu___20 =
                                                  FStar_Class_Show.show
                                                    FStar_Syntax_Print.showable_term
                                                    expected_repr_typ in
                                                FStar_Compiler_Util.format3
                                                  "Expected repr type for %s is not an application node (%s:%s)"
                                                  uu___18 uu___19 uu___20 in
                                              (FStar_Errors_Codes.Fatal_UnexpectedEffect,
                                                uu___17) in
                                            FStar_Errors.raise_error uu___16
                                              top.FStar_Syntax_Syntax.pos in
                                      let c =
                                        let uu___14 =
                                          FStar_Syntax_Syntax.mk_Comp
                                            {
                                              FStar_Syntax_Syntax.comp_univs
                                                = [u_a];
                                              FStar_Syntax_Syntax.effect_name
                                                =
                                                (ed.FStar_Syntax_Syntax.mname);
                                              FStar_Syntax_Syntax.result_typ
                                                = a;
                                              FStar_Syntax_Syntax.effect_args
                                                = eff_args;
                                              FStar_Syntax_Syntax.flags = []
                                            } in
                                        FStar_TypeChecker_Common.lcomp_of_comp
                                          uu___14 in
                                      let e3 =
                                        FStar_Syntax_Syntax.mk
                                          (FStar_Syntax_Syntax.Tm_app
                                             {
                                               FStar_Syntax_Syntax.hd =
                                                 reflect_op;
                                               FStar_Syntax_Syntax.args =
                                                 [(e2, aqual)]
                                             }) top.FStar_Syntax_Syntax.pos in
                                      let uu___14 =
                                        comp_check_expected_typ env1 e3 c in
                                      (match uu___14 with
                                       | (e4, c1, g') ->
                                           let e5 =
                                             FStar_Syntax_Syntax.mk
                                               (FStar_Syntax_Syntax.Tm_meta
                                                  {
                                                    FStar_Syntax_Syntax.tm2 =
                                                      e4;
                                                    FStar_Syntax_Syntax.meta
                                                      =
                                                      (FStar_Syntax_Syntax.Meta_monadic
                                                         ((c1.FStar_TypeChecker_Common.eff_name),
                                                           (c1.FStar_TypeChecker_Common.res_typ)))
                                                  })
                                               e4.FStar_Syntax_Syntax.pos in
                                           let uu___15 =
                                             FStar_Class_Monoid.msum
                                               FStar_TypeChecker_Common.monoid_guard_t
                                               [g_e; g_repr; g_a; g_eq; g'] in
                                           (e5, c1, uu___15))))))))
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar
                    { FStar_Syntax_Syntax.fv_name = uu___2;
                      FStar_Syntax_Syntax.fv_qual =
                        FStar_Pervasives_Native.Some
                        (FStar_Syntax_Syntax.Unresolved_constructor uc);_};
                  FStar_Syntax_Syntax.pos = uu___3;
                  FStar_Syntax_Syntax.vars = uu___4;
                  FStar_Syntax_Syntax.hash_code = uu___5;_};
              FStar_Syntax_Syntax.args = args;_}
            ->
            let uu___6 =
              let uu___7 =
                if uc.FStar_Syntax_Syntax.uc_base_term
                then
                  match args with
                  | (b, uu___8)::rest ->
                      ((FStar_Pervasives_Native.Some b), rest)
                  | uu___8 -> FStar_Compiler_Effect.failwith "Impossible"
                else (FStar_Pervasives_Native.None, args) in
              match uu___7 with
              | (base_term, fields) ->
                  if
                    (FStar_Compiler_List.length
                       uc.FStar_Syntax_Syntax.uc_fields)
                      <> (FStar_Compiler_List.length fields)
                  then
                    let uu___8 =
                      let uu___9 =
                        let uu___10 =
                          FStar_Class_Show.show
                            (FStar_Class_Show.printableshow
                               FStar_Class_Printable.printable_nat)
                            (FStar_Compiler_List.length
                               uc.FStar_Syntax_Syntax.uc_fields) in
                        let uu___11 =
                          FStar_Class_Show.show
                            (FStar_Class_Show.printableshow
                               FStar_Class_Printable.printable_nat)
                            (FStar_Compiler_List.length fields) in
                        FStar_Compiler_Util.format2
                          "Could not resolve constructor; expected %s fields but only found %s"
                          uu___10 uu___11 in
                      (FStar_Errors_Codes.Fatal_IdentifierNotFound, uu___9) in
                    FStar_Errors.raise_error uu___8
                      top.FStar_Syntax_Syntax.pos
                  else
                    (let uu___9 =
                       let uu___10 =
                         FStar_Compiler_List.map FStar_Pervasives_Native.fst
                           fields in
                       FStar_Compiler_List.zip
                         uc.FStar_Syntax_Syntax.uc_fields uu___10 in
                     (base_term, uu___9)) in
            (match uu___6 with
             | (base_term, uc_fields) ->
                 let uu___7 =
                   let uu___8 = FStar_TypeChecker_Env.expected_typ env1 in
                   match uu___8 with
                   | FStar_Pervasives_Native.Some (t, uu___9) ->
                       let uu___10 =
                         FStar_TypeChecker_Util.find_record_or_dc_from_typ
                           env1 (FStar_Pervasives_Native.Some t) uc
                           top.FStar_Syntax_Syntax.pos in
                       (uu___10,
                         (FStar_Pervasives_Native.Some
                            (FStar_Pervasives.Inl t)))
                   | FStar_Pervasives_Native.None ->
                       (match base_term with
                        | FStar_Pervasives_Native.Some e1 ->
                            let uu___9 = tc_term env1 e1 in
                            (match uu___9 with
                             | (uu___10, lc, uu___11) ->
                                 let uu___12 =
                                   FStar_TypeChecker_Util.find_record_or_dc_from_typ
                                     env1
                                     (FStar_Pervasives_Native.Some
                                        (lc.FStar_TypeChecker_Common.res_typ))
                                     uc top.FStar_Syntax_Syntax.pos in
                                 (uu___12,
                                   (FStar_Pervasives_Native.Some
                                      (FStar_Pervasives.Inr
                                         (lc.FStar_TypeChecker_Common.res_typ)))))
                        | FStar_Pervasives_Native.None ->
                            let uu___9 =
                              FStar_TypeChecker_Util.find_record_or_dc_from_typ
                                env1 FStar_Pervasives_Native.None uc
                                top.FStar_Syntax_Syntax.pos in
                            (uu___9, FStar_Pervasives_Native.None)) in
                 (match uu___7 with
                  | ((rdc, constrname, constructor), topt) ->
                      let rdc1 = rdc in
                      let constructor1 =
                        FStar_Syntax_Syntax.fv_to_tm constructor in
                      let mk_field_projector i x =
                        let projname =
                          FStar_Syntax_Util.mk_field_projector_name_from_ident
                            constrname i in
                        let qual =
                          if rdc1.FStar_Syntax_DsEnv.is_record
                          then
                            FStar_Pervasives_Native.Some
                              (FStar_Syntax_Syntax.Record_projector
                                 (constrname, i))
                          else FStar_Pervasives_Native.None in
                        let candidate =
                          let uu___8 =
                            FStar_Ident.set_lid_range projname
                              x.FStar_Syntax_Syntax.pos in
                          FStar_Syntax_Syntax.fvar uu___8 qual in
                        FStar_Syntax_Syntax.mk_Tm_app candidate
                          [(x, FStar_Pervasives_Native.None)]
                          x.FStar_Syntax_Syntax.pos in
                      let fields =
                        FStar_TypeChecker_Util.make_record_fields_in_order
                          env1 uc topt rdc1 uc_fields
                          (fun field_name ->
                             match base_term with
                             | FStar_Pervasives_Native.Some x ->
                                 let uu___8 = mk_field_projector field_name x in
                                 FStar_Pervasives_Native.Some uu___8
                             | uu___8 -> FStar_Pervasives_Native.None)
                          top.FStar_Syntax_Syntax.pos in
                      let args1 =
                        FStar_Compiler_List.map
                          (fun x -> (x, FStar_Pervasives_Native.None)) fields in
                      let term =
                        FStar_Syntax_Syntax.mk_Tm_app constructor1 args1
                          top.FStar_Syntax_Syntax.pos in
                      tc_term env1 term))
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar
                    {
                      FStar_Syntax_Syntax.fv_name =
                        { FStar_Syntax_Syntax.v = field_name;
                          FStar_Syntax_Syntax.p = uu___2;_};
                      FStar_Syntax_Syntax.fv_qual =
                        FStar_Pervasives_Native.Some
                        (FStar_Syntax_Syntax.Unresolved_projector candidate);_};
                  FStar_Syntax_Syntax.pos = uu___3;
                  FStar_Syntax_Syntax.vars = uu___4;
                  FStar_Syntax_Syntax.hash_code = uu___5;_};
              FStar_Syntax_Syntax.args =
                (e1, FStar_Pervasives_Native.None)::rest;_}
            ->
            let proceed_with choice =
              match choice with
              | FStar_Pervasives_Native.None ->
                  let uu___6 =
                    let uu___7 =
                      let uu___8 =
                        let uu___9 =
                          let uu___10 = FStar_Ident.string_of_lid field_name in
                          FStar_Compiler_Util.format1
                            "Field name %s could not be resolved" uu___10 in
                        FStar_Errors_Msg.text uu___9 in
                      [uu___8] in
                    (FStar_Errors_Codes.Fatal_IdentifierNotFound, uu___7) in
                  let uu___7 = FStar_Ident.range_of_lid field_name in
                  FStar_Errors.raise_error_doc uu___6 uu___7
              | FStar_Pervasives_Native.Some choice1 ->
                  let f = FStar_Syntax_Syntax.fv_to_tm choice1 in
                  let term =
                    FStar_Syntax_Syntax.mk_Tm_app f
                      ((e1, FStar_Pervasives_Native.None) :: rest)
                      top.FStar_Syntax_Syntax.pos in
                  tc_term env1 term in
            let uu___6 =
              let uu___7 = FStar_TypeChecker_Env.clear_expected_typ env1 in
              match uu___7 with | (env2, uu___8) -> tc_term env2 e1 in
            (match uu___6 with
             | (uu___7, lc, uu___8) ->
                 let t0 =
                   FStar_TypeChecker_Normalize.unfold_whnf'
                     [FStar_TypeChecker_Env.Unascribe;
                     FStar_TypeChecker_Env.Unmeta;
                     FStar_TypeChecker_Env.Unrefine] env1
                     lc.FStar_TypeChecker_Common.res_typ in
                 let uu___9 = FStar_Syntax_Util.head_and_args t0 in
                 (match uu___9 with
                  | (thead, uu___10) ->
                      ((let uu___12 = FStar_Compiler_Effect.op_Bang dbg_RFD in
                        if uu___12
                        then
                          let uu___13 =
                            FStar_Class_Show.show
                              FStar_Syntax_Print.showable_term
                              lc.FStar_TypeChecker_Common.res_typ in
                          let uu___14 =
                            FStar_Class_Show.show
                              FStar_Syntax_Print.showable_term t0 in
                          let uu___15 =
                            FStar_Class_Show.show
                              FStar_Syntax_Print.showable_term thead in
                          FStar_Compiler_Util.print3
                            "Got lc.res_typ=%s; t0 = %s; thead = %s\n"
                            uu___13 uu___14 uu___15
                        else ());
                       (let uu___12 =
                          let uu___13 =
                            let uu___14 = FStar_Syntax_Util.un_uinst thead in
                            FStar_Syntax_Subst.compress uu___14 in
                          uu___13.FStar_Syntax_Syntax.n in
                        match uu___12 with
                        | FStar_Syntax_Syntax.Tm_fvar type_name ->
                            let uu___13 =
                              FStar_TypeChecker_Util.try_lookup_record_type
                                env1
                                (type_name.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                            (match uu___13 with
                             | FStar_Pervasives_Native.None ->
                                 proceed_with candidate
                             | FStar_Pervasives_Native.Some rdc ->
                                 let i =
                                   FStar_Compiler_List.tryFind
                                     (fun uu___14 ->
                                        match uu___14 with
                                        | (i1, uu___15) ->
                                            FStar_TypeChecker_Util.field_name_matches
                                              field_name rdc i1)
                                     rdc.FStar_Syntax_DsEnv.fields in
                                 (match i with
                                  | FStar_Pervasives_Native.None ->
                                      proceed_with candidate
                                  | FStar_Pervasives_Native.Some
                                      (i1, uu___14) ->
                                      let constrname =
                                        let uu___15 =
                                          let uu___16 =
                                            FStar_Ident.ns_of_lid
                                              rdc.FStar_Syntax_DsEnv.typename in
                                          FStar_Compiler_List.op_At uu___16
                                            [rdc.FStar_Syntax_DsEnv.constrname] in
                                        FStar_Ident.lid_of_ids uu___15 in
                                      let projname =
                                        FStar_Syntax_Util.mk_field_projector_name_from_ident
                                          constrname i1 in
                                      let qual =
                                        if rdc.FStar_Syntax_DsEnv.is_record
                                        then
                                          FStar_Pervasives_Native.Some
                                            (FStar_Syntax_Syntax.Record_projector
                                               (constrname, i1))
                                        else FStar_Pervasives_Native.None in
                                      let choice =
                                        let uu___15 =
                                          let uu___16 =
                                            FStar_Ident.range_of_lid
                                              field_name in
                                          FStar_Ident.set_lid_range projname
                                            uu___16 in
                                        FStar_Syntax_Syntax.lid_as_fv uu___15
                                          qual in
                                      proceed_with
                                        (FStar_Pervasives_Native.Some choice)))
                        | uu___13 -> proceed_with candidate))))
        | FStar_Syntax_Syntax.Tm_app
            { FStar_Syntax_Syntax.hd = head;
              FStar_Syntax_Syntax.args =
                (tau, FStar_Pervasives_Native.None)::[];_}
            when
            (FStar_Syntax_Util.is_synth_by_tactic head) &&
              (Prims.op_Negation env1.FStar_TypeChecker_Env.phase1)
            ->
            let uu___2 = FStar_Syntax_Util.head_and_args top in
            (match uu___2 with
             | (head1, args) ->
                 tc_synth head1 env1 args top.FStar_Syntax_Syntax.pos)
        | FStar_Syntax_Syntax.Tm_app
            { FStar_Syntax_Syntax.hd = head;
              FStar_Syntax_Syntax.args =
                (uu___2, FStar_Pervasives_Native.Some
                 { FStar_Syntax_Syntax.aqual_implicit = true;
                   FStar_Syntax_Syntax.aqual_attributes = uu___3;_})::
                (tau, FStar_Pervasives_Native.None)::[];_}
            when
            (FStar_Syntax_Util.is_synth_by_tactic head) &&
              (Prims.op_Negation env1.FStar_TypeChecker_Env.phase1)
            ->
            let uu___4 = FStar_Syntax_Util.head_and_args top in
            (match uu___4 with
             | (head1, args) ->
                 tc_synth head1 env1 args top.FStar_Syntax_Syntax.pos)
        | FStar_Syntax_Syntax.Tm_app
            { FStar_Syntax_Syntax.hd = head;
              FStar_Syntax_Syntax.args = args;_}
            when
            (FStar_Syntax_Util.is_synth_by_tactic head) &&
              (Prims.op_Negation env1.FStar_TypeChecker_Env.phase1)
            ->
            let uu___2 =
              match args with
              | (tau, FStar_Pervasives_Native.None)::rest ->
                  ([(tau, FStar_Pervasives_Native.None)], rest)
              | (a, FStar_Pervasives_Native.Some aq)::(tau,
                                                       FStar_Pervasives_Native.None)::rest
                  when aq.FStar_Syntax_Syntax.aqual_implicit ->
                  ([(a, (FStar_Pervasives_Native.Some aq));
                   (tau, FStar_Pervasives_Native.None)], rest)
              | uu___3 ->
                  FStar_Errors.raise_error
                    (FStar_Errors_Codes.Fatal_SynthByTacticError,
                      "synth_by_tactic: bad application")
                    top.FStar_Syntax_Syntax.pos in
            (match uu___2 with
             | (args1, args2) ->
                 let t1 = FStar_Syntax_Util.mk_app head args1 in
                 let t2 = FStar_Syntax_Util.mk_app t1 args2 in
                 tc_term env1 t2)
        | FStar_Syntax_Syntax.Tm_app
            { FStar_Syntax_Syntax.hd = head;
              FStar_Syntax_Syntax.args = args;_}
            ->
            let env0 = env1 in
            let env2 =
              let uu___2 =
                let uu___3 = FStar_TypeChecker_Env.clear_expected_typ env1 in
                FStar_Pervasives_Native.fst uu___3 in
              instantiate_both uu___2 in
            ((let uu___3 = FStar_Compiler_Debug.high () in
              if uu___3
              then
                let uu___4 =
                  FStar_Compiler_Range_Ops.string_of_range
                    top.FStar_Syntax_Syntax.pos in
                let uu___5 =
                  FStar_Class_Show.show FStar_Syntax_Print.showable_term top in
                let uu___6 = print_expected_ty_str env0 in
                FStar_Compiler_Util.print3 "(%s) Checking app %s, %s\n"
                  uu___4 uu___5 uu___6
              else ());
             (let uu___3 = tc_term (no_inst env2) head in
              match uu___3 with
              | (head1, chead, g_head) ->
                  let uu___4 =
                    let uu___5 = FStar_TypeChecker_Common.lcomp_comp chead in
                    match uu___5 with
                    | (c, g) ->
                        let uu___6 =
                          FStar_Class_Monoid.op_Plus_Plus
                            FStar_TypeChecker_Common.monoid_guard_t g_head g in
                        (c, uu___6) in
                  (match uu___4 with
                   | (chead1, g_head1) ->
                       let uu___5 =
                         let uu___6 =
                           ((Prims.op_Negation
                               env2.FStar_TypeChecker_Env.admit)
                              &&
                              (let uu___7 = FStar_Options.lax () in
                               Prims.op_Negation uu___7))
                             &&
                             (FStar_TypeChecker_Util.short_circuit_head head1) in
                         if uu___6
                         then
                           let uu___7 =
                             let uu___8 =
                               FStar_TypeChecker_Env.expected_typ env0 in
                             check_short_circuit_args env2 head1 chead1
                               g_head1 args uu___8 in
                           match uu___7 with | (e1, c, g) -> (e1, c, g)
                         else
                           (let uu___8 =
                              FStar_TypeChecker_Env.expected_typ env0 in
                            check_application_args env2 head1 chead1 g_head1
                              args uu___8) in
                       (match uu___5 with
                        | (e1, c, g) ->
                            let uu___6 =
                              let uu___7 =
                                (FStar_TypeChecker_Common.is_tot_or_gtot_lcomp
                                   c)
                                  ||
                                  (env2.FStar_TypeChecker_Env.phase1 &&
                                     (FStar_TypeChecker_Common.is_pure_or_ghost_lcomp
                                        c)) in
                              if uu___7
                              then
                                let uu___8 =
                                  FStar_TypeChecker_Util.maybe_instantiate
                                    env0 e1
                                    c.FStar_TypeChecker_Common.res_typ in
                                match uu___8 with
                                | (e2, res_typ, implicits) ->
                                    let uu___9 =
                                      FStar_TypeChecker_Common.set_result_typ_lc
                                        c res_typ in
                                    (e2, uu___9, implicits)
                              else
                                (e1, c,
                                  (FStar_Class_Monoid.mzero
                                     FStar_TypeChecker_Common.monoid_guard_t)) in
                            (match uu___6 with
                             | (e2, c1, implicits) ->
                                 ((let uu___8 =
                                     FStar_Compiler_Debug.extreme () in
                                   if uu___8
                                   then
                                     let uu___9 =
                                       FStar_TypeChecker_Rel.print_pending_implicits
                                         g in
                                     FStar_Compiler_Util.print1
                                       "Introduced {%s} implicits in application\n"
                                       uu___9
                                   else ());
                                  (let uu___8 =
                                     comp_check_expected_typ env0 e2 c1 in
                                   match uu___8 with
                                   | (e3, c2, g') ->
                                       let gres =
                                         let uu___9 =
                                           FStar_Class_Monoid.op_Plus_Plus
                                             FStar_TypeChecker_Common.monoid_guard_t
                                             g g' in
                                         FStar_Class_Monoid.op_Plus_Plus
                                           FStar_TypeChecker_Common.monoid_guard_t
                                           uu___9 implicits in
                                       ((let uu___10 =
                                           FStar_Compiler_Debug.extreme () in
                                         if uu___10
                                         then
                                           let uu___11 =
                                             FStar_Class_Show.show
                                               FStar_Syntax_Print.showable_term
                                               e3 in
                                           let uu___12 =
                                             FStar_TypeChecker_Rel.guard_to_string
                                               env2 gres in
                                           FStar_Compiler_Util.print2
                                             "Guard from application node %s is %s\n"
                                             uu___11 uu___12
                                         else ());
                                        (e3, c2, gres)))))))))
        | FStar_Syntax_Syntax.Tm_match uu___2 -> tc_match env1 top
        | FStar_Syntax_Syntax.Tm_let
            {
              FStar_Syntax_Syntax.lbs =
                (false,
                 { FStar_Syntax_Syntax.lbname = FStar_Pervasives.Inr uu___2;
                   FStar_Syntax_Syntax.lbunivs = uu___3;
                   FStar_Syntax_Syntax.lbtyp = uu___4;
                   FStar_Syntax_Syntax.lbeff = uu___5;
                   FStar_Syntax_Syntax.lbdef = uu___6;
                   FStar_Syntax_Syntax.lbattrs = uu___7;
                   FStar_Syntax_Syntax.lbpos = uu___8;_}::[]);
              FStar_Syntax_Syntax.body1 = uu___9;_}
            -> check_top_level_let env1 top
        | FStar_Syntax_Syntax.Tm_let
            { FStar_Syntax_Syntax.lbs = (false, uu___2);
              FStar_Syntax_Syntax.body1 = uu___3;_}
            -> check_inner_let env1 top
        | FStar_Syntax_Syntax.Tm_let
            {
              FStar_Syntax_Syntax.lbs =
                (true,
                 { FStar_Syntax_Syntax.lbname = FStar_Pervasives.Inr uu___2;
                   FStar_Syntax_Syntax.lbunivs = uu___3;
                   FStar_Syntax_Syntax.lbtyp = uu___4;
                   FStar_Syntax_Syntax.lbeff = uu___5;
                   FStar_Syntax_Syntax.lbdef = uu___6;
                   FStar_Syntax_Syntax.lbattrs = uu___7;
                   FStar_Syntax_Syntax.lbpos = uu___8;_}::uu___9);
              FStar_Syntax_Syntax.body1 = uu___10;_}
            -> check_top_level_let_rec env1 top
        | FStar_Syntax_Syntax.Tm_let
            { FStar_Syntax_Syntax.lbs = (true, uu___2);
              FStar_Syntax_Syntax.body1 = uu___3;_}
            -> check_inner_let_rec env1 top))
and (tc_match :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
        FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun top ->
      let uu___ =
        let uu___1 = FStar_Syntax_Subst.compress top in
        uu___1.FStar_Syntax_Syntax.n in
      match uu___ with
      | FStar_Syntax_Syntax.Tm_match
          { FStar_Syntax_Syntax.scrutinee = e1;
            FStar_Syntax_Syntax.ret_opt = ret_opt;
            FStar_Syntax_Syntax.brs = eqns;
            FStar_Syntax_Syntax.rc_opt1 = uu___1;_}
          ->
          let uu___2 =
            let uu___3 =
              let uu___4 =
                let uu___5 = FStar_TypeChecker_Env.clear_expected_typ env in
                FStar_Pervasives_Native.fst uu___5 in
              instantiate_both uu___4 in
            tc_term uu___3 e1 in
          (match uu___2 with
           | (e11, c1, g1) ->
               let uu___3 =
                 match eqns with
                 | (p, uu___4, uu___5)::uu___6 ->
                     (match p.FStar_Syntax_Syntax.v with
                      | FStar_Syntax_Syntax.Pat_cons (fv, uu___7, uu___8) ->
                          let r =
                            try
                              (fun uu___9 ->
                                 match () with
                                 | () ->
                                     let uu___10 =
                                       FStar_TypeChecker_Env.lookup_datacon
                                         env
                                         (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                                     FStar_Pervasives_Native.Some uu___10) ()
                            with | uu___9 -> FStar_Pervasives_Native.None in
                          (match r with
                           | FStar_Pervasives_Native.Some (us, t) ->
                               let uu___9 =
                                 FStar_Syntax_Util.arrow_formals_comp t in
                               (match uu___9 with
                                | (bs, c) ->
                                    let env' =
                                      FStar_TypeChecker_Env.push_binders env
                                        bs in
                                    FStar_TypeChecker_Util.maybe_coerce_lc
                                      env' e11 c1
                                      (FStar_Syntax_Util.comp_result c))
                           | FStar_Pervasives_Native.None ->
                               (e11, c1,
                                 (FStar_Class_Monoid.mzero
                                    FStar_TypeChecker_Common.monoid_guard_t)))
                      | uu___7 ->
                          (e11, c1,
                            (FStar_Class_Monoid.mzero
                               FStar_TypeChecker_Common.monoid_guard_t)))
                 | uu___4 ->
                     (e11, c1,
                       (FStar_Class_Monoid.mzero
                          FStar_TypeChecker_Common.monoid_guard_t)) in
               (match uu___3 with
                | (e12, c11, g_c) ->
                    let uu___4 =
                      match ret_opt with
                      | FStar_Pervasives_Native.None ->
                          let uu___5 = FStar_TypeChecker_Env.expected_typ env in
                          (match uu___5 with
                           | FStar_Pervasives_Native.Some uu___6 ->
                               (env, FStar_Pervasives_Native.None, g1)
                           | FStar_Pervasives_Native.None ->
                               let uu___6 = FStar_Syntax_Util.type_u () in
                               (match uu___6 with
                                | (k, uu___7) ->
                                    let uu___8 =
                                      FStar_TypeChecker_Util.new_implicit_var
                                        "match result"
                                        e12.FStar_Syntax_Syntax.pos env k in
                                    (match uu___8 with
                                     | (res_t, uu___9, g) ->
                                         let uu___10 =
                                           FStar_TypeChecker_Env.set_expected_typ
                                             env res_t in
                                         let uu___11 =
                                           FStar_Class_Monoid.op_Plus_Plus
                                             FStar_TypeChecker_Common.monoid_guard_t
                                             g1 g in
                                         (uu___10,
                                           FStar_Pervasives_Native.None,
                                           uu___11))))
                      | FStar_Pervasives_Native.Some (b, asc) ->
                          ((let uu___6 =
                              let uu___7 =
                                FStar_TypeChecker_Util.is_pure_or_ghost_effect
                                  env c11.FStar_TypeChecker_Common.eff_name in
                              Prims.op_Negation uu___7 in
                            if uu___6
                            then
                              let uu___7 =
                                let uu___8 =
                                  let uu___9 =
                                    FStar_Class_Show.show
                                      FStar_Syntax_Print.showable_term e12 in
                                  let uu___10 =
                                    FStar_Ident.string_of_lid
                                      c11.FStar_TypeChecker_Common.eff_name in
                                  FStar_Compiler_Util.format2
                                    "For a match with returns annotation, the scrutinee should be pure/ghost, found %s with effect %s"
                                    uu___9 uu___10 in
                                (FStar_Errors_Codes.Fatal_UnexpectedEffect,
                                  uu___8) in
                              FStar_Errors.raise_error uu___7
                                e12.FStar_Syntax_Syntax.pos
                            else ());
                           (let uu___6 =
                              FStar_TypeChecker_Env.clear_expected_typ env in
                            match uu___6 with
                            | (env1, uu___7) ->
                                let uu___8 =
                                  let uu___9 =
                                    FStar_Syntax_Subst.open_ascription 
                                      [b] asc in
                                  match uu___9 with
                                  | (bs, asc1) ->
                                      let b1 = FStar_Compiler_List.hd bs in
                                      ({
                                         FStar_Syntax_Syntax.binder_bv =
                                           (let uu___10 =
                                              b1.FStar_Syntax_Syntax.binder_bv in
                                            {
                                              FStar_Syntax_Syntax.ppname =
                                                (uu___10.FStar_Syntax_Syntax.ppname);
                                              FStar_Syntax_Syntax.index =
                                                (uu___10.FStar_Syntax_Syntax.index);
                                              FStar_Syntax_Syntax.sort =
                                                (c11.FStar_TypeChecker_Common.res_typ)
                                            });
                                         FStar_Syntax_Syntax.binder_qual =
                                           (b1.FStar_Syntax_Syntax.binder_qual);
                                         FStar_Syntax_Syntax.binder_positivity
                                           =
                                           (b1.FStar_Syntax_Syntax.binder_positivity);
                                         FStar_Syntax_Syntax.binder_attrs =
                                           (b1.FStar_Syntax_Syntax.binder_attrs)
                                       }, asc1) in
                                (match uu___8 with
                                 | (b1, asc1) ->
                                     let env_asc =
                                       FStar_TypeChecker_Env.push_binders
                                         env1 [b1] in
                                     let uu___9 =
                                       match asc1 with
                                       | (FStar_Pervasives.Inl t,
                                          FStar_Pervasives_Native.None,
                                          use_eq) ->
                                           let uu___10 =
                                             FStar_Syntax_Util.type_u () in
                                           (match uu___10 with
                                            | (k, uu___11) ->
                                                let uu___12 =
                                                  tc_check_tot_or_gtot_term
                                                    env_asc t k "" in
                                                (match uu___12 with
                                                 | (t1, uu___13, g) ->
                                                     (((FStar_Pervasives.Inl
                                                          t1),
                                                        FStar_Pervasives_Native.None,
                                                        use_eq), g)))
                                       | (FStar_Pervasives.Inr c,
                                          FStar_Pervasives_Native.None,
                                          use_eq) ->
                                           let uu___10 = tc_comp env_asc c in
                                           (match uu___10 with
                                            | (c2, uu___11, g) ->
                                                (((FStar_Pervasives.Inr c2),
                                                   FStar_Pervasives_Native.None,
                                                   use_eq), g))
                                       | uu___10 ->
                                           let uu___11 =
                                             FStar_TypeChecker_Env.get_range
                                               env1 in
                                           FStar_Errors.raise_error
                                             (FStar_Errors_Codes.Fatal_UnexpectedTerm,
                                               "Tactic is not yet supported with match returns")
                                             uu___11 in
                                     (match uu___9 with
                                      | (asc2, g_asc) ->
                                          let uu___10 =
                                            let uu___11 =
                                              FStar_TypeChecker_Env.close_guard
                                                env_asc [b1] g_asc in
                                            FStar_Class_Monoid.op_Plus_Plus
                                              FStar_TypeChecker_Common.monoid_guard_t
                                              g1 uu___11 in
                                          (env1,
                                            (FStar_Pervasives_Native.Some
                                               (b1, asc2)), uu___10))))) in
                    (match uu___4 with
                     | (env_branches, ret_opt1, g11) ->
                         let guard_x =
                           FStar_Syntax_Syntax.new_bv
                             (FStar_Pervasives_Native.Some
                                (e12.FStar_Syntax_Syntax.pos))
                             c11.FStar_TypeChecker_Common.res_typ in
                         let t_eqns =
                           FStar_Compiler_List.map
                             (tc_eqn guard_x env_branches ret_opt1) eqns in
                         let uu___5 =
                           match ret_opt1 with
                           | FStar_Pervasives_Native.Some
                               (b, (FStar_Pervasives.Inr c, uu___6, uu___7))
                               ->
                               let c2 =
                                 FStar_Syntax_Subst.subst_comp
                                   [FStar_Syntax_Syntax.NT
                                      ((b.FStar_Syntax_Syntax.binder_bv),
                                        e12)] c in
                               let uu___8 =
                                 let uu___9 =
                                   FStar_Compiler_List.map
                                     (fun uu___10 ->
                                        match uu___10 with
                                        | (uu___11, f, uu___12, uu___13,
                                           uu___14, g, b1) -> (f, g, b1))
                                     t_eqns in
                                 FStar_Compiler_List.unzip3 uu___9 in
                               (match uu___8 with
                                | (fmls, gs, erasables) ->
                                    let uu___9 =
                                      FStar_TypeChecker_Util.get_neg_branch_conds
                                        fmls in
                                    (match uu___9 with
                                     | (neg_conds, exhaustiveness_cond) ->
                                         let g =
                                           let uu___10 =
                                             FStar_Compiler_List.map2
                                               FStar_TypeChecker_Common.weaken_guard_formula
                                               gs neg_conds in
                                           FStar_Class_Monoid.msum
                                             FStar_TypeChecker_Common.monoid_guard_t
                                             uu___10 in
                                         let g_exhaustiveness =
                                           let uu___10 =
                                             let uu___11 =
                                               let uu___12 =
                                                 FStar_TypeChecker_Env.get_range
                                                   env in
                                               let uu___13 =
                                                 FStar_Syntax_Util.mk_imp
                                                   exhaustiveness_cond
                                                   FStar_Syntax_Util.t_false in
                                               FStar_TypeChecker_Util.label
                                                 FStar_TypeChecker_Err.exhaustiveness_check
                                                 uu___12 uu___13 in
                                             FStar_TypeChecker_Common.NonTrivial
                                               uu___11 in
                                           FStar_TypeChecker_Env.guard_of_guard_formula
                                             uu___10 in
                                         let g2 =
                                           FStar_Class_Monoid.op_Plus_Plus
                                             FStar_TypeChecker_Common.monoid_guard_t
                                             g g_exhaustiveness in
                                         let g3 =
                                           let uu___10 =
                                             let uu___11 =
                                               env.FStar_TypeChecker_Env.universe_of
                                                 env
                                                 c11.FStar_TypeChecker_Common.res_typ in
                                             let uu___12 =
                                               FStar_Syntax_Syntax.bv_to_name
                                                 guard_x in
                                             FStar_Syntax_Util.mk_eq2 uu___11
                                               c11.FStar_TypeChecker_Common.res_typ
                                               uu___12 e12 in
                                           FStar_TypeChecker_Common.weaken_guard_formula
                                             g2 uu___10 in
                                         let g4 =
                                           let uu___10 =
                                             let uu___11 =
                                               FStar_Syntax_Syntax.mk_binder
                                                 guard_x in
                                             [uu___11] in
                                           FStar_TypeChecker_Env.close_guard
                                             env uu___10 g3 in
                                         let uu___10 =
                                           FStar_TypeChecker_Common.lcomp_of_comp
                                             c2 in
                                         let uu___11 =
                                           FStar_Compiler_List.fold_left
                                             (fun acc -> fun b1 -> acc || b1)
                                             false erasables in
                                         (uu___10, g4, uu___11)))
                           | uu___6 ->
                               let uu___7 =
                                 FStar_Compiler_List.fold_right
                                   (fun uu___8 ->
                                      fun uu___9 ->
                                        match (uu___8, uu___9) with
                                        | ((branch, f, eff_label, cflags, c,
                                            g, erasable_branch),
                                           (caccum, gaccum, erasable)) ->
                                            let uu___10 =
                                              let uu___11 =
                                                let uu___12 =
                                                  FStar_Compiler_Util.must
                                                    cflags in
                                                let uu___13 =
                                                  FStar_Compiler_Util.must c in
                                                (f, eff_label, uu___12,
                                                  uu___13) in
                                              uu___11 :: caccum in
                                            let uu___11 =
                                              FStar_Class_Monoid.op_Plus_Plus
                                                FStar_TypeChecker_Common.monoid_guard_t
                                                g gaccum in
                                            (uu___10, uu___11,
                                              (erasable || erasable_branch)))
                                   t_eqns
                                   ([],
                                     (FStar_Class_Monoid.mzero
                                        FStar_TypeChecker_Common.monoid_guard_t),
                                     false) in
                               (match uu___7 with
                                | (cases, g, erasable) ->
                                    (match ret_opt1 with
                                     | FStar_Pervasives_Native.None ->
                                         let res_t =
                                           let uu___8 =
                                             let uu___9 =
                                               FStar_TypeChecker_Env.expected_typ
                                                 env_branches in
                                             FStar_Compiler_Util.must uu___9 in
                                           FStar_Pervasives_Native.fst uu___8 in
                                         let uu___8 =
                                           FStar_TypeChecker_Util.bind_cases
                                             env res_t cases guard_x in
                                         (uu___8, g, erasable)
                                     | FStar_Pervasives_Native.Some
                                         (b,
                                          (FStar_Pervasives.Inl t, uu___8,
                                           uu___9))
                                         ->
                                         let t1 =
                                           FStar_Syntax_Subst.subst
                                             [FStar_Syntax_Syntax.NT
                                                ((b.FStar_Syntax_Syntax.binder_bv),
                                                  e12)] t in
                                         let cases1 =
                                           FStar_Compiler_List.map
                                             (fun uu___10 ->
                                                match uu___10 with
                                                | (f, eff_label, cflags, c)
                                                    ->
                                                    (f, eff_label, cflags,
                                                      ((fun b1 ->
                                                          let uu___11 = c b1 in
                                                          FStar_TypeChecker_Common.set_result_typ_lc
                                                            uu___11 t1))))
                                             cases in
                                         let uu___10 =
                                           FStar_TypeChecker_Util.bind_cases
                                             env t1 cases1 guard_x in
                                         (uu___10, g, erasable))) in
                         (match uu___5 with
                          | (c_branches, g_branches, erasable) ->
                              let cres =
                                FStar_TypeChecker_Util.bind
                                  e12.FStar_Syntax_Syntax.pos env
                                  (FStar_Pervasives_Native.Some e12) c11
                                  ((FStar_Pervasives_Native.Some guard_x),
                                    c_branches) in
                              let cres1 =
                                if erasable
                                then
                                  let e = FStar_Syntax_Util.exp_true_bool in
                                  let c =
                                    FStar_Syntax_Syntax.mk_GTotal
                                      FStar_Syntax_Util.t_bool in
                                  let uu___6 =
                                    FStar_TypeChecker_Common.lcomp_of_comp c in
                                  FStar_TypeChecker_Util.bind
                                    e.FStar_Syntax_Syntax.pos env
                                    (FStar_Pervasives_Native.Some e) uu___6
                                    (FStar_Pervasives_Native.None, cres)
                                else cres in
                              let e =
                                let ret_opt2 =
                                  match ret_opt1 with
                                  | FStar_Pervasives_Native.None ->
                                      FStar_Pervasives_Native.None
                                  | FStar_Pervasives_Native.Some (b, asc) ->
                                      let asc1 =
                                        FStar_Syntax_Subst.close_ascription
                                          [b] asc in
                                      let b1 =
                                        let uu___6 =
                                          FStar_Syntax_Subst.close_binders
                                            [b] in
                                        FStar_Compiler_List.hd uu___6 in
                                      let b2 =
                                        {
                                          FStar_Syntax_Syntax.binder_bv =
                                            (let uu___6 =
                                               b1.FStar_Syntax_Syntax.binder_bv in
                                             {
                                               FStar_Syntax_Syntax.ppname =
                                                 (uu___6.FStar_Syntax_Syntax.ppname);
                                               FStar_Syntax_Syntax.index =
                                                 (uu___6.FStar_Syntax_Syntax.index);
                                               FStar_Syntax_Syntax.sort =
                                                 FStar_Syntax_Syntax.tun
                                             });
                                          FStar_Syntax_Syntax.binder_qual =
                                            (b1.FStar_Syntax_Syntax.binder_qual);
                                          FStar_Syntax_Syntax.binder_positivity
                                            =
                                            (b1.FStar_Syntax_Syntax.binder_positivity);
                                          FStar_Syntax_Syntax.binder_attrs =
                                            (b1.FStar_Syntax_Syntax.binder_attrs)
                                        } in
                                      FStar_Pervasives_Native.Some (b2, asc1) in
                                let mk_match scrutinee =
                                  let branches =
                                    FStar_Compiler_List.map
                                      (fun uu___6 ->
                                         match uu___6 with
                                         | ((pat, wopt, br), uu___7,
                                            eff_label, uu___8, uu___9,
                                            uu___10, uu___11) ->
                                             let uu___12 =
                                               FStar_TypeChecker_Util.maybe_lift
                                                 env br eff_label
                                                 cres1.FStar_TypeChecker_Common.eff_name
                                                 cres1.FStar_TypeChecker_Common.res_typ in
                                             (pat, wopt, uu___12)) t_eqns in
                                  let e2 =
                                    let rc =
                                      {
                                        FStar_Syntax_Syntax.residual_effect =
                                          (cres1.FStar_TypeChecker_Common.eff_name);
                                        FStar_Syntax_Syntax.residual_typ =
                                          (FStar_Pervasives_Native.Some
                                             (cres1.FStar_TypeChecker_Common.res_typ));
                                        FStar_Syntax_Syntax.residual_flags =
                                          (cres1.FStar_TypeChecker_Common.cflags)
                                      } in
                                    FStar_Syntax_Syntax.mk
                                      (FStar_Syntax_Syntax.Tm_match
                                         {
                                           FStar_Syntax_Syntax.scrutinee =
                                             scrutinee;
                                           FStar_Syntax_Syntax.ret_opt =
                                             ret_opt2;
                                           FStar_Syntax_Syntax.brs = branches;
                                           FStar_Syntax_Syntax.rc_opt1 =
                                             (FStar_Pervasives_Native.Some rc)
                                         }) top.FStar_Syntax_Syntax.pos in
                                  let e3 =
                                    FStar_TypeChecker_Util.maybe_monadic env
                                      e2
                                      cres1.FStar_TypeChecker_Common.eff_name
                                      cres1.FStar_TypeChecker_Common.res_typ in
                                  match ret_opt2 with
                                  | FStar_Pervasives_Native.None ->
                                      FStar_Syntax_Syntax.mk
                                        (FStar_Syntax_Syntax.Tm_ascribed
                                           {
                                             FStar_Syntax_Syntax.tm = e3;
                                             FStar_Syntax_Syntax.asc =
                                               ((FStar_Pervasives.Inl
                                                   (cres1.FStar_TypeChecker_Common.res_typ)),
                                                 FStar_Pervasives_Native.None,
                                                 false);
                                             FStar_Syntax_Syntax.eff_opt =
                                               (FStar_Pervasives_Native.Some
                                                  (cres1.FStar_TypeChecker_Common.eff_name))
                                           }) e3.FStar_Syntax_Syntax.pos
                                  | uu___6 -> e3 in
                                let uu___6 =
                                  FStar_TypeChecker_Util.is_pure_or_ghost_effect
                                    env c11.FStar_TypeChecker_Common.eff_name in
                                if uu___6
                                then mk_match e12
                                else
                                  (let e_match =
                                     let uu___8 =
                                       FStar_Syntax_Syntax.bv_to_name guard_x in
                                     mk_match uu___8 in
                                   let lb =
                                     let uu___8 =
                                       FStar_TypeChecker_Env.norm_eff_name
                                         env
                                         c11.FStar_TypeChecker_Common.eff_name in
                                     FStar_Syntax_Util.mk_letbinding
                                       (FStar_Pervasives.Inl guard_x) []
                                       c11.FStar_TypeChecker_Common.res_typ
                                       uu___8 e12 []
                                       e12.FStar_Syntax_Syntax.pos in
                                   let e2 =
                                     let uu___8 =
                                       let uu___9 =
                                         let uu___10 =
                                           let uu___11 =
                                             let uu___12 =
                                               FStar_Syntax_Syntax.mk_binder
                                                 guard_x in
                                             [uu___12] in
                                           FStar_Syntax_Subst.close uu___11
                                             e_match in
                                         {
                                           FStar_Syntax_Syntax.lbs =
                                             (false, [lb]);
                                           FStar_Syntax_Syntax.body1 =
                                             uu___10
                                         } in
                                       FStar_Syntax_Syntax.Tm_let uu___9 in
                                     FStar_Syntax_Syntax.mk uu___8
                                       top.FStar_Syntax_Syntax.pos in
                                   FStar_TypeChecker_Util.maybe_monadic env
                                     e2
                                     cres1.FStar_TypeChecker_Common.eff_name
                                     cres1.FStar_TypeChecker_Common.res_typ) in
                              let uu___6 =
                                match ret_opt1 with
                                | FStar_Pervasives_Native.None ->
                                    (e, cres1,
                                      (FStar_Class_Monoid.mzero
                                         FStar_TypeChecker_Common.monoid_guard_t))
                                | uu___7 ->
                                    comp_check_expected_typ env e cres1 in
                              (match uu___6 with
                               | (e2, cres2, g_expected_type) ->
                                   ((let uu___8 =
                                       FStar_Compiler_Debug.extreme () in
                                     if uu___8
                                     then
                                       let uu___9 =
                                         FStar_Compiler_Range_Ops.string_of_range
                                           top.FStar_Syntax_Syntax.pos in
                                       let uu___10 =
                                         FStar_TypeChecker_Common.lcomp_to_string
                                           cres2 in
                                       FStar_Compiler_Util.print2
                                         "(%s) Typechecked Tm_match, comp type = %s\n"
                                         uu___9 uu___10
                                     else ());
                                    (let uu___8 =
                                       let uu___9 =
                                         let uu___10 =
                                           FStar_Class_Monoid.op_Plus_Plus
                                             FStar_TypeChecker_Common.monoid_guard_t
                                             g_c g11 in
                                         FStar_Class_Monoid.op_Plus_Plus
                                           FStar_TypeChecker_Common.monoid_guard_t
                                           uu___10 g_branches in
                                       FStar_Class_Monoid.op_Plus_Plus
                                         FStar_TypeChecker_Common.monoid_guard_t
                                         uu___9 g_expected_type in
                                     (e2, cres2, uu___8))))))))
      | uu___1 ->
          let uu___2 =
            let uu___3 = FStar_Syntax_Print.tag_of_term top in
            FStar_Compiler_Util.format1 "tc_match called on %s\n" uu___3 in
          FStar_Compiler_Effect.failwith uu___2
and (tc_synth :
  FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
    FStar_TypeChecker_Env.env ->
      (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax *
        FStar_Syntax_Syntax.arg_qualifier FStar_Pervasives_Native.option)
        Prims.list ->
        FStar_Compiler_Range_Type.range ->
          (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
            FStar_TypeChecker_Env.guard_t))
  =
  fun head ->
    fun env ->
      fun args ->
        fun rng ->
          let uu___ =
            match args with
            | (tau, FStar_Pervasives_Native.None)::[] ->
                (tau, FStar_Pervasives_Native.None)
            | (a, FStar_Pervasives_Native.Some
               { FStar_Syntax_Syntax.aqual_implicit = true;
                 FStar_Syntax_Syntax.aqual_attributes = uu___1;_})::(tau,
                                                                    FStar_Pervasives_Native.None)::[]
                -> (tau, (FStar_Pervasives_Native.Some a))
            | uu___1 ->
                FStar_Errors.raise_error
                  (FStar_Errors_Codes.Fatal_SynthByTacticError,
                    "synth_by_tactic: bad application") rng in
          match uu___ with
          | (tau, atyp) ->
              ((let uu___2 = FStar_Compiler_Effect.op_Bang dbg_Tac in
                if uu___2
                then
                  let uu___3 =
                    FStar_Class_Show.show FStar_Syntax_Print.showable_term
                      tau in
                  let uu___4 =
                    FStar_Class_Show.show
                      (FStar_Class_Show.show_option
                         FStar_Syntax_Print.showable_term) atyp in
                  FStar_Compiler_Util.print2
                    "Processing synth of %s at type %s\n" uu___3 uu___4
                else ());
               (let typ =
                  match atyp with
                  | FStar_Pervasives_Native.Some t -> t
                  | FStar_Pervasives_Native.None ->
                      let uu___2 = FStar_TypeChecker_Env.expected_typ env in
                      (match uu___2 with
                       | FStar_Pervasives_Native.Some (t, use_eq) ->
                           (if use_eq
                            then
                              (let uu___4 =
                                 let uu___5 =
                                   let uu___6 =
                                     FStar_Class_Show.show
                                       FStar_Syntax_Print.showable_term t in
                                   FStar_Compiler_Util.format1
                                     "Equality ascription in synth (%s) is not yet supported, please use subtyping"
                                     uu___6 in
                                 (FStar_Errors_Codes.Fatal_NotSupported,
                                   uu___5) in
                               FStar_Errors.raise_error uu___4
                                 t.FStar_Syntax_Syntax.pos)
                            else ();
                            t)
                       | FStar_Pervasives_Native.None ->
                           let uu___3 = FStar_TypeChecker_Env.get_range env in
                           FStar_Errors.raise_error
                             (FStar_Errors_Codes.Fatal_SynthByTacticError,
                               "synth_by_tactic: need a type annotation when no expected type is present")
                             uu___3) in
                let uu___2 =
                  let uu___3 =
                    let uu___4 =
                      let uu___5 = FStar_Syntax_Util.type_u () in
                      FStar_Pervasives_Native.fst uu___5 in
                    FStar_TypeChecker_Env.set_expected_typ env uu___4 in
                  tc_term uu___3 typ in
                match uu___2 with
                | (typ1, uu___3, g1) ->
                    (FStar_TypeChecker_Rel.force_trivial_guard env g1;
                     (let uu___5 =
                        tc_tactic FStar_Syntax_Syntax.t_unit
                          FStar_Syntax_Syntax.t_unit env tau in
                      match uu___5 with
                      | (tau1, uu___6, g2) ->
                          (FStar_TypeChecker_Rel.force_trivial_guard env g2;
                           (let t =
                              env.FStar_TypeChecker_Env.synth_hook env typ1
                                {
                                  FStar_Syntax_Syntax.n =
                                    (tau1.FStar_Syntax_Syntax.n);
                                  FStar_Syntax_Syntax.pos = rng;
                                  FStar_Syntax_Syntax.vars =
                                    (tau1.FStar_Syntax_Syntax.vars);
                                  FStar_Syntax_Syntax.hash_code =
                                    (tau1.FStar_Syntax_Syntax.hash_code)
                                } in
                            (let uu___9 =
                               FStar_Compiler_Effect.op_Bang dbg_Tac in
                             if uu___9
                             then
                               let uu___10 =
                                 FStar_Class_Show.show
                                   FStar_Syntax_Print.showable_term t in
                               FStar_Compiler_Util.print1 "Got %s\n" uu___10
                             else ());
                            FStar_TypeChecker_Util.check_uvars
                              tau1.FStar_Syntax_Syntax.pos t;
                            (let uu___10 =
                               let uu___11 =
                                 FStar_Syntax_Syntax.mk_Total typ1 in
                               FStar_TypeChecker_Common.lcomp_of_comp uu___11 in
                             (t, uu___10,
                               (FStar_Class_Monoid.mzero
                                  FStar_TypeChecker_Common.monoid_guard_t)))))))))
and (tc_tactic :
  FStar_Syntax_Syntax.typ ->
    FStar_Syntax_Syntax.typ ->
      FStar_TypeChecker_Env.env ->
        FStar_Syntax_Syntax.term ->
          (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
            FStar_TypeChecker_Env.guard_t))
  =
  fun a ->
    fun b ->
      fun env ->
        fun tau ->
          let env1 =
            {
              FStar_TypeChecker_Env.solver =
                (env.FStar_TypeChecker_Env.solver);
              FStar_TypeChecker_Env.range = (env.FStar_TypeChecker_Env.range);
              FStar_TypeChecker_Env.curmodule =
                (env.FStar_TypeChecker_Env.curmodule);
              FStar_TypeChecker_Env.gamma = (env.FStar_TypeChecker_Env.gamma);
              FStar_TypeChecker_Env.gamma_sig =
                (env.FStar_TypeChecker_Env.gamma_sig);
              FStar_TypeChecker_Env.gamma_cache =
                (env.FStar_TypeChecker_Env.gamma_cache);
              FStar_TypeChecker_Env.modules =
                (env.FStar_TypeChecker_Env.modules);
              FStar_TypeChecker_Env.expected_typ =
                (env.FStar_TypeChecker_Env.expected_typ);
              FStar_TypeChecker_Env.sigtab =
                (env.FStar_TypeChecker_Env.sigtab);
              FStar_TypeChecker_Env.attrtab =
                (env.FStar_TypeChecker_Env.attrtab);
              FStar_TypeChecker_Env.instantiate_imp =
                (env.FStar_TypeChecker_Env.instantiate_imp);
              FStar_TypeChecker_Env.effects =
                (env.FStar_TypeChecker_Env.effects);
              FStar_TypeChecker_Env.generalize =
                (env.FStar_TypeChecker_Env.generalize);
              FStar_TypeChecker_Env.letrecs =
                (env.FStar_TypeChecker_Env.letrecs);
              FStar_TypeChecker_Env.top_level =
                (env.FStar_TypeChecker_Env.top_level);
              FStar_TypeChecker_Env.check_uvars =
                (env.FStar_TypeChecker_Env.check_uvars);
              FStar_TypeChecker_Env.use_eq_strict =
                (env.FStar_TypeChecker_Env.use_eq_strict);
              FStar_TypeChecker_Env.is_iface =
                (env.FStar_TypeChecker_Env.is_iface);
              FStar_TypeChecker_Env.admit = (env.FStar_TypeChecker_Env.admit);
              FStar_TypeChecker_Env.lax_universes =
                (env.FStar_TypeChecker_Env.lax_universes);
              FStar_TypeChecker_Env.phase1 =
                (env.FStar_TypeChecker_Env.phase1);
              FStar_TypeChecker_Env.failhard = true;
              FStar_TypeChecker_Env.flychecking =
                (env.FStar_TypeChecker_Env.flychecking);
              FStar_TypeChecker_Env.uvar_subtyping =
                (env.FStar_TypeChecker_Env.uvar_subtyping);
              FStar_TypeChecker_Env.intactics =
                (env.FStar_TypeChecker_Env.intactics);
              FStar_TypeChecker_Env.nocoerce =
                (env.FStar_TypeChecker_Env.nocoerce);
              FStar_TypeChecker_Env.tc_term =
                (env.FStar_TypeChecker_Env.tc_term);
              FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                (env.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
              FStar_TypeChecker_Env.universe_of =
                (env.FStar_TypeChecker_Env.universe_of);
              FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term =
                (env.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
              FStar_TypeChecker_Env.teq_nosmt_force =
                (env.FStar_TypeChecker_Env.teq_nosmt_force);
              FStar_TypeChecker_Env.subtype_nosmt_force =
                (env.FStar_TypeChecker_Env.subtype_nosmt_force);
              FStar_TypeChecker_Env.qtbl_name_and_index =
                (env.FStar_TypeChecker_Env.qtbl_name_and_index);
              FStar_TypeChecker_Env.normalized_eff_names =
                (env.FStar_TypeChecker_Env.normalized_eff_names);
              FStar_TypeChecker_Env.fv_delta_depths =
                (env.FStar_TypeChecker_Env.fv_delta_depths);
              FStar_TypeChecker_Env.proof_ns =
                (env.FStar_TypeChecker_Env.proof_ns);
              FStar_TypeChecker_Env.synth_hook =
                (env.FStar_TypeChecker_Env.synth_hook);
              FStar_TypeChecker_Env.try_solve_implicits_hook =
                (env.FStar_TypeChecker_Env.try_solve_implicits_hook);
              FStar_TypeChecker_Env.splice =
                (env.FStar_TypeChecker_Env.splice);
              FStar_TypeChecker_Env.mpreprocess =
                (env.FStar_TypeChecker_Env.mpreprocess);
              FStar_TypeChecker_Env.postprocess =
                (env.FStar_TypeChecker_Env.postprocess);
              FStar_TypeChecker_Env.identifier_info =
                (env.FStar_TypeChecker_Env.identifier_info);
              FStar_TypeChecker_Env.tc_hooks =
                (env.FStar_TypeChecker_Env.tc_hooks);
              FStar_TypeChecker_Env.dsenv = (env.FStar_TypeChecker_Env.dsenv);
              FStar_TypeChecker_Env.nbe = (env.FStar_TypeChecker_Env.nbe);
              FStar_TypeChecker_Env.strict_args_tab =
                (env.FStar_TypeChecker_Env.strict_args_tab);
              FStar_TypeChecker_Env.erasable_types_tab =
                (env.FStar_TypeChecker_Env.erasable_types_tab);
              FStar_TypeChecker_Env.enable_defer_to_tac =
                (env.FStar_TypeChecker_Env.enable_defer_to_tac);
              FStar_TypeChecker_Env.unif_allow_ref_guards =
                (env.FStar_TypeChecker_Env.unif_allow_ref_guards);
              FStar_TypeChecker_Env.erase_erasable_args =
                (env.FStar_TypeChecker_Env.erase_erasable_args);
              FStar_TypeChecker_Env.core_check =
                (env.FStar_TypeChecker_Env.core_check);
              FStar_TypeChecker_Env.missing_decl =
                (env.FStar_TypeChecker_Env.missing_decl)
            } in
          let uu___ = FStar_Syntax_Syntax.t_tac_of a b in
          tc_check_tot_or_gtot_term env1 tau uu___ ""
and (check_instantiated_fvar :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.var ->
      FStar_Syntax_Syntax.fv_qual FStar_Pervasives_Native.option ->
        FStar_Syntax_Syntax.term ->
          FStar_Syntax_Syntax.typ ->
            (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
              FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun v ->
      fun q ->
        fun e ->
          fun t0 ->
            let is_data_ctor uu___ =
              match uu___ with
              | FStar_Pervasives_Native.Some (FStar_Syntax_Syntax.Data_ctor)
                  -> true
              | FStar_Pervasives_Native.Some (FStar_Syntax_Syntax.Record_ctor
                  uu___1) -> true
              | uu___1 -> false in
            (let uu___1 =
               (is_data_ctor q) &&
                 (let uu___2 =
                    FStar_TypeChecker_Env.is_datacon env
                      v.FStar_Syntax_Syntax.v in
                  Prims.op_Negation uu___2) in
             if uu___1
             then
               let uu___2 =
                 let uu___3 =
                   let uu___4 =
                     FStar_Ident.string_of_lid v.FStar_Syntax_Syntax.v in
                   FStar_Compiler_Util.format1
                     "Expected a data constructor; got %s" uu___4 in
                 (FStar_Errors_Codes.Fatal_MissingDataConstructor, uu___3) in
               let uu___3 = FStar_TypeChecker_Env.get_range env in
               FStar_Errors.raise_error uu___2 uu___3
             else ());
            (let t = FStar_Syntax_Util.remove_inacc t0 in
             let uu___1 = FStar_TypeChecker_Util.maybe_instantiate env e t in
             match uu___1 with
             | (e1, t1, implicits) ->
                 let tc =
                   let uu___2 = FStar_TypeChecker_Env.should_verify env in
                   if uu___2
                   then FStar_Pervasives.Inl t1
                   else
                     (let uu___4 =
                        let uu___5 = FStar_Syntax_Syntax.mk_Total t1 in
                        FStar_TypeChecker_Common.lcomp_of_comp uu___5 in
                      FStar_Pervasives.Inr uu___4) in
                 value_check_expected_typ env e1 tc implicits)
and (tc_value :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
        FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      let env1 =
        FStar_TypeChecker_Env.set_range env e.FStar_Syntax_Syntax.pos in
      let top = FStar_Syntax_Subst.compress e in
      match top.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Tm_bvar x ->
          let uu___ =
            let uu___1 =
              let uu___2 =
                FStar_Class_Show.show FStar_Syntax_Print.showable_term top in
              FStar_Compiler_Util.format1
                "Violation of locally nameless convention: %s" uu___2 in
            (FStar_Errors_Codes.Error_IllScopedTerm, uu___1) in
          FStar_Errors.raise_error uu___ top.FStar_Syntax_Syntax.pos
      | FStar_Syntax_Syntax.Tm_uvar (u, s) ->
          let uu___ =
            let uu___1 =
              let uu___2 = FStar_Syntax_Util.ctx_uvar_typ u in
              FStar_Syntax_Subst.subst' s uu___2 in
            FStar_Pervasives.Inl uu___1 in
          value_check_expected_typ env1 e uu___
            (FStar_Class_Monoid.mzero FStar_TypeChecker_Common.monoid_guard_t)
      | FStar_Syntax_Syntax.Tm_unknown ->
          let r = FStar_TypeChecker_Env.get_range env1 in
          let uu___ =
            let uu___1 = FStar_TypeChecker_Env.expected_typ env1 in
            match uu___1 with
            | FStar_Pervasives_Native.None ->
                let uu___2 = FStar_Syntax_Util.type_u () in
                (match uu___2 with
                 | (k, u) ->
                     FStar_TypeChecker_Util.new_implicit_var
                       "type of user-provided implicit term" r env1 k)
            | FStar_Pervasives_Native.Some (t, use_eq) ->
                (if use_eq
                 then
                   (let uu___3 =
                      let uu___4 =
                        let uu___5 =
                          FStar_Class_Show.show
                            FStar_Syntax_Print.showable_term t in
                        FStar_Compiler_Util.format1
                          "Equality ascription as an expected type for unk (:%s) is not yet supported, please use subtyping"
                          uu___5 in
                      (FStar_Errors_Codes.Fatal_NotSupported, uu___4) in
                    FStar_Errors.raise_error uu___3 e.FStar_Syntax_Syntax.pos)
                 else ();
                 (t, [],
                   (FStar_Class_Monoid.mzero
                      FStar_TypeChecker_Common.monoid_guard_t))) in
          (match uu___ with
           | (t, uu___1, g0) ->
               let uu___2 =
                 let uu___3 =
                   let uu___4 = FStar_Compiler_Range_Ops.string_of_range r in
                   Prims.strcat "user-provided implicit term at " uu___4 in
                 FStar_TypeChecker_Util.new_implicit_var uu___3 r env1 t in
               (match uu___2 with
                | (e1, uu___3, g1) ->
                    let uu___4 =
                      let uu___5 = FStar_Syntax_Syntax.mk_Total t in
                      FStar_TypeChecker_Common.lcomp_of_comp uu___5 in
                    let uu___5 =
                      FStar_Class_Monoid.op_Plus_Plus
                        FStar_TypeChecker_Common.monoid_guard_t g0 g1 in
                    (e1, uu___4, uu___5)))
      | FStar_Syntax_Syntax.Tm_name x ->
          let uu___ = FStar_TypeChecker_Env.lookup_bv env1 x in
          (match uu___ with
           | (t, rng) ->
               let x1 =
                 FStar_Syntax_Syntax.set_range_of_bv
                   {
                     FStar_Syntax_Syntax.ppname =
                       (x.FStar_Syntax_Syntax.ppname);
                     FStar_Syntax_Syntax.index =
                       (x.FStar_Syntax_Syntax.index);
                     FStar_Syntax_Syntax.sort = t
                   } rng in
               (FStar_TypeChecker_Env.insert_bv_info env1 x1 t;
                (let e1 = FStar_Syntax_Syntax.bv_to_name x1 in
                 let uu___2 =
                   FStar_TypeChecker_Util.maybe_instantiate env1 e1 t in
                 match uu___2 with
                 | (e2, t1, implicits) ->
                     let tc =
                       let uu___3 = FStar_TypeChecker_Env.should_verify env1 in
                       if uu___3
                       then FStar_Pervasives.Inl t1
                       else
                         (let uu___5 =
                            let uu___6 = FStar_Syntax_Syntax.mk_Total t1 in
                            FStar_TypeChecker_Common.lcomp_of_comp uu___6 in
                          FStar_Pervasives.Inr uu___5) in
                     value_check_expected_typ env1 e2 tc implicits)))
      | FStar_Syntax_Syntax.Tm_uinst
          ({ FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar fv;
             FStar_Syntax_Syntax.pos = uu___;
             FStar_Syntax_Syntax.vars = uu___1;
             FStar_Syntax_Syntax.hash_code = uu___2;_},
           uu___3)
          when
          (FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.synth_lid) &&
            (Prims.op_Negation env1.FStar_TypeChecker_Env.phase1)
          ->
          let uu___4 = FStar_TypeChecker_Env.get_range env1 in
          FStar_Errors.raise_error
            (FStar_Errors_Codes.Fatal_BadlyInstantiatedSynthByTactic,
              "Badly instantiated synth_by_tactic") uu___4
      | FStar_Syntax_Syntax.Tm_fvar fv when
          (FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.synth_lid) &&
            (Prims.op_Negation env1.FStar_TypeChecker_Env.phase1)
          ->
          let uu___ = FStar_TypeChecker_Env.get_range env1 in
          FStar_Errors.raise_error
            (FStar_Errors_Codes.Fatal_BadlyInstantiatedSynthByTactic,
              "Badly instantiated synth_by_tactic") uu___
      | FStar_Syntax_Syntax.Tm_uinst
          ({ FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar fv;
             FStar_Syntax_Syntax.pos = uu___;
             FStar_Syntax_Syntax.vars = uu___1;
             FStar_Syntax_Syntax.hash_code = uu___2;_},
           us)
          ->
          let us1 = FStar_Compiler_List.map (tc_universe env1) us in
          let uu___3 =
            FStar_TypeChecker_Env.lookup_lid env1
              (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
          (match uu___3 with
           | ((us', t), range) ->
               let fv1 = FStar_Syntax_Syntax.set_range_of_fv fv range in
               (maybe_warn_on_use env1 fv1;
                if
                  (FStar_Compiler_List.length us1) <>
                    (FStar_Compiler_List.length us')
                then
                  (let uu___6 =
                     let uu___7 =
                       let uu___8 =
                         FStar_Class_Show.show FStar_Syntax_Print.showable_fv
                           fv1 in
                       let uu___9 =
                         FStar_Compiler_Util.string_of_int
                           (FStar_Compiler_List.length us1) in
                       let uu___10 =
                         FStar_Compiler_Util.string_of_int
                           (FStar_Compiler_List.length us') in
                       FStar_Compiler_Util.format3
                         "Unexpected number of universe instantiations for \"%s\" (%s vs %s)"
                         uu___8 uu___9 uu___10 in
                     (FStar_Errors_Codes.Fatal_UnexpectedNumberOfUniverse,
                       uu___7) in
                   let uu___7 = FStar_TypeChecker_Env.get_range env1 in
                   FStar_Errors.raise_error uu___6 uu___7)
                else ();
                FStar_Compiler_List.iter2
                  (fun ul ->
                     fun ur ->
                       match (ul, ur) with
                       | (FStar_Syntax_Syntax.U_unif u'', uu___7) ->
                           FStar_Syntax_Unionfind.univ_change u'' ur
                       | (FStar_Syntax_Syntax.U_name n1,
                          FStar_Syntax_Syntax.U_name n2) when
                           FStar_Ident.ident_equals n1 n2 -> ()
                       | uu___7 ->
                           let uu___8 =
                             let uu___9 =
                               let uu___10 =
                                 FStar_Class_Show.show
                                   FStar_Syntax_Print.showable_fv fv1 in
                               let uu___11 =
                                 FStar_Class_Show.show
                                   FStar_Syntax_Print.showable_univ ul in
                               let uu___12 =
                                 FStar_Class_Show.show
                                   FStar_Syntax_Print.showable_univ ur in
                               FStar_Compiler_Util.format3
                                 "Incompatible universe application for %s, expected %s got %s\n"
                                 uu___10 uu___11 uu___12 in
                             (FStar_Errors_Codes.Fatal_IncompatibleUniverse,
                               uu___9) in
                           let uu___9 = FStar_TypeChecker_Env.get_range env1 in
                           FStar_Errors.raise_error uu___8 uu___9) us' us1;
                FStar_TypeChecker_Env.insert_fv_info env1 fv1 t;
                (let e1 =
                   let uu___8 =
                     FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_fvar fv1)
                       e.FStar_Syntax_Syntax.pos in
                   FStar_Syntax_Syntax.mk_Tm_uinst uu___8 us1 in
                 check_instantiated_fvar env1 fv1.FStar_Syntax_Syntax.fv_name
                   fv1.FStar_Syntax_Syntax.fv_qual e1 t)))
      | FStar_Syntax_Syntax.Tm_uinst (uu___, us) ->
          let uu___1 = FStar_TypeChecker_Env.get_range env1 in
          FStar_Errors.raise_error
            (FStar_Errors_Codes.Fatal_UnexpectedNumberOfUniverse,
              "Universe applications are only allowed on top-level identifiers")
            uu___1
      | FStar_Syntax_Syntax.Tm_fvar fv ->
          let uu___ =
            FStar_TypeChecker_Env.lookup_lid env1
              (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
          (match uu___ with
           | ((us, t), range) ->
               let fv1 = FStar_Syntax_Syntax.set_range_of_fv fv range in
               (maybe_warn_on_use env1 fv1;
                (let uu___3 = FStar_Compiler_Effect.op_Bang dbg_Range in
                 if uu___3
                 then
                   let uu___4 =
                     let uu___5 = FStar_Syntax_Syntax.lid_of_fv fv1 in
                     FStar_Class_Show.show FStar_Ident.showable_lident uu___5 in
                   let uu___5 =
                     FStar_Compiler_Range_Ops.string_of_range
                       e.FStar_Syntax_Syntax.pos in
                   let uu___6 =
                     FStar_Compiler_Range_Ops.string_of_range range in
                   let uu___7 =
                     FStar_Compiler_Range_Ops.string_of_use_range range in
                   let uu___8 =
                     FStar_Class_Show.show FStar_Syntax_Print.showable_term t in
                   FStar_Compiler_Util.print5
                     "Lookup up fvar %s at location %s (lid range = defined at %s, used at %s); got universes type %s\n"
                     uu___4 uu___5 uu___6 uu___7 uu___8
                 else ());
                FStar_TypeChecker_Env.insert_fv_info env1 fv1 t;
                (let e1 =
                   let uu___4 =
                     FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_fvar fv1)
                       e.FStar_Syntax_Syntax.pos in
                   FStar_Syntax_Syntax.mk_Tm_uinst uu___4 us in
                 check_instantiated_fvar env1 fv1.FStar_Syntax_Syntax.fv_name
                   fv1.FStar_Syntax_Syntax.fv_qual e1 t)))
      | FStar_Syntax_Syntax.Tm_constant c ->
          let t = tc_constant env1 top.FStar_Syntax_Syntax.pos c in
          let e1 =
            FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_constant c)
              e.FStar_Syntax_Syntax.pos in
          value_check_expected_typ env1 e1 (FStar_Pervasives.Inl t)
            (FStar_Class_Monoid.mzero FStar_TypeChecker_Common.monoid_guard_t)
      | FStar_Syntax_Syntax.Tm_arrow
          { FStar_Syntax_Syntax.bs1 = bs; FStar_Syntax_Syntax.comp = c;_} ->
          let uu___ = FStar_Syntax_Subst.open_comp bs c in
          (match uu___ with
           | (bs1, c1) ->
               let env0 = env1 in
               let uu___1 = FStar_TypeChecker_Env.clear_expected_typ env1 in
               (match uu___1 with
                | (env2, uu___2) ->
                    let uu___3 = tc_binders env2 bs1 in
                    (match uu___3 with
                     | (bs2, env3, g, us) ->
                         let uu___4 = tc_comp env3 c1 in
                         (match uu___4 with
                          | (c2, uc, f) ->
                              let e1 =
                                let uu___5 = FStar_Syntax_Util.arrow bs2 c2 in
                                {
                                  FStar_Syntax_Syntax.n =
                                    (uu___5.FStar_Syntax_Syntax.n);
                                  FStar_Syntax_Syntax.pos =
                                    (top.FStar_Syntax_Syntax.pos);
                                  FStar_Syntax_Syntax.vars =
                                    (uu___5.FStar_Syntax_Syntax.vars);
                                  FStar_Syntax_Syntax.hash_code =
                                    (uu___5.FStar_Syntax_Syntax.hash_code)
                                } in
                              (if
                                 Prims.op_Negation
                                   env3.FStar_TypeChecker_Env.phase1
                               then check_smt_pat env3 e1 bs2 c2
                               else ();
                               (let u = FStar_Syntax_Syntax.U_max (uc :: us) in
                                let t =
                                  FStar_Syntax_Syntax.mk
                                    (FStar_Syntax_Syntax.Tm_type u)
                                    top.FStar_Syntax_Syntax.pos in
                                let g1 =
                                  let uu___6 =
                                    FStar_TypeChecker_Env.close_guard_univs
                                      us bs2 f in
                                  FStar_Class_Monoid.op_Plus_Plus
                                    FStar_TypeChecker_Common.monoid_guard_t g
                                    uu___6 in
                                let g2 =
                                  FStar_TypeChecker_Util.close_guard_implicits
                                    env3 false bs2 g1 in
                                value_check_expected_typ env0 e1
                                  (FStar_Pervasives.Inl t) g2))))))
      | FStar_Syntax_Syntax.Tm_type u ->
          let u1 = tc_universe env1 u in
          let t =
            FStar_Syntax_Syntax.mk
              (FStar_Syntax_Syntax.Tm_type (FStar_Syntax_Syntax.U_succ u1))
              top.FStar_Syntax_Syntax.pos in
          let e1 =
            FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_type u1)
              top.FStar_Syntax_Syntax.pos in
          value_check_expected_typ env1 e1 (FStar_Pervasives.Inl t)
            (FStar_Class_Monoid.mzero FStar_TypeChecker_Common.monoid_guard_t)
      | FStar_Syntax_Syntax.Tm_refine
          { FStar_Syntax_Syntax.b = x; FStar_Syntax_Syntax.phi = phi;_} ->
          let uu___ =
            let uu___1 =
              let uu___2 = FStar_Syntax_Syntax.mk_binder x in [uu___2] in
            FStar_Syntax_Subst.open_term uu___1 phi in
          (match uu___ with
           | (x1, phi1) ->
               let env0 = env1 in
               let uu___1 = FStar_TypeChecker_Env.clear_expected_typ env1 in
               (match uu___1 with
                | (env2, uu___2) ->
                    let uu___3 =
                      let uu___4 = FStar_Compiler_List.hd x1 in
                      tc_binder env2 uu___4 in
                    (match uu___3 with
                     | (x2, env3, f1, u) ->
                         ((let uu___5 = FStar_Compiler_Debug.high () in
                           if uu___5
                           then
                             let uu___6 =
                               FStar_Compiler_Range_Ops.string_of_range
                                 top.FStar_Syntax_Syntax.pos in
                             let uu___7 =
                               FStar_Class_Show.show
                                 FStar_Syntax_Print.showable_term phi1 in
                             let uu___8 =
                               FStar_Class_Show.show
                                 FStar_Syntax_Print.showable_bv
                                 x2.FStar_Syntax_Syntax.binder_bv in
                             FStar_Compiler_Util.print3
                               "(%s) Checking refinement formula %s; binder is %s\n"
                               uu___6 uu___7 uu___8
                           else ());
                          (let uu___5 = FStar_Syntax_Util.type_u () in
                           match uu___5 with
                           | (t_phi, uu___6) ->
                               let uu___7 =
                                 tc_check_tot_or_gtot_term env3 phi1 t_phi
                                   "refinement formula must be pure or ghost" in
                               (match uu___7 with
                                | (phi2, uu___8, f2) ->
                                    let e1 =
                                      let uu___9 =
                                        FStar_Syntax_Util.refine
                                          x2.FStar_Syntax_Syntax.binder_bv
                                          phi2 in
                                      {
                                        FStar_Syntax_Syntax.n =
                                          (uu___9.FStar_Syntax_Syntax.n);
                                        FStar_Syntax_Syntax.pos =
                                          (top.FStar_Syntax_Syntax.pos);
                                        FStar_Syntax_Syntax.vars =
                                          (uu___9.FStar_Syntax_Syntax.vars);
                                        FStar_Syntax_Syntax.hash_code =
                                          (uu___9.FStar_Syntax_Syntax.hash_code)
                                      } in
                                    let t =
                                      FStar_Syntax_Syntax.mk
                                        (FStar_Syntax_Syntax.Tm_type u)
                                        top.FStar_Syntax_Syntax.pos in
                                    let g =
                                      let uu___9 =
                                        FStar_TypeChecker_Env.close_guard_univs
                                          [u] [x2] f2 in
                                      FStar_Class_Monoid.op_Plus_Plus
                                        FStar_TypeChecker_Common.monoid_guard_t
                                        f1 uu___9 in
                                    let g1 =
                                      FStar_TypeChecker_Util.close_guard_implicits
                                        env3 false [x2] g in
                                    value_check_expected_typ env0 e1
                                      (FStar_Pervasives.Inl t) g1))))))
      | FStar_Syntax_Syntax.Tm_abs
          { FStar_Syntax_Syntax.bs = bs; FStar_Syntax_Syntax.body = body;
            FStar_Syntax_Syntax.rc_opt = uu___;_}
          ->
          let bs1 = FStar_TypeChecker_Util.maybe_add_implicit_binders env1 bs in
          ((let uu___2 = FStar_Compiler_Debug.medium () in
            if uu___2
            then
              let uu___3 =
                FStar_Class_Show.show FStar_Syntax_Print.showable_term
                  {
                    FStar_Syntax_Syntax.n =
                      (FStar_Syntax_Syntax.Tm_abs
                         {
                           FStar_Syntax_Syntax.bs = bs1;
                           FStar_Syntax_Syntax.body = body;
                           FStar_Syntax_Syntax.rc_opt =
                             FStar_Pervasives_Native.None
                         });
                    FStar_Syntax_Syntax.pos = (top.FStar_Syntax_Syntax.pos);
                    FStar_Syntax_Syntax.vars = (top.FStar_Syntax_Syntax.vars);
                    FStar_Syntax_Syntax.hash_code =
                      (top.FStar_Syntax_Syntax.hash_code)
                  } in
              FStar_Compiler_Util.print1 "Abstraction is: %s\n" uu___3
            else ());
           (let uu___2 = FStar_Syntax_Subst.open_term bs1 body in
            match uu___2 with | (bs2, body1) -> tc_abs env1 top bs2 body1))
      | uu___ ->
          let uu___1 =
            let uu___2 =
              FStar_Class_Show.show FStar_Syntax_Print.showable_term top in
            let uu___3 = FStar_Syntax_Print.tag_of_term top in
            FStar_Compiler_Util.format2 "Unexpected value: %s (%s)" uu___2
              uu___3 in
          FStar_Compiler_Effect.failwith uu___1
and (tc_constant :
  FStar_TypeChecker_Env.env ->
    FStar_Compiler_Range_Type.range ->
      FStar_Const.sconst -> FStar_Syntax_Syntax.typ)
  =
  fun env ->
    fun r ->
      fun c ->
        let res =
          match c with
          | FStar_Const.Const_unit -> FStar_Syntax_Syntax.t_unit
          | FStar_Const.Const_bool uu___ -> FStar_Syntax_Util.t_bool
          | FStar_Const.Const_int (uu___, FStar_Pervasives_Native.None) ->
              FStar_Syntax_Syntax.t_int
          | FStar_Const.Const_int (uu___, FStar_Pervasives_Native.Some msize)
              ->
              FStar_Syntax_Syntax.tconst
                (match msize with
                 | (FStar_Const.Signed, FStar_Const.Int8) ->
                     FStar_Parser_Const.int8_lid
                 | (FStar_Const.Signed, FStar_Const.Int16) ->
                     FStar_Parser_Const.int16_lid
                 | (FStar_Const.Signed, FStar_Const.Int32) ->
                     FStar_Parser_Const.int32_lid
                 | (FStar_Const.Signed, FStar_Const.Int64) ->
                     FStar_Parser_Const.int64_lid
                 | (FStar_Const.Unsigned, FStar_Const.Int8) ->
                     FStar_Parser_Const.uint8_lid
                 | (FStar_Const.Unsigned, FStar_Const.Int16) ->
                     FStar_Parser_Const.uint16_lid
                 | (FStar_Const.Unsigned, FStar_Const.Int32) ->
                     FStar_Parser_Const.uint32_lid
                 | (FStar_Const.Unsigned, FStar_Const.Int64) ->
                     FStar_Parser_Const.uint64_lid
                 | (FStar_Const.Unsigned, FStar_Const.Sizet) ->
                     FStar_Parser_Const.sizet_lid)
          | FStar_Const.Const_string uu___ -> FStar_Syntax_Syntax.t_string
          | FStar_Const.Const_real uu___ -> FStar_Syntax_Syntax.t_real
          | FStar_Const.Const_char uu___ ->
              let uu___1 =
                FStar_Syntax_DsEnv.try_lookup_lid
                  env.FStar_TypeChecker_Env.dsenv FStar_Parser_Const.char_lid in
              FStar_Compiler_Util.must uu___1
          | FStar_Const.Const_effect -> FStar_Syntax_Util.ktype0
          | FStar_Const.Const_range uu___ -> FStar_Syntax_Syntax.t_range
          | FStar_Const.Const_range_of ->
              let uu___ =
                let uu___1 =
                  let uu___2 = FStar_Parser_Const.const_to_string c in
                  FStar_Compiler_Util.format1
                    "Ill-typed %s: this constant must be fully applied"
                    uu___2 in
                (FStar_Errors_Codes.Fatal_IllTyped, uu___1) in
              FStar_Errors.raise_error uu___ r
          | FStar_Const.Const_set_range_of ->
              let uu___ =
                let uu___1 =
                  let uu___2 = FStar_Parser_Const.const_to_string c in
                  FStar_Compiler_Util.format1
                    "Ill-typed %s: this constant must be fully applied"
                    uu___2 in
                (FStar_Errors_Codes.Fatal_IllTyped, uu___1) in
              FStar_Errors.raise_error uu___ r
          | FStar_Const.Const_reify uu___ ->
              let uu___1 =
                let uu___2 =
                  let uu___3 = FStar_Parser_Const.const_to_string c in
                  FStar_Compiler_Util.format1
                    "Ill-typed %s: this constant must be fully applied"
                    uu___3 in
                (FStar_Errors_Codes.Fatal_IllTyped, uu___2) in
              FStar_Errors.raise_error uu___1 r
          | FStar_Const.Const_reflect uu___ ->
              let uu___1 =
                let uu___2 =
                  let uu___3 = FStar_Parser_Const.const_to_string c in
                  FStar_Compiler_Util.format1
                    "Ill-typed %s: this constant must be fully applied"
                    uu___3 in
                (FStar_Errors_Codes.Fatal_IllTyped, uu___2) in
              FStar_Errors.raise_error uu___1 r
          | uu___ ->
              FStar_Errors.raise_error
                (FStar_Errors_Codes.Fatal_UnsupportedConstant,
                  "Unsupported constant") r in
        FStar_Syntax_Subst.set_use_range r res
and (tc_comp :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.comp ->
      (FStar_Syntax_Syntax.comp * FStar_Syntax_Syntax.universe *
        FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun c ->
      let c0 = c in
      match c.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Total t ->
          let uu___ = FStar_Syntax_Util.type_u () in
          (match uu___ with
           | (k, u) ->
               let uu___1 = tc_check_tot_or_gtot_term env t k "" in
               (match uu___1 with
                | (t1, uu___2, g) ->
                    let uu___3 = FStar_Syntax_Syntax.mk_Total t1 in
                    (uu___3, u, g)))
      | FStar_Syntax_Syntax.GTotal t ->
          let uu___ = FStar_Syntax_Util.type_u () in
          (match uu___ with
           | (k, u) ->
               let uu___1 = tc_check_tot_or_gtot_term env t k "" in
               (match uu___1 with
                | (t1, uu___2, g) ->
                    let uu___3 = FStar_Syntax_Syntax.mk_GTotal t1 in
                    (uu___3, u, g)))
      | FStar_Syntax_Syntax.Comp c1 ->
          let head =
            FStar_Syntax_Syntax.fvar c1.FStar_Syntax_Syntax.effect_name
              FStar_Pervasives_Native.None in
          let head1 =
            match c1.FStar_Syntax_Syntax.comp_univs with
            | [] -> head
            | us ->
                FStar_Syntax_Syntax.mk
                  (FStar_Syntax_Syntax.Tm_uinst (head, us))
                  c0.FStar_Syntax_Syntax.pos in
          let tc =
            let uu___ =
              let uu___1 =
                FStar_Syntax_Syntax.as_arg c1.FStar_Syntax_Syntax.result_typ in
              uu___1 :: (c1.FStar_Syntax_Syntax.effect_args) in
            FStar_Syntax_Syntax.mk_Tm_app head1 uu___
              (c1.FStar_Syntax_Syntax.result_typ).FStar_Syntax_Syntax.pos in
          let uu___ =
            tc_check_tot_or_gtot_term
              {
                FStar_TypeChecker_Env.solver =
                  (env.FStar_TypeChecker_Env.solver);
                FStar_TypeChecker_Env.range =
                  (env.FStar_TypeChecker_Env.range);
                FStar_TypeChecker_Env.curmodule =
                  (env.FStar_TypeChecker_Env.curmodule);
                FStar_TypeChecker_Env.gamma =
                  (env.FStar_TypeChecker_Env.gamma);
                FStar_TypeChecker_Env.gamma_sig =
                  (env.FStar_TypeChecker_Env.gamma_sig);
                FStar_TypeChecker_Env.gamma_cache =
                  (env.FStar_TypeChecker_Env.gamma_cache);
                FStar_TypeChecker_Env.modules =
                  (env.FStar_TypeChecker_Env.modules);
                FStar_TypeChecker_Env.expected_typ =
                  (env.FStar_TypeChecker_Env.expected_typ);
                FStar_TypeChecker_Env.sigtab =
                  (env.FStar_TypeChecker_Env.sigtab);
                FStar_TypeChecker_Env.attrtab =
                  (env.FStar_TypeChecker_Env.attrtab);
                FStar_TypeChecker_Env.instantiate_imp =
                  (env.FStar_TypeChecker_Env.instantiate_imp);
                FStar_TypeChecker_Env.effects =
                  (env.FStar_TypeChecker_Env.effects);
                FStar_TypeChecker_Env.generalize =
                  (env.FStar_TypeChecker_Env.generalize);
                FStar_TypeChecker_Env.letrecs =
                  (env.FStar_TypeChecker_Env.letrecs);
                FStar_TypeChecker_Env.top_level =
                  (env.FStar_TypeChecker_Env.top_level);
                FStar_TypeChecker_Env.check_uvars =
                  (env.FStar_TypeChecker_Env.check_uvars);
                FStar_TypeChecker_Env.use_eq_strict =
                  (env.FStar_TypeChecker_Env.use_eq_strict);
                FStar_TypeChecker_Env.is_iface =
                  (env.FStar_TypeChecker_Env.is_iface);
                FStar_TypeChecker_Env.admit =
                  (env.FStar_TypeChecker_Env.admit);
                FStar_TypeChecker_Env.lax_universes =
                  (env.FStar_TypeChecker_Env.lax_universes);
                FStar_TypeChecker_Env.phase1 =
                  (env.FStar_TypeChecker_Env.phase1);
                FStar_TypeChecker_Env.failhard = true;
                FStar_TypeChecker_Env.flychecking =
                  (env.FStar_TypeChecker_Env.flychecking);
                FStar_TypeChecker_Env.uvar_subtyping =
                  (env.FStar_TypeChecker_Env.uvar_subtyping);
                FStar_TypeChecker_Env.intactics =
                  (env.FStar_TypeChecker_Env.intactics);
                FStar_TypeChecker_Env.nocoerce =
                  (env.FStar_TypeChecker_Env.nocoerce);
                FStar_TypeChecker_Env.tc_term =
                  (env.FStar_TypeChecker_Env.tc_term);
                FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                  (env.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                FStar_TypeChecker_Env.universe_of =
                  (env.FStar_TypeChecker_Env.universe_of);
                FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term =
                  (env.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                FStar_TypeChecker_Env.teq_nosmt_force =
                  (env.FStar_TypeChecker_Env.teq_nosmt_force);
                FStar_TypeChecker_Env.subtype_nosmt_force =
                  (env.FStar_TypeChecker_Env.subtype_nosmt_force);
                FStar_TypeChecker_Env.qtbl_name_and_index =
                  (env.FStar_TypeChecker_Env.qtbl_name_and_index);
                FStar_TypeChecker_Env.normalized_eff_names =
                  (env.FStar_TypeChecker_Env.normalized_eff_names);
                FStar_TypeChecker_Env.fv_delta_depths =
                  (env.FStar_TypeChecker_Env.fv_delta_depths);
                FStar_TypeChecker_Env.proof_ns =
                  (env.FStar_TypeChecker_Env.proof_ns);
                FStar_TypeChecker_Env.synth_hook =
                  (env.FStar_TypeChecker_Env.synth_hook);
                FStar_TypeChecker_Env.try_solve_implicits_hook =
                  (env.FStar_TypeChecker_Env.try_solve_implicits_hook);
                FStar_TypeChecker_Env.splice =
                  (env.FStar_TypeChecker_Env.splice);
                FStar_TypeChecker_Env.mpreprocess =
                  (env.FStar_TypeChecker_Env.mpreprocess);
                FStar_TypeChecker_Env.postprocess =
                  (env.FStar_TypeChecker_Env.postprocess);
                FStar_TypeChecker_Env.identifier_info =
                  (env.FStar_TypeChecker_Env.identifier_info);
                FStar_TypeChecker_Env.tc_hooks =
                  (env.FStar_TypeChecker_Env.tc_hooks);
                FStar_TypeChecker_Env.dsenv =
                  (env.FStar_TypeChecker_Env.dsenv);
                FStar_TypeChecker_Env.nbe = (env.FStar_TypeChecker_Env.nbe);
                FStar_TypeChecker_Env.strict_args_tab =
                  (env.FStar_TypeChecker_Env.strict_args_tab);
                FStar_TypeChecker_Env.erasable_types_tab =
                  (env.FStar_TypeChecker_Env.erasable_types_tab);
                FStar_TypeChecker_Env.enable_defer_to_tac =
                  (env.FStar_TypeChecker_Env.enable_defer_to_tac);
                FStar_TypeChecker_Env.unif_allow_ref_guards =
                  (env.FStar_TypeChecker_Env.unif_allow_ref_guards);
                FStar_TypeChecker_Env.erase_erasable_args =
                  (env.FStar_TypeChecker_Env.erase_erasable_args);
                FStar_TypeChecker_Env.core_check =
                  (env.FStar_TypeChecker_Env.core_check);
                FStar_TypeChecker_Env.missing_decl =
                  (env.FStar_TypeChecker_Env.missing_decl)
              } tc FStar_Syntax_Syntax.teff "" in
          (match uu___ with
           | (tc1, uu___1, f) ->
               let uu___2 = FStar_Syntax_Util.head_and_args tc1 in
               (match uu___2 with
                | (head2, args) ->
                    let comp_univs =
                      let uu___3 =
                        let uu___4 = FStar_Syntax_Subst.compress head2 in
                        uu___4.FStar_Syntax_Syntax.n in
                      match uu___3 with
                      | FStar_Syntax_Syntax.Tm_uinst (uu___4, us) -> us
                      | uu___4 -> [] in
                    let uu___3 = FStar_Syntax_Util.head_and_args tc1 in
                    (match uu___3 with
                     | (uu___4, args1) ->
                         let uu___5 =
                           let uu___6 = FStar_Compiler_List.hd args1 in
                           let uu___7 = FStar_Compiler_List.tl args1 in
                           (uu___6, uu___7) in
                         (match uu___5 with
                          | (res, args2) ->
                              let uu___6 =
                                let uu___7 =
                                  FStar_Compiler_List.map
                                    (fun uu___8 ->
                                       match uu___8 with
                                       | FStar_Syntax_Syntax.DECREASES
                                           (FStar_Syntax_Syntax.Decreases_lex
                                           l) ->
                                           let uu___9 =
                                             FStar_TypeChecker_Env.clear_expected_typ
                                               env in
                                           (match uu___9 with
                                            | (env1, uu___10) ->
                                                let uu___11 =
                                                  FStar_Compiler_List.fold_left
                                                    (fun uu___12 ->
                                                       fun e ->
                                                         match uu___12 with
                                                         | (l1, g) ->
                                                             let uu___13 =
                                                               tc_tot_or_gtot_term
                                                                 env1 e in
                                                             (match uu___13
                                                              with
                                                              | (e1, uu___14,
                                                                 g_e) ->
                                                                  let uu___15
                                                                    =
                                                                    FStar_Class_Monoid.op_Plus_Plus
                                                                    FStar_TypeChecker_Common.monoid_guard_t
                                                                    g g_e in
                                                                  ((FStar_Compiler_List.op_At
                                                                    l1 
                                                                    [e1]),
                                                                    uu___15)))
                                                    ([],
                                                      (FStar_Class_Monoid.mzero
                                                         FStar_TypeChecker_Common.monoid_guard_t))
                                                    l in
                                                (match uu___11 with
                                                 | (l1, g) ->
                                                     ((FStar_Syntax_Syntax.DECREASES
                                                         (FStar_Syntax_Syntax.Decreases_lex
                                                            l1)), g)))
                                       | FStar_Syntax_Syntax.DECREASES
                                           (FStar_Syntax_Syntax.Decreases_wf
                                           (rel, e)) ->
                                           let uu___9 =
                                             FStar_TypeChecker_Env.clear_expected_typ
                                               env in
                                           (match uu___9 with
                                            | (env1, uu___10) ->
                                                let uu___11 =
                                                  FStar_Syntax_Util.type_u () in
                                                (match uu___11 with
                                                 | (t, u_t) ->
                                                     let u_r =
                                                       FStar_TypeChecker_Env.new_u_univ
                                                         () in
                                                     let uu___12 =
                                                       FStar_TypeChecker_Util.new_implicit_var
                                                         "implicit for type of the well-founded relation in decreases clause"
                                                         rel.FStar_Syntax_Syntax.pos
                                                         env1 t in
                                                     (match uu___12 with
                                                      | (a, uu___13, g_a) ->
                                                          let wf_t =
                                                            let uu___14 =
                                                              let uu___15 =
                                                                FStar_TypeChecker_Env.fvar_of_nonqual_lid
                                                                  env1
                                                                  FStar_Parser_Const.well_founded_relation_lid in
                                                              FStar_Syntax_Syntax.mk_Tm_uinst
                                                                uu___15
                                                                [u_t; u_r] in
                                                            let uu___15 =
                                                              let uu___16 =
                                                                FStar_Syntax_Syntax.as_arg
                                                                  a in
                                                              [uu___16] in
                                                            FStar_Syntax_Syntax.mk_Tm_app
                                                              uu___14 uu___15
                                                              rel.FStar_Syntax_Syntax.pos in
                                                          let uu___14 =
                                                            let uu___15 =
                                                              FStar_TypeChecker_Env.set_expected_typ
                                                                env1 wf_t in
                                                            tc_tot_or_gtot_term
                                                              uu___15 rel in
                                                          (match uu___14 with
                                                           | (rel1, uu___15,
                                                              g_rel) ->
                                                               let uu___16 =
                                                                 let uu___17
                                                                   =
                                                                   FStar_TypeChecker_Env.set_expected_typ
                                                                    env1 a in
                                                                 tc_tot_or_gtot_term
                                                                   uu___17 e in
                                                               (match uu___16
                                                                with
                                                                | (e1,
                                                                   uu___17,
                                                                   g_e) ->
                                                                    let uu___18
                                                                    =
                                                                    let uu___19
                                                                    =
                                                                    FStar_Class_Monoid.op_Plus_Plus
                                                                    FStar_TypeChecker_Common.monoid_guard_t
                                                                    g_a g_rel in
                                                                    FStar_Class_Monoid.op_Plus_Plus
                                                                    FStar_TypeChecker_Common.monoid_guard_t
                                                                    uu___19
                                                                    g_e in
                                                                    ((FStar_Syntax_Syntax.DECREASES
                                                                    (FStar_Syntax_Syntax.Decreases_wf
                                                                    (rel1,
                                                                    e1))),
                                                                    uu___18))))))
                                       | f1 ->
                                           (f1,
                                             (FStar_Class_Monoid.mzero
                                                FStar_TypeChecker_Common.monoid_guard_t)))
                                    c1.FStar_Syntax_Syntax.flags in
                                FStar_Compiler_List.unzip uu___7 in
                              (match uu___6 with
                               | (flags, guards) ->
                                   let u =
                                     env.FStar_TypeChecker_Env.universe_of
                                       env (FStar_Pervasives_Native.fst res) in
                                   let c2 =
                                     FStar_Syntax_Syntax.mk_Comp
                                       {
                                         FStar_Syntax_Syntax.comp_univs =
                                           comp_univs;
                                         FStar_Syntax_Syntax.effect_name =
                                           (c1.FStar_Syntax_Syntax.effect_name);
                                         FStar_Syntax_Syntax.result_typ =
                                           (FStar_Pervasives_Native.fst res);
                                         FStar_Syntax_Syntax.effect_args =
                                           args2;
                                         FStar_Syntax_Syntax.flags = flags
                                       } in
                                   let u_c =
                                     FStar_TypeChecker_Util.universe_of_comp
                                       env u c2 in
                                   let uu___7 =
                                     let uu___8 =
                                       FStar_Class_Monoid.msum
                                         FStar_TypeChecker_Common.monoid_guard_t
                                         guards in
                                     FStar_Class_Monoid.op_Plus_Plus
                                       FStar_TypeChecker_Common.monoid_guard_t
                                       f uu___8 in
                                   (c2, u_c, uu___7))))))
and (tc_universe :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.universe -> FStar_Syntax_Syntax.universe)
  =
  fun env ->
    fun u ->
      let rec aux u1 =
        let u2 = FStar_Syntax_Subst.compress_univ u1 in
        match u2 with
        | FStar_Syntax_Syntax.U_bvar uu___ ->
            FStar_Compiler_Effect.failwith "Impossible: locally nameless"
        | FStar_Syntax_Syntax.U_unknown ->
            FStar_Compiler_Effect.failwith "Unknown universe"
        | FStar_Syntax_Syntax.U_unif uu___ -> u2
        | FStar_Syntax_Syntax.U_zero -> u2
        | FStar_Syntax_Syntax.U_succ u3 ->
            let uu___ = aux u3 in FStar_Syntax_Syntax.U_succ uu___
        | FStar_Syntax_Syntax.U_max us ->
            let uu___ = FStar_Compiler_List.map aux us in
            FStar_Syntax_Syntax.U_max uu___
        | FStar_Syntax_Syntax.U_name x ->
            let uu___ = FStar_TypeChecker_Env.lookup_univ env x in
            if uu___
            then u2
            else
              (let uu___2 =
                 let uu___3 =
                   let uu___4 =
                     FStar_Class_Show.show FStar_Syntax_Print.showable_univ
                       u2 in
                   Prims.strcat uu___4 " not found" in
                 Prims.strcat "Universe variable " uu___3 in
               FStar_Compiler_Effect.failwith uu___2) in
      if env.FStar_TypeChecker_Env.lax_universes
      then FStar_Syntax_Syntax.U_zero
      else
        (match u with
         | FStar_Syntax_Syntax.U_unknown ->
             let uu___1 = FStar_Syntax_Util.type_u () in
             FStar_Pervasives_Native.snd uu___1
         | uu___1 -> aux u)
and (tc_abs_expected_function_typ :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.binders ->
      (FStar_Syntax_Syntax.typ * Prims.bool) FStar_Pervasives_Native.option
        ->
        FStar_Syntax_Syntax.term ->
          (FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option *
            FStar_Syntax_Syntax.binders * FStar_Syntax_Syntax.binders *
            FStar_Syntax_Syntax.comp FStar_Pervasives_Native.option *
            FStar_TypeChecker_Env.env * FStar_Syntax_Syntax.term *
            FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun bs ->
      fun t0 ->
        fun body ->
          match t0 with
          | FStar_Pervasives_Native.None ->
              ((match env.FStar_TypeChecker_Env.letrecs with
                | [] -> ()
                | uu___1 ->
                    FStar_Compiler_Effect.failwith
                      "Impossible: Can't have a let rec annotation but no expected type");
               (let uu___1 = tc_binders env bs in
                match uu___1 with
                | (bs1, envbody, g_env, uu___2) ->
                    (FStar_Pervasives_Native.None, bs1, [],
                      FStar_Pervasives_Native.None, envbody, body, g_env)))
          | FStar_Pervasives_Native.Some (t, use_eq) ->
              let t1 = FStar_Syntax_Subst.compress t in
              let rec as_function_typ norm1 t2 =
                let uu___ =
                  let uu___1 = FStar_Syntax_Subst.compress t2 in
                  uu___1.FStar_Syntax_Syntax.n in
                match uu___ with
                | FStar_Syntax_Syntax.Tm_uvar uu___1 ->
                    ((match env.FStar_TypeChecker_Env.letrecs with
                      | [] -> ()
                      | uu___3 ->
                          FStar_Compiler_Effect.failwith
                            "Impossible: uvar abs with non-empty environment");
                     (let uu___3 = tc_binders env bs in
                      match uu___3 with
                      | (bs1, envbody, g_env, uu___4) ->
                          let uu___5 =
                            FStar_TypeChecker_Env.clear_expected_typ envbody in
                          (match uu___5 with
                           | (envbody1, uu___6) ->
                               ((FStar_Pervasives_Native.Some t2), bs1, [],
                                 FStar_Pervasives_Native.None, envbody1,
                                 body, g_env))))
                | FStar_Syntax_Syntax.Tm_app
                    {
                      FStar_Syntax_Syntax.hd =
                        {
                          FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_uvar
                            uu___1;
                          FStar_Syntax_Syntax.pos = uu___2;
                          FStar_Syntax_Syntax.vars = uu___3;
                          FStar_Syntax_Syntax.hash_code = uu___4;_};
                      FStar_Syntax_Syntax.args = uu___5;_}
                    ->
                    ((match env.FStar_TypeChecker_Env.letrecs with
                      | [] -> ()
                      | uu___7 ->
                          FStar_Compiler_Effect.failwith
                            "Impossible: uvar abs with non-empty environment");
                     (let uu___7 = tc_binders env bs in
                      match uu___7 with
                      | (bs1, envbody, g_env, uu___8) ->
                          let uu___9 =
                            FStar_TypeChecker_Env.clear_expected_typ envbody in
                          (match uu___9 with
                           | (envbody1, uu___10) ->
                               ((FStar_Pervasives_Native.Some t2), bs1, [],
                                 FStar_Pervasives_Native.None, envbody1,
                                 body, g_env))))
                | FStar_Syntax_Syntax.Tm_refine
                    { FStar_Syntax_Syntax.b = b;
                      FStar_Syntax_Syntax.phi = uu___1;_}
                    ->
                    let uu___2 =
                      as_function_typ norm1 b.FStar_Syntax_Syntax.sort in
                    (match uu___2 with
                     | (uu___3, bs1, bs', copt, env_body, body1, g_env) ->
                         ((FStar_Pervasives_Native.Some t2), bs1, bs', copt,
                           env_body, body1, g_env))
                | FStar_Syntax_Syntax.Tm_arrow
                    { FStar_Syntax_Syntax.bs1 = bs_expected;
                      FStar_Syntax_Syntax.comp = c_expected;_}
                    ->
                    let uu___1 =
                      FStar_Syntax_Subst.open_comp bs_expected c_expected in
                    (match uu___1 with
                     | (bs_expected1, c_expected1) ->
                         let check_actuals_against_formals env1 bs1
                           bs_expected2 body1 =
                           let rec handle_more uu___2 c_expected2 body2 =
                             match uu___2 with
                             | (env_bs, bs2, more, guard_env, subst) ->
                                 (match more with
                                  | FStar_Pervasives_Native.None ->
                                      let uu___3 =
                                        FStar_Syntax_Subst.subst_comp subst
                                          c_expected2 in
                                      (env_bs, bs2, guard_env, uu___3, body2)
                                  | FStar_Pervasives_Native.Some
                                      (FStar_Pervasives.Inr more_bs_expected)
                                      ->
                                      let c =
                                        let uu___3 =
                                          FStar_Syntax_Util.arrow
                                            more_bs_expected c_expected2 in
                                        FStar_Syntax_Syntax.mk_Total uu___3 in
                                      let uu___3 =
                                        FStar_Syntax_Subst.subst_comp subst c in
                                      (env_bs, bs2, guard_env, uu___3, body2)
                                  | FStar_Pervasives_Native.Some
                                      (FStar_Pervasives.Inl more_bs) ->
                                      let c =
                                        FStar_Syntax_Subst.subst_comp subst
                                          c_expected2 in
                                      let uu___3 =
                                        (FStar_Options.ml_ish ()) ||
                                          (FStar_Syntax_Util.is_named_tot c) in
                                      if uu___3
                                      then
                                        let t3 =
                                          FStar_TypeChecker_Normalize.unfold_whnf
                                            env_bs
                                            (FStar_Syntax_Util.comp_result c) in
                                        (match t3.FStar_Syntax_Syntax.n with
                                         | FStar_Syntax_Syntax.Tm_arrow
                                             {
                                               FStar_Syntax_Syntax.bs1 =
                                                 bs_expected3;
                                               FStar_Syntax_Syntax.comp =
                                                 c_expected3;_}
                                             ->
                                             let uu___4 =
                                               FStar_Syntax_Subst.open_comp
                                                 bs_expected3 c_expected3 in
                                             (match uu___4 with
                                              | (bs_expected4, c_expected4)
                                                  ->
                                                  let uu___5 =
                                                    tc_abs_check_binders
                                                      env_bs more_bs
                                                      bs_expected4 use_eq in
                                                  (match uu___5 with
                                                   | (env_bs_bs', bs', more1,
                                                      guard'_env_bs, subst1)
                                                       ->
                                                       let guard'_env =
                                                         FStar_TypeChecker_Env.close_guard
                                                           env_bs bs2
                                                           guard'_env_bs in
                                                       let uu___6 =
                                                         let uu___7 =
                                                           FStar_Class_Monoid.op_Plus_Plus
                                                             FStar_TypeChecker_Common.monoid_guard_t
                                                             guard_env
                                                             guard'_env in
                                                         (env_bs_bs',
                                                           (FStar_Compiler_List.op_At
                                                              bs2 bs'),
                                                           more1, uu___7,
                                                           subst1) in
                                                       handle_more uu___6
                                                         c_expected4 body2))
                                         | uu___4 ->
                                             let body3 =
                                               FStar_Syntax_Util.abs more_bs
                                                 body2
                                                 FStar_Pervasives_Native.None in
                                             (env_bs, bs2, guard_env, c,
                                               body3))
                                      else
                                        (let body3 =
                                           FStar_Syntax_Util.abs more_bs
                                             body2
                                             FStar_Pervasives_Native.None in
                                         (env_bs, bs2, guard_env, c, body3))) in
                           let uu___2 =
                             tc_abs_check_binders env1 bs1 bs_expected2
                               use_eq in
                           handle_more uu___2 c_expected1 body1 in
                         let mk_letrec_env envbody bs1 c =
                           let letrecs = guard_letrecs envbody bs1 c in
                           let envbody1 =
                             {
                               FStar_TypeChecker_Env.solver =
                                 (envbody.FStar_TypeChecker_Env.solver);
                               FStar_TypeChecker_Env.range =
                                 (envbody.FStar_TypeChecker_Env.range);
                               FStar_TypeChecker_Env.curmodule =
                                 (envbody.FStar_TypeChecker_Env.curmodule);
                               FStar_TypeChecker_Env.gamma =
                                 (envbody.FStar_TypeChecker_Env.gamma);
                               FStar_TypeChecker_Env.gamma_sig =
                                 (envbody.FStar_TypeChecker_Env.gamma_sig);
                               FStar_TypeChecker_Env.gamma_cache =
                                 (envbody.FStar_TypeChecker_Env.gamma_cache);
                               FStar_TypeChecker_Env.modules =
                                 (envbody.FStar_TypeChecker_Env.modules);
                               FStar_TypeChecker_Env.expected_typ =
                                 (envbody.FStar_TypeChecker_Env.expected_typ);
                               FStar_TypeChecker_Env.sigtab =
                                 (envbody.FStar_TypeChecker_Env.sigtab);
                               FStar_TypeChecker_Env.attrtab =
                                 (envbody.FStar_TypeChecker_Env.attrtab);
                               FStar_TypeChecker_Env.instantiate_imp =
                                 (envbody.FStar_TypeChecker_Env.instantiate_imp);
                               FStar_TypeChecker_Env.effects =
                                 (envbody.FStar_TypeChecker_Env.effects);
                               FStar_TypeChecker_Env.generalize =
                                 (envbody.FStar_TypeChecker_Env.generalize);
                               FStar_TypeChecker_Env.letrecs = [];
                               FStar_TypeChecker_Env.top_level =
                                 (envbody.FStar_TypeChecker_Env.top_level);
                               FStar_TypeChecker_Env.check_uvars =
                                 (envbody.FStar_TypeChecker_Env.check_uvars);
                               FStar_TypeChecker_Env.use_eq_strict =
                                 (envbody.FStar_TypeChecker_Env.use_eq_strict);
                               FStar_TypeChecker_Env.is_iface =
                                 (envbody.FStar_TypeChecker_Env.is_iface);
                               FStar_TypeChecker_Env.admit =
                                 (envbody.FStar_TypeChecker_Env.admit);
                               FStar_TypeChecker_Env.lax_universes =
                                 (envbody.FStar_TypeChecker_Env.lax_universes);
                               FStar_TypeChecker_Env.phase1 =
                                 (envbody.FStar_TypeChecker_Env.phase1);
                               FStar_TypeChecker_Env.failhard =
                                 (envbody.FStar_TypeChecker_Env.failhard);
                               FStar_TypeChecker_Env.flychecking =
                                 (envbody.FStar_TypeChecker_Env.flychecking);
                               FStar_TypeChecker_Env.uvar_subtyping =
                                 (envbody.FStar_TypeChecker_Env.uvar_subtyping);
                               FStar_TypeChecker_Env.intactics =
                                 (envbody.FStar_TypeChecker_Env.intactics);
                               FStar_TypeChecker_Env.nocoerce =
                                 (envbody.FStar_TypeChecker_Env.nocoerce);
                               FStar_TypeChecker_Env.tc_term =
                                 (envbody.FStar_TypeChecker_Env.tc_term);
                               FStar_TypeChecker_Env.typeof_tot_or_gtot_term
                                 =
                                 (envbody.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                               FStar_TypeChecker_Env.universe_of =
                                 (envbody.FStar_TypeChecker_Env.universe_of);
                               FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                                 =
                                 (envbody.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                               FStar_TypeChecker_Env.teq_nosmt_force =
                                 (envbody.FStar_TypeChecker_Env.teq_nosmt_force);
                               FStar_TypeChecker_Env.subtype_nosmt_force =
                                 (envbody.FStar_TypeChecker_Env.subtype_nosmt_force);
                               FStar_TypeChecker_Env.qtbl_name_and_index =
                                 (envbody.FStar_TypeChecker_Env.qtbl_name_and_index);
                               FStar_TypeChecker_Env.normalized_eff_names =
                                 (envbody.FStar_TypeChecker_Env.normalized_eff_names);
                               FStar_TypeChecker_Env.fv_delta_depths =
                                 (envbody.FStar_TypeChecker_Env.fv_delta_depths);
                               FStar_TypeChecker_Env.proof_ns =
                                 (envbody.FStar_TypeChecker_Env.proof_ns);
                               FStar_TypeChecker_Env.synth_hook =
                                 (envbody.FStar_TypeChecker_Env.synth_hook);
                               FStar_TypeChecker_Env.try_solve_implicits_hook
                                 =
                                 (envbody.FStar_TypeChecker_Env.try_solve_implicits_hook);
                               FStar_TypeChecker_Env.splice =
                                 (envbody.FStar_TypeChecker_Env.splice);
                               FStar_TypeChecker_Env.mpreprocess =
                                 (envbody.FStar_TypeChecker_Env.mpreprocess);
                               FStar_TypeChecker_Env.postprocess =
                                 (envbody.FStar_TypeChecker_Env.postprocess);
                               FStar_TypeChecker_Env.identifier_info =
                                 (envbody.FStar_TypeChecker_Env.identifier_info);
                               FStar_TypeChecker_Env.tc_hooks =
                                 (envbody.FStar_TypeChecker_Env.tc_hooks);
                               FStar_TypeChecker_Env.dsenv =
                                 (envbody.FStar_TypeChecker_Env.dsenv);
                               FStar_TypeChecker_Env.nbe =
                                 (envbody.FStar_TypeChecker_Env.nbe);
                               FStar_TypeChecker_Env.strict_args_tab =
                                 (envbody.FStar_TypeChecker_Env.strict_args_tab);
                               FStar_TypeChecker_Env.erasable_types_tab =
                                 (envbody.FStar_TypeChecker_Env.erasable_types_tab);
                               FStar_TypeChecker_Env.enable_defer_to_tac =
                                 (envbody.FStar_TypeChecker_Env.enable_defer_to_tac);
                               FStar_TypeChecker_Env.unif_allow_ref_guards =
                                 (envbody.FStar_TypeChecker_Env.unif_allow_ref_guards);
                               FStar_TypeChecker_Env.erase_erasable_args =
                                 (envbody.FStar_TypeChecker_Env.erase_erasable_args);
                               FStar_TypeChecker_Env.core_check =
                                 (envbody.FStar_TypeChecker_Env.core_check);
                               FStar_TypeChecker_Env.missing_decl =
                                 (envbody.FStar_TypeChecker_Env.missing_decl)
                             } in
                           let uu___2 =
                             FStar_Compiler_List.fold_left
                               (fun uu___3 ->
                                  fun uu___4 ->
                                    match (uu___3, uu___4) with
                                    | ((env1, letrec_binders, g),
                                       (l, t3, u_names)) ->
                                        let uu___5 =
                                          let uu___6 =
                                            let uu___7 =
                                              FStar_TypeChecker_Env.clear_expected_typ
                                                env1 in
                                            FStar_Pervasives_Native.fst
                                              uu___7 in
                                          tc_term uu___6 t3 in
                                        (match uu___5 with
                                         | (t4, uu___6, g') ->
                                             let env2 =
                                               FStar_TypeChecker_Env.push_let_binding
                                                 env1 l (u_names, t4) in
                                             let lb =
                                               match l with
                                               | FStar_Pervasives.Inl x ->
                                                   let uu___7 =
                                                     FStar_Syntax_Syntax.mk_binder
                                                       {
                                                         FStar_Syntax_Syntax.ppname
                                                           =
                                                           (x.FStar_Syntax_Syntax.ppname);
                                                         FStar_Syntax_Syntax.index
                                                           =
                                                           (x.FStar_Syntax_Syntax.index);
                                                         FStar_Syntax_Syntax.sort
                                                           = t4
                                                       } in
                                                   uu___7 :: letrec_binders
                                               | uu___7 -> letrec_binders in
                                             let uu___7 =
                                               FStar_Class_Monoid.op_Plus_Plus
                                                 FStar_TypeChecker_Common.monoid_guard_t
                                                 g g' in
                                             (env2, lb, uu___7)))
                               (envbody1, [],
                                 (FStar_Class_Monoid.mzero
                                    FStar_TypeChecker_Common.monoid_guard_t))
                               letrecs in
                           match uu___2 with
                           | (envbody2, letrec_binders, g) ->
                               let uu___3 =
                                 FStar_TypeChecker_Env.close_guard envbody2
                                   bs1 g in
                               (envbody2, letrec_binders, uu___3) in
                         let envbody =
                           {
                             FStar_TypeChecker_Env.solver =
                               (env.FStar_TypeChecker_Env.solver);
                             FStar_TypeChecker_Env.range =
                               (env.FStar_TypeChecker_Env.range);
                             FStar_TypeChecker_Env.curmodule =
                               (env.FStar_TypeChecker_Env.curmodule);
                             FStar_TypeChecker_Env.gamma =
                               (env.FStar_TypeChecker_Env.gamma);
                             FStar_TypeChecker_Env.gamma_sig =
                               (env.FStar_TypeChecker_Env.gamma_sig);
                             FStar_TypeChecker_Env.gamma_cache =
                               (env.FStar_TypeChecker_Env.gamma_cache);
                             FStar_TypeChecker_Env.modules =
                               (env.FStar_TypeChecker_Env.modules);
                             FStar_TypeChecker_Env.expected_typ =
                               (env.FStar_TypeChecker_Env.expected_typ);
                             FStar_TypeChecker_Env.sigtab =
                               (env.FStar_TypeChecker_Env.sigtab);
                             FStar_TypeChecker_Env.attrtab =
                               (env.FStar_TypeChecker_Env.attrtab);
                             FStar_TypeChecker_Env.instantiate_imp =
                               (env.FStar_TypeChecker_Env.instantiate_imp);
                             FStar_TypeChecker_Env.effects =
                               (env.FStar_TypeChecker_Env.effects);
                             FStar_TypeChecker_Env.generalize =
                               (env.FStar_TypeChecker_Env.generalize);
                             FStar_TypeChecker_Env.letrecs = [];
                             FStar_TypeChecker_Env.top_level =
                               (env.FStar_TypeChecker_Env.top_level);
                             FStar_TypeChecker_Env.check_uvars =
                               (env.FStar_TypeChecker_Env.check_uvars);
                             FStar_TypeChecker_Env.use_eq_strict =
                               (env.FStar_TypeChecker_Env.use_eq_strict);
                             FStar_TypeChecker_Env.is_iface =
                               (env.FStar_TypeChecker_Env.is_iface);
                             FStar_TypeChecker_Env.admit =
                               (env.FStar_TypeChecker_Env.admit);
                             FStar_TypeChecker_Env.lax_universes =
                               (env.FStar_TypeChecker_Env.lax_universes);
                             FStar_TypeChecker_Env.phase1 =
                               (env.FStar_TypeChecker_Env.phase1);
                             FStar_TypeChecker_Env.failhard =
                               (env.FStar_TypeChecker_Env.failhard);
                             FStar_TypeChecker_Env.flychecking =
                               (env.FStar_TypeChecker_Env.flychecking);
                             FStar_TypeChecker_Env.uvar_subtyping =
                               (env.FStar_TypeChecker_Env.uvar_subtyping);
                             FStar_TypeChecker_Env.intactics =
                               (env.FStar_TypeChecker_Env.intactics);
                             FStar_TypeChecker_Env.nocoerce =
                               (env.FStar_TypeChecker_Env.nocoerce);
                             FStar_TypeChecker_Env.tc_term =
                               (env.FStar_TypeChecker_Env.tc_term);
                             FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                               (env.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                             FStar_TypeChecker_Env.universe_of =
                               (env.FStar_TypeChecker_Env.universe_of);
                             FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                               =
                               (env.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                             FStar_TypeChecker_Env.teq_nosmt_force =
                               (env.FStar_TypeChecker_Env.teq_nosmt_force);
                             FStar_TypeChecker_Env.subtype_nosmt_force =
                               (env.FStar_TypeChecker_Env.subtype_nosmt_force);
                             FStar_TypeChecker_Env.qtbl_name_and_index =
                               (env.FStar_TypeChecker_Env.qtbl_name_and_index);
                             FStar_TypeChecker_Env.normalized_eff_names =
                               (env.FStar_TypeChecker_Env.normalized_eff_names);
                             FStar_TypeChecker_Env.fv_delta_depths =
                               (env.FStar_TypeChecker_Env.fv_delta_depths);
                             FStar_TypeChecker_Env.proof_ns =
                               (env.FStar_TypeChecker_Env.proof_ns);
                             FStar_TypeChecker_Env.synth_hook =
                               (env.FStar_TypeChecker_Env.synth_hook);
                             FStar_TypeChecker_Env.try_solve_implicits_hook =
                               (env.FStar_TypeChecker_Env.try_solve_implicits_hook);
                             FStar_TypeChecker_Env.splice =
                               (env.FStar_TypeChecker_Env.splice);
                             FStar_TypeChecker_Env.mpreprocess =
                               (env.FStar_TypeChecker_Env.mpreprocess);
                             FStar_TypeChecker_Env.postprocess =
                               (env.FStar_TypeChecker_Env.postprocess);
                             FStar_TypeChecker_Env.identifier_info =
                               (env.FStar_TypeChecker_Env.identifier_info);
                             FStar_TypeChecker_Env.tc_hooks =
                               (env.FStar_TypeChecker_Env.tc_hooks);
                             FStar_TypeChecker_Env.dsenv =
                               (env.FStar_TypeChecker_Env.dsenv);
                             FStar_TypeChecker_Env.nbe =
                               (env.FStar_TypeChecker_Env.nbe);
                             FStar_TypeChecker_Env.strict_args_tab =
                               (env.FStar_TypeChecker_Env.strict_args_tab);
                             FStar_TypeChecker_Env.erasable_types_tab =
                               (env.FStar_TypeChecker_Env.erasable_types_tab);
                             FStar_TypeChecker_Env.enable_defer_to_tac =
                               (env.FStar_TypeChecker_Env.enable_defer_to_tac);
                             FStar_TypeChecker_Env.unif_allow_ref_guards =
                               (env.FStar_TypeChecker_Env.unif_allow_ref_guards);
                             FStar_TypeChecker_Env.erase_erasable_args =
                               (env.FStar_TypeChecker_Env.erase_erasable_args);
                             FStar_TypeChecker_Env.core_check =
                               (env.FStar_TypeChecker_Env.core_check);
                             FStar_TypeChecker_Env.missing_decl =
                               (env.FStar_TypeChecker_Env.missing_decl)
                           } in
                         let uu___2 =
                           check_actuals_against_formals envbody bs
                             bs_expected1 body in
                         (match uu___2 with
                          | (envbody1, bs1, g_env, c, body1) ->
                              let envbody2 =
                                {
                                  FStar_TypeChecker_Env.solver =
                                    (envbody1.FStar_TypeChecker_Env.solver);
                                  FStar_TypeChecker_Env.range =
                                    (envbody1.FStar_TypeChecker_Env.range);
                                  FStar_TypeChecker_Env.curmodule =
                                    (envbody1.FStar_TypeChecker_Env.curmodule);
                                  FStar_TypeChecker_Env.gamma =
                                    (envbody1.FStar_TypeChecker_Env.gamma);
                                  FStar_TypeChecker_Env.gamma_sig =
                                    (envbody1.FStar_TypeChecker_Env.gamma_sig);
                                  FStar_TypeChecker_Env.gamma_cache =
                                    (envbody1.FStar_TypeChecker_Env.gamma_cache);
                                  FStar_TypeChecker_Env.modules =
                                    (envbody1.FStar_TypeChecker_Env.modules);
                                  FStar_TypeChecker_Env.expected_typ =
                                    (envbody1.FStar_TypeChecker_Env.expected_typ);
                                  FStar_TypeChecker_Env.sigtab =
                                    (envbody1.FStar_TypeChecker_Env.sigtab);
                                  FStar_TypeChecker_Env.attrtab =
                                    (envbody1.FStar_TypeChecker_Env.attrtab);
                                  FStar_TypeChecker_Env.instantiate_imp =
                                    (envbody1.FStar_TypeChecker_Env.instantiate_imp);
                                  FStar_TypeChecker_Env.effects =
                                    (envbody1.FStar_TypeChecker_Env.effects);
                                  FStar_TypeChecker_Env.generalize =
                                    (envbody1.FStar_TypeChecker_Env.generalize);
                                  FStar_TypeChecker_Env.letrecs =
                                    (env.FStar_TypeChecker_Env.letrecs);
                                  FStar_TypeChecker_Env.top_level =
                                    (envbody1.FStar_TypeChecker_Env.top_level);
                                  FStar_TypeChecker_Env.check_uvars =
                                    (envbody1.FStar_TypeChecker_Env.check_uvars);
                                  FStar_TypeChecker_Env.use_eq_strict =
                                    (envbody1.FStar_TypeChecker_Env.use_eq_strict);
                                  FStar_TypeChecker_Env.is_iface =
                                    (envbody1.FStar_TypeChecker_Env.is_iface);
                                  FStar_TypeChecker_Env.admit =
                                    (envbody1.FStar_TypeChecker_Env.admit);
                                  FStar_TypeChecker_Env.lax_universes =
                                    (envbody1.FStar_TypeChecker_Env.lax_universes);
                                  FStar_TypeChecker_Env.phase1 =
                                    (envbody1.FStar_TypeChecker_Env.phase1);
                                  FStar_TypeChecker_Env.failhard =
                                    (envbody1.FStar_TypeChecker_Env.failhard);
                                  FStar_TypeChecker_Env.flychecking =
                                    (envbody1.FStar_TypeChecker_Env.flychecking);
                                  FStar_TypeChecker_Env.uvar_subtyping =
                                    (envbody1.FStar_TypeChecker_Env.uvar_subtyping);
                                  FStar_TypeChecker_Env.intactics =
                                    (envbody1.FStar_TypeChecker_Env.intactics);
                                  FStar_TypeChecker_Env.nocoerce =
                                    (envbody1.FStar_TypeChecker_Env.nocoerce);
                                  FStar_TypeChecker_Env.tc_term =
                                    (envbody1.FStar_TypeChecker_Env.tc_term);
                                  FStar_TypeChecker_Env.typeof_tot_or_gtot_term
                                    =
                                    (envbody1.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                                  FStar_TypeChecker_Env.universe_of =
                                    (envbody1.FStar_TypeChecker_Env.universe_of);
                                  FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                                    =
                                    (envbody1.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                                  FStar_TypeChecker_Env.teq_nosmt_force =
                                    (envbody1.FStar_TypeChecker_Env.teq_nosmt_force);
                                  FStar_TypeChecker_Env.subtype_nosmt_force =
                                    (envbody1.FStar_TypeChecker_Env.subtype_nosmt_force);
                                  FStar_TypeChecker_Env.qtbl_name_and_index =
                                    (envbody1.FStar_TypeChecker_Env.qtbl_name_and_index);
                                  FStar_TypeChecker_Env.normalized_eff_names
                                    =
                                    (envbody1.FStar_TypeChecker_Env.normalized_eff_names);
                                  FStar_TypeChecker_Env.fv_delta_depths =
                                    (envbody1.FStar_TypeChecker_Env.fv_delta_depths);
                                  FStar_TypeChecker_Env.proof_ns =
                                    (envbody1.FStar_TypeChecker_Env.proof_ns);
                                  FStar_TypeChecker_Env.synth_hook =
                                    (envbody1.FStar_TypeChecker_Env.synth_hook);
                                  FStar_TypeChecker_Env.try_solve_implicits_hook
                                    =
                                    (envbody1.FStar_TypeChecker_Env.try_solve_implicits_hook);
                                  FStar_TypeChecker_Env.splice =
                                    (envbody1.FStar_TypeChecker_Env.splice);
                                  FStar_TypeChecker_Env.mpreprocess =
                                    (envbody1.FStar_TypeChecker_Env.mpreprocess);
                                  FStar_TypeChecker_Env.postprocess =
                                    (envbody1.FStar_TypeChecker_Env.postprocess);
                                  FStar_TypeChecker_Env.identifier_info =
                                    (envbody1.FStar_TypeChecker_Env.identifier_info);
                                  FStar_TypeChecker_Env.tc_hooks =
                                    (envbody1.FStar_TypeChecker_Env.tc_hooks);
                                  FStar_TypeChecker_Env.dsenv =
                                    (envbody1.FStar_TypeChecker_Env.dsenv);
                                  FStar_TypeChecker_Env.nbe =
                                    (envbody1.FStar_TypeChecker_Env.nbe);
                                  FStar_TypeChecker_Env.strict_args_tab =
                                    (envbody1.FStar_TypeChecker_Env.strict_args_tab);
                                  FStar_TypeChecker_Env.erasable_types_tab =
                                    (envbody1.FStar_TypeChecker_Env.erasable_types_tab);
                                  FStar_TypeChecker_Env.enable_defer_to_tac =
                                    (envbody1.FStar_TypeChecker_Env.enable_defer_to_tac);
                                  FStar_TypeChecker_Env.unif_allow_ref_guards
                                    =
                                    (envbody1.FStar_TypeChecker_Env.unif_allow_ref_guards);
                                  FStar_TypeChecker_Env.erase_erasable_args =
                                    (envbody1.FStar_TypeChecker_Env.erase_erasable_args);
                                  FStar_TypeChecker_Env.core_check =
                                    (envbody1.FStar_TypeChecker_Env.core_check);
                                  FStar_TypeChecker_Env.missing_decl =
                                    (envbody1.FStar_TypeChecker_Env.missing_decl)
                                } in
                              let uu___3 = mk_letrec_env envbody2 bs1 c in
                              (match uu___3 with
                               | (envbody3, letrecs, g_annots) ->
                                   let envbody4 =
                                     FStar_TypeChecker_Env.set_expected_typ_maybe_eq
                                       envbody3
                                       (FStar_Syntax_Util.comp_result c)
                                       use_eq in
                                   let uu___4 =
                                     FStar_Class_Monoid.op_Plus_Plus
                                       FStar_TypeChecker_Common.monoid_guard_t
                                       g_env g_annots in
                                   ((FStar_Pervasives_Native.Some t2), bs1,
                                     letrecs,
                                     (FStar_Pervasives_Native.Some c),
                                     envbody4, body1, uu___4))))
                | uu___1 ->
                    if Prims.op_Negation norm1
                    then
                      let uu___2 =
                        let uu___3 =
                          FStar_TypeChecker_Normalize.unfold_whnf env t2 in
                        FStar_Syntax_Util.unascribe uu___3 in
                      as_function_typ true uu___2
                    else
                      (let uu___3 =
                         tc_abs_expected_function_typ env bs
                           FStar_Pervasives_Native.None body in
                       match uu___3 with
                       | (uu___4, bs1, uu___5, c_opt, envbody, body1, g_env)
                           ->
                           ((FStar_Pervasives_Native.Some t2), bs1, [],
                             c_opt, envbody, body1, g_env)) in
              as_function_typ false t1
and (tc_abs_check_binders :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.binders ->
      FStar_Syntax_Syntax.binders ->
        Prims.bool ->
          (FStar_TypeChecker_Env.env * FStar_Syntax_Syntax.binders *
            (FStar_Syntax_Syntax.binders, FStar_Syntax_Syntax.binders)
            FStar_Pervasives.either FStar_Pervasives_Native.option *
            FStar_TypeChecker_Env.guard_t * FStar_Syntax_Syntax.subst_t))
  =
  fun env ->
    fun bs ->
      fun bs_expected ->
        fun use_eq ->
          let rec aux uu___ bs1 bs_expected1 =
            match uu___ with
            | (env1, subst) ->
                (match (bs1, bs_expected1) with
                 | ([], []) ->
                     (env1, [], FStar_Pervasives_Native.None,
                       (FStar_Class_Monoid.mzero
                          FStar_TypeChecker_Common.monoid_guard_t), subst)
                 | ({ FStar_Syntax_Syntax.binder_bv = uu___1;
                      FStar_Syntax_Syntax.binder_qual =
                        FStar_Pervasives_Native.None;
                      FStar_Syntax_Syntax.binder_positivity = uu___2;
                      FStar_Syntax_Syntax.binder_attrs = uu___3;_}::uu___4,
                    { FStar_Syntax_Syntax.binder_bv = hd_e;
                      FStar_Syntax_Syntax.binder_qual = q;
                      FStar_Syntax_Syntax.binder_positivity = pqual;
                      FStar_Syntax_Syntax.binder_attrs = attrs;_}::uu___5)
                     when FStar_Syntax_Syntax.is_bqual_implicit_or_meta q ->
                     let bv =
                       let uu___6 =
                         let uu___7 =
                           FStar_Ident.range_of_id
                             hd_e.FStar_Syntax_Syntax.ppname in
                         FStar_Pervasives_Native.Some uu___7 in
                       let uu___7 =
                         FStar_Syntax_Subst.subst subst
                           hd_e.FStar_Syntax_Syntax.sort in
                       FStar_Syntax_Syntax.new_bv uu___6 uu___7 in
                     let uu___6 =
                       let uu___7 =
                         FStar_Syntax_Syntax.mk_binder_with_attrs bv q pqual
                           attrs in
                       uu___7 :: bs1 in
                     aux (env1, subst) uu___6 bs_expected1
                 | ({ FStar_Syntax_Syntax.binder_bv = hd;
                      FStar_Syntax_Syntax.binder_qual = imp;
                      FStar_Syntax_Syntax.binder_positivity = pqual_actual;
                      FStar_Syntax_Syntax.binder_attrs = attrs;_}::bs2,
                    { FStar_Syntax_Syntax.binder_bv = hd_expected;
                      FStar_Syntax_Syntax.binder_qual = imp';
                      FStar_Syntax_Syntax.binder_positivity = pqual_expected;
                      FStar_Syntax_Syntax.binder_attrs = attrs';_}::bs_expected2)
                     ->
                     ((let special q1 q2 =
                         match (q1, q2) with
                         | (FStar_Pervasives_Native.Some
                            (FStar_Syntax_Syntax.Meta uu___2),
                            FStar_Pervasives_Native.Some
                            (FStar_Syntax_Syntax.Meta uu___3)) -> true
                         | (FStar_Pervasives_Native.None,
                            FStar_Pervasives_Native.Some
                            (FStar_Syntax_Syntax.Equality)) -> true
                         | (FStar_Pervasives_Native.Some
                            (FStar_Syntax_Syntax.Implicit uu___2),
                            FStar_Pervasives_Native.Some
                            (FStar_Syntax_Syntax.Meta uu___3)) -> true
                         | uu___2 -> false in
                       let uu___2 =
                         (Prims.op_Negation (special imp imp')) &&
                           (let uu___3 = FStar_Syntax_Util.eq_bqual imp imp' in
                            Prims.op_Negation uu___3) in
                       if uu___2
                       then
                         let uu___3 =
                           let uu___4 =
                             let uu___5 =
                               let uu___6 =
                                 let uu___7 =
                                   FStar_Class_Show.show
                                     FStar_Syntax_Print.showable_bv hd in
                                 FStar_Compiler_Util.format1
                                   "Inconsistent implicit argument annotation on argument %s"
                                   uu___7 in
                               FStar_Errors_Msg.text uu___6 in
                             let uu___6 =
                               let uu___7 =
                                 let uu___8 = FStar_Errors_Msg.text "Got:" in
                                 let uu___9 =
                                   let uu___10 =
                                     let uu___11 =
                                       FStar_Syntax_Print.bqual_to_string imp in
                                     FStar_Pprint.doc_of_string uu___11 in
                                   FStar_Pprint.squotes uu___10 in
                                 FStar_Pprint.prefix (Prims.of_int (2))
                                   Prims.int_one uu___8 uu___9 in
                               let uu___8 =
                                 let uu___9 =
                                   let uu___10 =
                                     FStar_Errors_Msg.text "Expected:" in
                                   let uu___11 =
                                     let uu___12 =
                                       let uu___13 =
                                         FStar_Syntax_Print.bqual_to_string
                                           imp' in
                                       FStar_Pprint.doc_of_string uu___13 in
                                     FStar_Pprint.squotes uu___12 in
                                   FStar_Pprint.prefix (Prims.of_int (2))
                                     Prims.int_one uu___10 uu___11 in
                                 [uu___9] in
                               uu___7 :: uu___8 in
                             uu___5 :: uu___6 in
                           (FStar_Errors_Codes.Fatal_InconsistentImplicitArgumentAnnotation,
                             uu___4) in
                         let uu___4 = FStar_Syntax_Syntax.range_of_bv hd in
                         FStar_Errors.raise_error_doc uu___3 uu___4
                       else ());
                      (let positivity_qual_to_string uu___2 =
                         match uu___2 with
                         | FStar_Pervasives_Native.None -> "None"
                         | FStar_Pervasives_Native.Some
                             (FStar_Syntax_Syntax.BinderStrictlyPositive) ->
                             "StrictlyPositive"
                         | FStar_Pervasives_Native.Some
                             (FStar_Syntax_Syntax.BinderUnused) -> "Unused" in
                       (let uu___3 =
                          let uu___4 =
                            FStar_TypeChecker_Common.check_positivity_qual
                              true pqual_expected pqual_actual in
                          Prims.op_Negation uu___4 in
                        if uu___3
                        then
                          let uu___4 =
                            let uu___5 =
                              let uu___6 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_bv hd in
                              FStar_Compiler_Util.format3
                                "Inconsistent positivity qualifier on argument %s; Expected qualifier %s, found qualifier %s"
                                uu___6
                                (positivity_qual_to_string pqual_expected)
                                (positivity_qual_to_string pqual_actual) in
                            (FStar_Errors_Codes.Fatal_InconsistentQualifierAnnotation,
                              uu___5) in
                          let uu___5 = FStar_Syntax_Syntax.range_of_bv hd in
                          FStar_Errors.raise_error uu___4 uu___5
                        else ());
                       (let expected_t =
                          FStar_Syntax_Subst.subst subst
                            hd_expected.FStar_Syntax_Syntax.sort in
                        let uu___3 =
                          let uu___4 =
                            let uu___5 =
                              FStar_Syntax_Util.unmeta
                                hd.FStar_Syntax_Syntax.sort in
                            uu___5.FStar_Syntax_Syntax.n in
                          match uu___4 with
                          | FStar_Syntax_Syntax.Tm_unknown ->
                              (expected_t,
                                (FStar_Class_Monoid.mzero
                                   FStar_TypeChecker_Common.monoid_guard_t))
                          | uu___5 ->
                              ((let uu___7 = FStar_Compiler_Debug.high () in
                                if uu___7
                                then
                                  let uu___8 =
                                    FStar_Class_Show.show
                                      FStar_Syntax_Print.showable_bv hd in
                                  FStar_Compiler_Util.print1
                                    "Checking binder %s\n" uu___8
                                else ());
                               (let uu___7 =
                                  tc_tot_or_gtot_term env1
                                    hd.FStar_Syntax_Syntax.sort in
                                match uu___7 with
                                | (t, uu___8, g1_env) ->
                                    let g2_env =
                                      let label_guard g =
                                        let uu___9 =
                                          FStar_Errors_Msg.mkmsg
                                            "Type annotation on parameter incompatible with the expected type" in
                                        FStar_TypeChecker_Util.label_guard
                                          (hd.FStar_Syntax_Syntax.sort).FStar_Syntax_Syntax.pos
                                          uu___9 g in
                                      let uu___9 =
                                        FStar_TypeChecker_Rel.teq_nosmt env1
                                          t expected_t in
                                      match uu___9 with
                                      | FStar_Pervasives_Native.Some g ->
                                          FStar_TypeChecker_Rel.resolve_implicits
                                            env1 g
                                      | FStar_Pervasives_Native.None ->
                                          if use_eq
                                          then
                                            let uu___10 =
                                              FStar_TypeChecker_Rel.teq env1
                                                t expected_t in
                                            label_guard uu___10
                                          else
                                            (let uu___11 =
                                               FStar_TypeChecker_Rel.get_subtyping_prop
                                                 env1 expected_t t in
                                             match uu___11 with
                                             | FStar_Pervasives_Native.None
                                                 ->
                                                 let uu___12 =
                                                   FStar_TypeChecker_Err.basic_type_error
                                                     env1
                                                     FStar_Pervasives_Native.None
                                                     expected_t t in
                                                 let uu___13 =
                                                   FStar_TypeChecker_Env.get_range
                                                     env1 in
                                                 FStar_Errors.raise_error_doc
                                                   uu___12 uu___13
                                             | FStar_Pervasives_Native.Some
                                                 g_env -> label_guard g_env) in
                                    let uu___9 =
                                      FStar_Class_Monoid.op_Plus_Plus
                                        FStar_TypeChecker_Common.monoid_guard_t
                                        g1_env g2_env in
                                    (t, uu___9))) in
                        match uu___3 with
                        | (t, g_env) ->
                            let hd1 =
                              {
                                FStar_Syntax_Syntax.ppname =
                                  (hd.FStar_Syntax_Syntax.ppname);
                                FStar_Syntax_Syntax.index =
                                  (hd.FStar_Syntax_Syntax.index);
                                FStar_Syntax_Syntax.sort = t
                              } in
                            let combine_attrs attrs1 attrs'1 =
                              let diff =
                                FStar_Compiler_List.filter
                                  (fun attr' ->
                                     let uu___4 =
                                       FStar_Compiler_List.existsb
                                         (fun attr ->
                                            let uu___5 =
                                              FStar_TypeChecker_TermEqAndSimplify.eq_tm
                                                env1 attr attr' in
                                            uu___5 =
                                              FStar_TypeChecker_TermEqAndSimplify.Equal)
                                         attrs1 in
                                     Prims.op_Negation uu___4) attrs'1 in
                              FStar_Compiler_List.op_At attrs1 diff in
                            let b =
                              let uu___4 = combine_attrs attrs attrs' in
                              {
                                FStar_Syntax_Syntax.binder_bv = hd1;
                                FStar_Syntax_Syntax.binder_qual = imp;
                                FStar_Syntax_Syntax.binder_positivity =
                                  pqual_expected;
                                FStar_Syntax_Syntax.binder_attrs = uu___4
                              } in
                            (check_erasable_binder_attributes env1
                               b.FStar_Syntax_Syntax.binder_attrs t;
                             (let b_expected =
                                {
                                  FStar_Syntax_Syntax.binder_bv = hd_expected;
                                  FStar_Syntax_Syntax.binder_qual = imp';
                                  FStar_Syntax_Syntax.binder_positivity =
                                    pqual_expected;
                                  FStar_Syntax_Syntax.binder_attrs = attrs'
                                } in
                              let env_b = push_binding env1 b in
                              let subst1 =
                                let uu___5 =
                                  FStar_Syntax_Syntax.bv_to_name hd1 in
                                maybe_extend_subst subst b_expected uu___5 in
                              let uu___5 =
                                aux (env_b, subst1) bs2 bs_expected2 in
                              match uu___5 with
                              | (env_bs, bs3, rest, g'_env_b, subst2) ->
                                  let g'_env =
                                    FStar_TypeChecker_Env.close_guard env_bs
                                      [b] g'_env_b in
                                  let uu___6 =
                                    FStar_Class_Monoid.op_Plus_Plus
                                      FStar_TypeChecker_Common.monoid_guard_t
                                      g_env g'_env in
                                  (env_bs, (b :: bs3), rest, uu___6, subst2))))))
                 | (rest, []) ->
                     (env1, [],
                       (FStar_Pervasives_Native.Some
                          (FStar_Pervasives.Inl rest)),
                       (FStar_Class_Monoid.mzero
                          FStar_TypeChecker_Common.monoid_guard_t), subst)
                 | ([], rest) ->
                     (env1, [],
                       (FStar_Pervasives_Native.Some
                          (FStar_Pervasives.Inr rest)),
                       (FStar_Class_Monoid.mzero
                          FStar_TypeChecker_Common.monoid_guard_t), subst)) in
          aux (env, []) bs bs_expected
and (tc_abs :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.binders ->
        FStar_Syntax_Syntax.term ->
          (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
            FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun top ->
      fun bs ->
        fun body ->
          let fail msg t =
            let uu___ =
              FStar_TypeChecker_Err.expected_a_term_of_type_t_got_a_function
                env msg t top in
            FStar_Errors.raise_error uu___ top.FStar_Syntax_Syntax.pos in
          let env0 = env in
          let uu___ = FStar_TypeChecker_Env.clear_expected_typ env in
          match uu___ with
          | (env1, topt) ->
              ((let uu___2 = FStar_Compiler_Debug.high () in
                if uu___2
                then
                  let uu___3 =
                    FStar_Class_Show.show
                      (FStar_Class_Show.show_option
                         (FStar_Class_Show.show_tuple2
                            FStar_Syntax_Print.showable_term
                            (FStar_Class_Show.printableshow
                               FStar_Class_Printable.printable_bool))) topt in
                  let uu___4 =
                    FStar_Class_Show.show
                      (FStar_Class_Show.printableshow
                         FStar_Class_Printable.printable_bool)
                      env1.FStar_TypeChecker_Env.top_level in
                  FStar_Compiler_Util.print2
                    "!!!!!!!!!!!!!!!Expected type is (%s), top_level=%s\n"
                    uu___3 uu___4
                else ());
               (let uu___2 = tc_abs_expected_function_typ env1 bs topt body in
                match uu___2 with
                | (tfun_opt, bs1, letrec_binders, c_opt, envbody, body1,
                   g_env) ->
                    ((let uu___4 = FStar_Compiler_Debug.extreme () in
                      if uu___4
                      then
                        let uu___5 =
                          FStar_Class_Show.show
                            (FStar_Class_Show.show_option
                               FStar_Syntax_Print.showable_term) tfun_opt in
                        let uu___6 =
                          FStar_Class_Show.show
                            (FStar_Class_Show.show_option
                               FStar_Syntax_Print.showable_comp) c_opt in
                        let uu___7 =
                          let uu___8 =
                            FStar_TypeChecker_Env.expected_typ envbody in
                          FStar_Class_Show.show
                            (FStar_Class_Show.show_option
                               (FStar_Class_Show.show_tuple2
                                  FStar_Syntax_Print.showable_term
                                  (FStar_Class_Show.printableshow
                                     FStar_Class_Printable.printable_bool)))
                            uu___8 in
                        FStar_Compiler_Util.print3
                          "After expected_function_typ, tfun_opt: %s, c_opt: %s, and expected type in envbody: %s\n"
                          uu___5 uu___6 uu___7
                      else ());
                     (let uu___5 = FStar_Compiler_Effect.op_Bang dbg_NYC in
                      if uu___5
                      then
                        let uu___6 =
                          FStar_Syntax_Print.binders_to_string ", " bs1 in
                        let uu___7 =
                          FStar_TypeChecker_Rel.guard_to_string env1 g_env in
                        FStar_Compiler_Util.print2
                          "!!!!!!!!!!!!!!!Guard for function with binders %s is %s\n"
                          uu___6 uu___7
                      else ());
                     (let envbody1 =
                        FStar_TypeChecker_Env.set_range envbody
                          body1.FStar_Syntax_Syntax.pos in
                      let uu___5 =
                        let uu___6 =
                          let use_eq_opt =
                            match topt with
                            | FStar_Pervasives_Native.Some (uu___7, use_eq)
                                -> FStar_Pervasives_Native.Some use_eq
                            | uu___7 -> FStar_Pervasives_Native.None in
                          let uu___7 =
                            (FStar_Compiler_Util.is_some c_opt) &&
                              (let uu___8 =
                                 let uu___9 =
                                   FStar_Syntax_Subst.compress body1 in
                                 uu___9.FStar_Syntax_Syntax.n in
                               match uu___8 with
                               | FStar_Syntax_Syntax.Tm_app
                                   { FStar_Syntax_Syntax.hd = head;
                                     FStar_Syntax_Syntax.args = args;_}
                                   when
                                   (FStar_Compiler_List.length args) =
                                     Prims.int_one
                                   ->
                                   let uu___9 =
                                     let uu___10 =
                                       FStar_Syntax_Subst.compress head in
                                     uu___10.FStar_Syntax_Syntax.n in
                                   (match uu___9 with
                                    | FStar_Syntax_Syntax.Tm_constant
                                        (FStar_Const.Const_reflect uu___10)
                                        -> true
                                    | uu___10 -> false)
                               | uu___9 -> false) in
                          if uu___7
                          then
                            let uu___8 =
                              let uu___9 =
                                FStar_TypeChecker_Env.clear_expected_typ
                                  envbody1 in
                              FStar_Pervasives_Native.fst uu___9 in
                            let uu___9 =
                              let uu___10 =
                                let uu___11 =
                                  let uu___12 =
                                    let uu___13 =
                                      let uu___14 =
                                        FStar_Compiler_Util.must c_opt in
                                      FStar_Pervasives.Inr uu___14 in
                                    let uu___14 =
                                      FStar_Compiler_Util.must use_eq_opt in
                                    (uu___13, FStar_Pervasives_Native.None,
                                      uu___14) in
                                  {
                                    FStar_Syntax_Syntax.tm = body1;
                                    FStar_Syntax_Syntax.asc = uu___12;
                                    FStar_Syntax_Syntax.eff_opt =
                                      FStar_Pervasives_Native.None
                                  } in
                                FStar_Syntax_Syntax.Tm_ascribed uu___11 in
                              FStar_Syntax_Syntax.mk uu___10
                                FStar_Compiler_Range_Type.dummyRange in
                            (uu___8, uu___9, (FStar_Pervasives.Inr ()))
                          else
                            (let uu___9 =
                               let uu___10 =
                                 let uu___11 =
                                   let uu___12 =
                                     FStar_Syntax_Subst.compress body1 in
                                   uu___12.FStar_Syntax_Syntax.n in
                                 (c_opt, uu___11) in
                               match uu___10 with
                               | (FStar_Pervasives_Native.None,
                                  FStar_Syntax_Syntax.Tm_ascribed
                                  { FStar_Syntax_Syntax.tm = uu___11;
                                    FStar_Syntax_Syntax.asc =
                                      (FStar_Pervasives.Inr expected_c,
                                       uu___12, uu___13);
                                    FStar_Syntax_Syntax.eff_opt = uu___14;_})
                                   -> FStar_Pervasives.Inr ()
                               | uu___11 ->
                                   FStar_Pervasives.Inl
                                     (FStar_Compiler_Util.dflt false
                                        use_eq_opt) in
                             (envbody1, body1, uu___9)) in
                        match uu___6 with
                        | (envbody2, body2, should_check_expected_effect) ->
                            let uu___7 =
                              tc_term
                                {
                                  FStar_TypeChecker_Env.solver =
                                    (envbody2.FStar_TypeChecker_Env.solver);
                                  FStar_TypeChecker_Env.range =
                                    (envbody2.FStar_TypeChecker_Env.range);
                                  FStar_TypeChecker_Env.curmodule =
                                    (envbody2.FStar_TypeChecker_Env.curmodule);
                                  FStar_TypeChecker_Env.gamma =
                                    (envbody2.FStar_TypeChecker_Env.gamma);
                                  FStar_TypeChecker_Env.gamma_sig =
                                    (envbody2.FStar_TypeChecker_Env.gamma_sig);
                                  FStar_TypeChecker_Env.gamma_cache =
                                    (envbody2.FStar_TypeChecker_Env.gamma_cache);
                                  FStar_TypeChecker_Env.modules =
                                    (envbody2.FStar_TypeChecker_Env.modules);
                                  FStar_TypeChecker_Env.expected_typ =
                                    (envbody2.FStar_TypeChecker_Env.expected_typ);
                                  FStar_TypeChecker_Env.sigtab =
                                    (envbody2.FStar_TypeChecker_Env.sigtab);
                                  FStar_TypeChecker_Env.attrtab =
                                    (envbody2.FStar_TypeChecker_Env.attrtab);
                                  FStar_TypeChecker_Env.instantiate_imp =
                                    (envbody2.FStar_TypeChecker_Env.instantiate_imp);
                                  FStar_TypeChecker_Env.effects =
                                    (envbody2.FStar_TypeChecker_Env.effects);
                                  FStar_TypeChecker_Env.generalize =
                                    (envbody2.FStar_TypeChecker_Env.generalize);
                                  FStar_TypeChecker_Env.letrecs =
                                    (envbody2.FStar_TypeChecker_Env.letrecs);
                                  FStar_TypeChecker_Env.top_level = false;
                                  FStar_TypeChecker_Env.check_uvars =
                                    (envbody2.FStar_TypeChecker_Env.check_uvars);
                                  FStar_TypeChecker_Env.use_eq_strict =
                                    (envbody2.FStar_TypeChecker_Env.use_eq_strict);
                                  FStar_TypeChecker_Env.is_iface =
                                    (envbody2.FStar_TypeChecker_Env.is_iface);
                                  FStar_TypeChecker_Env.admit =
                                    (envbody2.FStar_TypeChecker_Env.admit);
                                  FStar_TypeChecker_Env.lax_universes =
                                    (envbody2.FStar_TypeChecker_Env.lax_universes);
                                  FStar_TypeChecker_Env.phase1 =
                                    (envbody2.FStar_TypeChecker_Env.phase1);
                                  FStar_TypeChecker_Env.failhard =
                                    (envbody2.FStar_TypeChecker_Env.failhard);
                                  FStar_TypeChecker_Env.flychecking =
                                    (envbody2.FStar_TypeChecker_Env.flychecking);
                                  FStar_TypeChecker_Env.uvar_subtyping =
                                    (envbody2.FStar_TypeChecker_Env.uvar_subtyping);
                                  FStar_TypeChecker_Env.intactics =
                                    (envbody2.FStar_TypeChecker_Env.intactics);
                                  FStar_TypeChecker_Env.nocoerce =
                                    (envbody2.FStar_TypeChecker_Env.nocoerce);
                                  FStar_TypeChecker_Env.tc_term =
                                    (envbody2.FStar_TypeChecker_Env.tc_term);
                                  FStar_TypeChecker_Env.typeof_tot_or_gtot_term
                                    =
                                    (envbody2.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                                  FStar_TypeChecker_Env.universe_of =
                                    (envbody2.FStar_TypeChecker_Env.universe_of);
                                  FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                                    =
                                    (envbody2.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                                  FStar_TypeChecker_Env.teq_nosmt_force =
                                    (envbody2.FStar_TypeChecker_Env.teq_nosmt_force);
                                  FStar_TypeChecker_Env.subtype_nosmt_force =
                                    (envbody2.FStar_TypeChecker_Env.subtype_nosmt_force);
                                  FStar_TypeChecker_Env.qtbl_name_and_index =
                                    (envbody2.FStar_TypeChecker_Env.qtbl_name_and_index);
                                  FStar_TypeChecker_Env.normalized_eff_names
                                    =
                                    (envbody2.FStar_TypeChecker_Env.normalized_eff_names);
                                  FStar_TypeChecker_Env.fv_delta_depths =
                                    (envbody2.FStar_TypeChecker_Env.fv_delta_depths);
                                  FStar_TypeChecker_Env.proof_ns =
                                    (envbody2.FStar_TypeChecker_Env.proof_ns);
                                  FStar_TypeChecker_Env.synth_hook =
                                    (envbody2.FStar_TypeChecker_Env.synth_hook);
                                  FStar_TypeChecker_Env.try_solve_implicits_hook
                                    =
                                    (envbody2.FStar_TypeChecker_Env.try_solve_implicits_hook);
                                  FStar_TypeChecker_Env.splice =
                                    (envbody2.FStar_TypeChecker_Env.splice);
                                  FStar_TypeChecker_Env.mpreprocess =
                                    (envbody2.FStar_TypeChecker_Env.mpreprocess);
                                  FStar_TypeChecker_Env.postprocess =
                                    (envbody2.FStar_TypeChecker_Env.postprocess);
                                  FStar_TypeChecker_Env.identifier_info =
                                    (envbody2.FStar_TypeChecker_Env.identifier_info);
                                  FStar_TypeChecker_Env.tc_hooks =
                                    (envbody2.FStar_TypeChecker_Env.tc_hooks);
                                  FStar_TypeChecker_Env.dsenv =
                                    (envbody2.FStar_TypeChecker_Env.dsenv);
                                  FStar_TypeChecker_Env.nbe =
                                    (envbody2.FStar_TypeChecker_Env.nbe);
                                  FStar_TypeChecker_Env.strict_args_tab =
                                    (envbody2.FStar_TypeChecker_Env.strict_args_tab);
                                  FStar_TypeChecker_Env.erasable_types_tab =
                                    (envbody2.FStar_TypeChecker_Env.erasable_types_tab);
                                  FStar_TypeChecker_Env.enable_defer_to_tac =
                                    (envbody2.FStar_TypeChecker_Env.enable_defer_to_tac);
                                  FStar_TypeChecker_Env.unif_allow_ref_guards
                                    =
                                    (envbody2.FStar_TypeChecker_Env.unif_allow_ref_guards);
                                  FStar_TypeChecker_Env.erase_erasable_args =
                                    (envbody2.FStar_TypeChecker_Env.erase_erasable_args);
                                  FStar_TypeChecker_Env.core_check =
                                    (envbody2.FStar_TypeChecker_Env.core_check);
                                  FStar_TypeChecker_Env.missing_decl =
                                    (envbody2.FStar_TypeChecker_Env.missing_decl)
                                } body2 in
                            (match uu___7 with
                             | (body3, cbody, guard_body) ->
                                 let guard_body1 =
                                   FStar_TypeChecker_Rel.solve_non_tactic_deferred_constraints
                                     true envbody2 guard_body in
                                 (match should_check_expected_effect with
                                  | FStar_Pervasives.Inl use_eq ->
                                      let uu___8 =
                                        FStar_TypeChecker_Common.lcomp_comp
                                          cbody in
                                      (match uu___8 with
                                       | (cbody1, g_lc) ->
                                           let uu___9 =
                                             FStar_Errors.with_ctx
                                               "While checking that lambda abstraction has expected effect"
                                               (fun uu___10 ->
                                                  check_expected_effect
                                                    envbody2 use_eq c_opt
                                                    (body3, cbody1)) in
                                           (match uu___9 with
                                            | (body4, cbody2, guard) ->
                                                let uu___10 =
                                                  let uu___11 =
                                                    FStar_Class_Monoid.op_Plus_Plus
                                                      FStar_TypeChecker_Common.monoid_guard_t
                                                      guard_body1 g_lc in
                                                  FStar_Class_Monoid.op_Plus_Plus
                                                    FStar_TypeChecker_Common.monoid_guard_t
                                                    uu___11 guard in
                                                (body4, cbody2, uu___10)))
                                  | FStar_Pervasives.Inr uu___8 ->
                                      let uu___9 =
                                        FStar_TypeChecker_Common.lcomp_comp
                                          cbody in
                                      (match uu___9 with
                                       | (cbody1, g_lc) ->
                                           let uu___10 =
                                             FStar_Class_Monoid.op_Plus_Plus
                                               FStar_TypeChecker_Common.monoid_guard_t
                                               guard_body1 g_lc in
                                           (body3, cbody1, uu___10)))) in
                      match uu___5 with
                      | (body2, cbody, guard_body) ->
                          ((let uu___7 = FStar_Compiler_Debug.extreme () in
                            if uu___7
                            then
                              let uu___8 =
                                FStar_TypeChecker_Rel.guard_to_string env1
                                  guard_body in
                              FStar_Compiler_Util.print1
                                "tc_abs: guard_body: %s\n" uu___8
                            else ());
                           (let guard_body1 =
                              if env1.FStar_TypeChecker_Env.top_level
                              then
                                ((let uu___8 = FStar_Compiler_Debug.medium () in
                                  if uu___8
                                  then
                                    let uu___9 =
                                      FStar_TypeChecker_Rel.guard_to_string
                                        env1 guard_body in
                                    FStar_Compiler_Util.print1
                                      "tc_abs: FORCING guard_body: %s\n"
                                      uu___9
                                  else ());
                                 FStar_TypeChecker_Rel.discharge_guard
                                   envbody1 guard_body)
                              else guard_body in
                            let guard =
                              let guard_body2 =
                                FStar_TypeChecker_Env.close_guard envbody1
                                  (FStar_Compiler_List.op_At bs1
                                     letrec_binders) guard_body1 in
                              FStar_Class_Monoid.op_Plus_Plus
                                FStar_TypeChecker_Common.monoid_guard_t g_env
                                guard_body2 in
                            let guard1 =
                              FStar_TypeChecker_Util.close_guard_implicits
                                env1 false bs1 guard in
                            let tfun_computed =
                              FStar_Syntax_Util.arrow bs1 cbody in
                            let e =
                              let uu___7 =
                                let uu___8 =
                                  FStar_Syntax_Util.residual_comp_of_comp
                                    (FStar_Compiler_Util.dflt cbody c_opt) in
                                FStar_Pervasives_Native.Some uu___8 in
                              FStar_Syntax_Util.abs bs1 body2 uu___7 in
                            FStar_Compiler_List.iter
                              (fun b ->
                                 let uu___8 = FStar_Options.no_positivity () in
                                 if uu___8
                                 then ()
                                 else
                                   ((let uu___11 =
                                       (FStar_Syntax_Util.is_binder_unused b)
                                         &&
                                         (let uu___12 =
                                            FStar_TypeChecker_Positivity.name_unused_in_type
                                              envbody1
                                              b.FStar_Syntax_Syntax.binder_bv
                                              body2 in
                                          Prims.op_Negation uu___12) in
                                     if uu___11
                                     then
                                       let uu___12 =
                                         let uu___13 =
                                           let uu___14 =
                                             FStar_Class_Show.show
                                               FStar_Syntax_Print.showable_binder
                                               b in
                                           FStar_Compiler_Util.format1
                                             "Binder %s is marked unused, but its use in the definition is not"
                                             uu___14 in
                                         (FStar_Errors_Codes.Error_InductiveTypeNotSatisfyPositivityCondition,
                                           uu___13) in
                                       let uu___13 =
                                         FStar_Syntax_Syntax.range_of_bv
                                           b.FStar_Syntax_Syntax.binder_bv in
                                       FStar_Errors.raise_error uu___12
                                         uu___13
                                     else ());
                                    (let uu___11 =
                                       (FStar_Syntax_Util.is_binder_strictly_positive
                                          b)
                                         &&
                                         (let uu___12 =
                                            FStar_TypeChecker_Positivity.name_strictly_positive_in_type
                                              envbody1
                                              b.FStar_Syntax_Syntax.binder_bv
                                              body2 in
                                          Prims.op_Negation uu___12) in
                                     if uu___11
                                     then
                                       let uu___12 =
                                         let uu___13 =
                                           let uu___14 =
                                             FStar_Class_Show.show
                                               FStar_Syntax_Print.showable_binder
                                               b in
                                           FStar_Compiler_Util.format1
                                             "Binder %s is marked strictly positive, but its use in the definition is not"
                                             uu___14 in
                                         (FStar_Errors_Codes.Error_InductiveTypeNotSatisfyPositivityCondition,
                                           uu___13) in
                                       let uu___13 =
                                         FStar_Syntax_Syntax.range_of_bv
                                           b.FStar_Syntax_Syntax.binder_bv in
                                       FStar_Errors.raise_error uu___12
                                         uu___13
                                     else ()))) bs1;
                            (let uu___8 =
                               match tfun_opt with
                               | FStar_Pervasives_Native.Some t ->
                                   let t1 = FStar_Syntax_Subst.compress t in
                                   let uu___9 =
                                     match topt with
                                     | FStar_Pervasives_Native.Some
                                         (t2, use_eq) -> (t2, use_eq)
                                     | FStar_Pervasives_Native.None ->
                                         FStar_Compiler_Effect.failwith
                                           "Impossible! tc_abs: if tfun_computed is Some, expected topt to also be Some" in
                                   (match uu___9 with
                                    | (t_annot, use_eq) ->
                                        (match t1.FStar_Syntax_Syntax.n with
                                         | FStar_Syntax_Syntax.Tm_arrow
                                             uu___10 -> (e, t_annot, guard1)
                                         | uu___10 ->
                                             let lc =
                                               let uu___11 =
                                                 FStar_Syntax_Syntax.mk_Total
                                                   tfun_computed in
                                               FStar_TypeChecker_Common.lcomp_of_comp
                                                 uu___11 in
                                             let uu___11 =
                                               FStar_TypeChecker_Util.check_has_type_maybe_coerce
                                                 env1 e lc t1 use_eq in
                                             (match uu___11 with
                                              | (e1, uu___12, guard') ->
                                                  let guard'1 =
                                                    let uu___13 =
                                                      FStar_TypeChecker_Err.subtyping_failed
                                                        env1
                                                        lc.FStar_TypeChecker_Common.res_typ
                                                        t1 () in
                                                    FStar_TypeChecker_Util.label_guard
                                                      e1.FStar_Syntax_Syntax.pos
                                                      uu___13 guard' in
                                                  let uu___13 =
                                                    FStar_Class_Monoid.op_Plus_Plus
                                                      FStar_TypeChecker_Common.monoid_guard_t
                                                      guard1 guard'1 in
                                                  (e1, t_annot, uu___13))))
                               | FStar_Pervasives_Native.None ->
                                   (e, tfun_computed, guard1) in
                             match uu___8 with
                             | (e1, tfun, guard2) ->
                                 let c = FStar_Syntax_Syntax.mk_Total tfun in
                                 let uu___9 =
                                   let uu___10 =
                                     FStar_TypeChecker_Common.lcomp_of_comp c in
                                   FStar_TypeChecker_Util.strengthen_precondition
                                     FStar_Pervasives_Native.None env1 e1
                                     uu___10 guard2 in
                                 (match uu___9 with | (c1, g) -> (e1, c1, g)))))))))
and (check_application_args :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.comp ->
        FStar_TypeChecker_Env.guard_t ->
          (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax *
            FStar_Syntax_Syntax.arg_qualifier FStar_Pervasives_Native.option)
            Prims.list ->
            (FStar_Syntax_Syntax.typ * Prims.bool)
              FStar_Pervasives_Native.option ->
              (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
                FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun head ->
      fun chead ->
        fun ghead ->
          fun args ->
            fun expected_topt ->
              let n_args = FStar_Compiler_List.length args in
              let r = FStar_TypeChecker_Env.get_range env in
              let thead = FStar_Syntax_Util.comp_result chead in
              (let uu___1 = FStar_Compiler_Debug.high () in
               if uu___1
               then
                 let uu___2 =
                   FStar_Class_Show.show
                     FStar_Compiler_Range_Ops.showable_range
                     head.FStar_Syntax_Syntax.pos in
                 let uu___3 =
                   FStar_Class_Show.show FStar_Syntax_Print.showable_term
                     thead in
                 let uu___4 =
                   FStar_Class_Show.show FStar_Syntax_Print.showable_args
                     args in
                 FStar_Compiler_Util.print3
                   "(%s) Type of head is %s\nArgs = %s\n" uu___2 uu___3
                   uu___4
               else ());
              (let monadic_application uu___1 subst arg_comps_rev
                 arg_rets_rev guard fvs bs =
                 match uu___1 with
                 | (head1, chead1, ghead1, cres) ->
                     let uu___2 =
                       match bs with
                       | [] ->
                           let uu___3 =
                             FStar_Class_Monoid.op_Plus_Plus
                               FStar_TypeChecker_Common.monoid_guard_t ghead1
                               guard in
                           (cres, uu___3)
                       | uu___3 ->
                           let g =
                             let uu___4 =
                               FStar_Class_Monoid.op_Plus_Plus
                                 FStar_TypeChecker_Common.monoid_guard_t
                                 ghead1 guard in
                             FStar_TypeChecker_Rel.solve_deferred_constraints
                               env uu___4 in
                           let uu___4 =
                             let uu___5 = FStar_Syntax_Util.arrow bs cres in
                             FStar_Syntax_Syntax.mk_Total uu___5 in
                           (uu___4, g) in
                     (match uu___2 with
                      | (cres1, guard1) ->
                          let uu___3 =
                            check_no_escape
                              (FStar_Pervasives_Native.Some head1) env fvs
                              (FStar_Syntax_Util.comp_result cres1) in
                          (match uu___3 with
                           | (rt, g0) ->
                               let uu___4 =
                                 let uu___5 =
                                   FStar_Syntax_Util.set_result_typ cres1 rt in
                                 let uu___6 =
                                   FStar_Class_Monoid.op_Plus_Plus
                                     FStar_TypeChecker_Common.monoid_guard_t
                                     g0 guard1 in
                                 (uu___5, uu___6) in
                               (match uu___4 with
                                | (cres2, guard2) ->
                                    ((let uu___6 =
                                        FStar_Compiler_Debug.medium () in
                                      if uu___6
                                      then
                                        let uu___7 =
                                          FStar_Class_Show.show
                                            FStar_Syntax_Print.showable_comp
                                            cres2 in
                                        FStar_Compiler_Util.print1
                                          "\t Type of result cres is %s\n"
                                          uu___7
                                      else ());
                                     (let uu___6 =
                                        let uu___7 =
                                          let uu___8 =
                                            FStar_Syntax_Subst.subst_comp
                                              subst chead1 in
                                          FStar_TypeChecker_Common.lcomp_of_comp
                                            uu___8 in
                                        let uu___8 =
                                          let uu___9 =
                                            FStar_Syntax_Subst.subst_comp
                                              subst cres2 in
                                          FStar_TypeChecker_Common.lcomp_of_comp
                                            uu___9 in
                                        (uu___7, uu___8) in
                                      match uu___6 with
                                      | (chead2, cres3) ->
                                          let uu___7 =
                                            let head_is_pure_and_some_arg_is_effectful
                                              =
                                              (FStar_TypeChecker_Common.is_pure_or_ghost_lcomp
                                                 chead2)
                                                &&
                                                (FStar_Compiler_Util.for_some
                                                   (fun uu___8 ->
                                                      match uu___8 with
                                                      | (uu___9, uu___10, lc)
                                                          ->
                                                          (let uu___11 =
                                                             FStar_TypeChecker_Common.is_pure_or_ghost_lcomp
                                                               lc in
                                                           Prims.op_Negation
                                                             uu___11)
                                                            ||
                                                            (FStar_TypeChecker_Util.should_not_inline_lc
                                                               lc))
                                                   arg_comps_rev) in
                                            let term =
                                              FStar_Syntax_Syntax.mk_Tm_app
                                                head1
                                                (FStar_Compiler_List.rev
                                                   arg_rets_rev)
                                                head1.FStar_Syntax_Syntax.pos in
                                            let uu___8 =
                                              (FStar_TypeChecker_Common.is_pure_or_ghost_lcomp
                                                 cres3)
                                                &&
                                                head_is_pure_and_some_arg_is_effectful in
                                            if uu___8
                                            then
                                              ((let uu___10 =
                                                  FStar_Compiler_Debug.extreme
                                                    () in
                                                if uu___10
                                                then
                                                  let uu___11 =
                                                    FStar_Class_Show.show
                                                      FStar_Syntax_Print.showable_term
                                                      term in
                                                  FStar_Compiler_Util.print1
                                                    "(a) Monadic app: Return inserted in monadic application: %s\n"
                                                    uu___11
                                                else ());
                                               (let uu___10 =
                                                  FStar_TypeChecker_Util.maybe_assume_result_eq_pure_term
                                                    env term cres3 in
                                                (uu___10, true)))
                                            else
                                              ((let uu___11 =
                                                  FStar_Compiler_Debug.extreme
                                                    () in
                                                if uu___11
                                                then
                                                  let uu___12 =
                                                    FStar_Class_Show.show
                                                      FStar_Syntax_Print.showable_term
                                                      term in
                                                  FStar_Compiler_Util.print1
                                                    "(a) Monadic app: No return inserted in monadic application: %s\n"
                                                    uu___12
                                                else ());
                                               (cres3, false)) in
                                          (match uu___7 with
                                           | (cres4, inserted_return_in_cres)
                                               ->
                                               let comp =
                                                 let arg_rets_names_opt =
                                                   FStar_Compiler_List.map
                                                     (fun uu___8 ->
                                                        match uu___8 with
                                                        | (t, uu___9) ->
                                                            let uu___10 =
                                                              let uu___11 =
                                                                FStar_Syntax_Subst.compress
                                                                  t in
                                                              uu___11.FStar_Syntax_Syntax.n in
                                                            (match uu___10
                                                             with
                                                             | FStar_Syntax_Syntax.Tm_name
                                                                 bv ->
                                                                 FStar_Pervasives_Native.Some
                                                                   bv
                                                             | uu___11 ->
                                                                 FStar_Pervasives_Native.None))
                                                     (FStar_Compiler_List.rev
                                                        arg_rets_rev) in
                                                 let push_option_names_to_env
                                                   =
                                                   FStar_Compiler_List.fold_left
                                                     (fun env1 ->
                                                        fun name_opt ->
                                                          let uu___8 =
                                                            FStar_Compiler_Util.map_option
                                                              (FStar_TypeChecker_Env.push_bv
                                                                 env1)
                                                              name_opt in
                                                          FStar_Compiler_Util.dflt
                                                            env1 uu___8) in
                                                 let uu___8 =
                                                   FStar_Compiler_List.fold_left
                                                     (fun uu___9 ->
                                                        fun uu___10 ->
                                                          match (uu___9,
                                                                  uu___10)
                                                          with
                                                          | ((i, out_c),
                                                             ((e, q), x, c))
                                                              ->
                                                              ((let uu___12 =
                                                                  FStar_Compiler_Debug.extreme
                                                                    () in
                                                                if uu___12
                                                                then
                                                                  let uu___13
                                                                    =
                                                                    match x
                                                                    with
                                                                    | 
                                                                    FStar_Pervasives_Native.None
                                                                    -> "_"
                                                                    | 
                                                                    FStar_Pervasives_Native.Some
                                                                    x1 ->
                                                                    FStar_Class_Show.show
                                                                    FStar_Syntax_Print.showable_bv
                                                                    x1 in
                                                                  let uu___14
                                                                    =
                                                                    FStar_Class_Show.show
                                                                    FStar_Syntax_Print.showable_term
                                                                    e in
                                                                  let uu___15
                                                                    =
                                                                    FStar_TypeChecker_Common.lcomp_to_string
                                                                    c in
                                                                  FStar_Compiler_Util.print3
                                                                    "(b) Monadic app: Binding argument %s : %s of type (%s)\n"
                                                                    uu___13
                                                                    uu___14
                                                                    uu___15
                                                                else ());
                                                               (let env1 =
                                                                  if
                                                                    inserted_return_in_cres
                                                                  then
                                                                    let uu___12
                                                                    =
                                                                    let uu___13
                                                                    =
                                                                    FStar_Compiler_List.splitAt
                                                                    ((FStar_Compiler_List.length
                                                                    arg_rets_names_opt)
                                                                    - i)
                                                                    arg_rets_names_opt in
                                                                    FStar_Pervasives_Native.fst
                                                                    uu___13 in
                                                                    push_option_names_to_env
                                                                    env
                                                                    uu___12
                                                                  else env in
                                                                let uu___12 =
                                                                  FStar_TypeChecker_Common.is_pure_or_ghost_lcomp
                                                                    c in
                                                                if uu___12
                                                                then
                                                                  let uu___13
                                                                    =
                                                                    FStar_TypeChecker_Util.bind
                                                                    e.FStar_Syntax_Syntax.pos
                                                                    env1
                                                                    (FStar_Pervasives_Native.Some
                                                                    e) c
                                                                    (x,
                                                                    out_c) in
                                                                  ((i +
                                                                    Prims.int_one),
                                                                    uu___13)
                                                                else
                                                                  (let uu___14
                                                                    =
                                                                    FStar_TypeChecker_Util.bind
                                                                    e.FStar_Syntax_Syntax.pos
                                                                    env1
                                                                    FStar_Pervasives_Native.None
                                                                    c
                                                                    (x,
                                                                    out_c) in
                                                                   ((i +
                                                                    Prims.int_one),
                                                                    uu___14)))))
                                                     (Prims.int_one, cres4)
                                                     arg_comps_rev in
                                                 match uu___8 with
                                                 | (uu___9, comp1) ->
                                                     let env1 =
                                                       push_option_names_to_env
                                                         env
                                                         arg_rets_names_opt in
                                                     ((let uu___11 =
                                                         FStar_Compiler_Debug.extreme
                                                           () in
                                                       if uu___11
                                                       then
                                                         let uu___12 =
                                                           FStar_Class_Show.show
                                                             FStar_Syntax_Print.showable_term
                                                             head1 in
                                                         let uu___13 =
                                                           FStar_TypeChecker_Common.lcomp_to_string
                                                             chead2 in
                                                         FStar_Compiler_Util.print2
                                                           "(c) Monadic app: Binding head %s, chead: %s\n"
                                                           uu___12 uu___13
                                                       else ());
                                                      (let uu___11 =
                                                         FStar_TypeChecker_Common.is_pure_or_ghost_lcomp
                                                           chead2 in
                                                       if uu___11
                                                       then
                                                         FStar_TypeChecker_Util.bind
                                                           head1.FStar_Syntax_Syntax.pos
                                                           env1
                                                           (FStar_Pervasives_Native.Some
                                                              head1) chead2
                                                           (FStar_Pervasives_Native.None,
                                                             comp1)
                                                       else
                                                         FStar_TypeChecker_Util.bind
                                                           head1.FStar_Syntax_Syntax.pos
                                                           env1
                                                           FStar_Pervasives_Native.None
                                                           chead2
                                                           (FStar_Pervasives_Native.None,
                                                             comp1))) in
                                               let shortcuts_evaluation_order
                                                 =
                                                 let uu___8 =
                                                   let uu___9 =
                                                     FStar_Syntax_Subst.compress
                                                       head1 in
                                                   uu___9.FStar_Syntax_Syntax.n in
                                                 match uu___8 with
                                                 | FStar_Syntax_Syntax.Tm_fvar
                                                     fv ->
                                                     (FStar_Syntax_Syntax.fv_eq_lid
                                                        fv
                                                        FStar_Parser_Const.op_And)
                                                       ||
                                                       (FStar_Syntax_Syntax.fv_eq_lid
                                                          fv
                                                          FStar_Parser_Const.op_Or)
                                                 | uu___9 -> false in
                                               let app =
                                                 if
                                                   shortcuts_evaluation_order
                                                 then
                                                   let args1 =
                                                     FStar_Compiler_List.fold_left
                                                       (fun args2 ->
                                                          fun uu___8 ->
                                                            match uu___8 with
                                                            | (arg, uu___9,
                                                               uu___10) ->
                                                                arg :: args2)
                                                       [] arg_comps_rev in
                                                   let app1 =
                                                     FStar_Syntax_Syntax.mk_Tm_app
                                                       head1 args1 r in
                                                   let app2 =
                                                     FStar_TypeChecker_Util.maybe_lift
                                                       env app1
                                                       cres4.FStar_TypeChecker_Common.eff_name
                                                       comp.FStar_TypeChecker_Common.eff_name
                                                       comp.FStar_TypeChecker_Common.res_typ in
                                                   FStar_TypeChecker_Util.maybe_monadic
                                                     env app2
                                                     comp.FStar_TypeChecker_Common.eff_name
                                                     comp.FStar_TypeChecker_Common.res_typ
                                                 else
                                                   (let uu___9 =
                                                      let map_fun uu___10 =
                                                        match uu___10 with
                                                        | ((e, q), uu___11,
                                                           c) ->
                                                            ((let uu___13 =
                                                                FStar_Compiler_Debug.extreme
                                                                  () in
                                                              if uu___13
                                                              then
                                                                let uu___14 =
                                                                  FStar_Class_Show.show
                                                                    FStar_Syntax_Print.showable_term
                                                                    e in
                                                                let uu___15 =
                                                                  FStar_TypeChecker_Common.lcomp_to_string
                                                                    c in
                                                                FStar_Compiler_Util.print2
                                                                  "For arg e=(%s) c=(%s)... "
                                                                  uu___14
                                                                  uu___15
                                                              else ());
                                                             (let uu___13 =
                                                                FStar_TypeChecker_Common.is_pure_or_ghost_lcomp
                                                                  c in
                                                              if uu___13
                                                              then
                                                                ((let uu___15
                                                                    =
                                                                    FStar_Compiler_Debug.extreme
                                                                    () in
                                                                  if uu___15
                                                                  then
                                                                    FStar_Compiler_Util.print_string
                                                                    "... not lifting\n"
                                                                  else ());
                                                                 (FStar_Pervasives_Native.None,
                                                                   (e, q)))
                                                              else
                                                                (let warn_effectful_args
                                                                   =
                                                                   (FStar_TypeChecker_Util.must_erase_for_extraction
                                                                    env
                                                                    chead2.FStar_TypeChecker_Common.res_typ)
                                                                    &&
                                                                    (let uu___15
                                                                    =
                                                                    let uu___16
                                                                    =
                                                                    let uu___17
                                                                    =
                                                                    FStar_Syntax_Util.un_uinst
                                                                    head1 in
                                                                    uu___17.FStar_Syntax_Syntax.n in
                                                                    match uu___16
                                                                    with
                                                                    | 
                                                                    FStar_Syntax_Syntax.Tm_fvar
                                                                    fv ->
                                                                    let uu___17
                                                                    =
                                                                    FStar_Parser_Const.psconst
                                                                    "ignore" in
                                                                    FStar_Syntax_Syntax.fv_eq_lid
                                                                    fv
                                                                    uu___17
                                                                    | 
                                                                    uu___17
                                                                    -> true in
                                                                    Prims.op_Negation
                                                                    uu___15) in
                                                                 if
                                                                   warn_effectful_args
                                                                 then
                                                                   (let uu___16
                                                                    =
                                                                    let uu___17
                                                                    =
                                                                    let uu___18
                                                                    =
                                                                    FStar_Class_Show.show
                                                                    FStar_Syntax_Print.showable_term
                                                                    e in
                                                                    let uu___19
                                                                    =
                                                                    FStar_Class_Show.show
                                                                    FStar_Ident.showable_lident
                                                                    c.FStar_TypeChecker_Common.eff_name in
                                                                    let uu___20
                                                                    =
                                                                    FStar_Class_Show.show
                                                                    FStar_Syntax_Print.showable_term
                                                                    head1 in
                                                                    FStar_Compiler_Util.format3
                                                                    "Effectful argument %s (%s) to erased function %s, consider let binding it"
                                                                    uu___18
                                                                    uu___19
                                                                    uu___20 in
                                                                    (FStar_Errors_Codes.Warning_EffectfulArgumentToErasedFunction,
                                                                    uu___17) in
                                                                    FStar_Errors.log_issue
                                                                    e.FStar_Syntax_Syntax.pos
                                                                    uu___16)
                                                                 else ();
                                                                 (let uu___17
                                                                    =
                                                                    FStar_Compiler_Debug.extreme
                                                                    () in
                                                                  if uu___17
                                                                  then
                                                                    FStar_Compiler_Util.print_string
                                                                    "... lifting!\n"
                                                                  else ());
                                                                 (let x =
                                                                    FStar_Syntax_Syntax.new_bv
                                                                    FStar_Pervasives_Native.None
                                                                    c.FStar_TypeChecker_Common.res_typ in
                                                                  let e1 =
                                                                    FStar_TypeChecker_Util.maybe_lift
                                                                    env e
                                                                    c.FStar_TypeChecker_Common.eff_name
                                                                    comp.FStar_TypeChecker_Common.eff_name
                                                                    c.FStar_TypeChecker_Common.res_typ in
                                                                  let uu___17
                                                                    =
                                                                    let uu___18
                                                                    =
                                                                    FStar_Syntax_Syntax.bv_to_name
                                                                    x in
                                                                    (uu___18,
                                                                    q) in
                                                                  ((FStar_Pervasives_Native.Some
                                                                    (x,
                                                                    (c.FStar_TypeChecker_Common.eff_name),
                                                                    (c.FStar_TypeChecker_Common.res_typ),
                                                                    e1)),
                                                                    uu___17))))) in
                                                      let uu___10 =
                                                        let uu___11 =
                                                          let uu___12 =
                                                            let uu___13 =
                                                              let uu___14 =
                                                                FStar_Syntax_Syntax.as_arg
                                                                  head1 in
                                                              (uu___14,
                                                                FStar_Pervasives_Native.None,
                                                                chead2) in
                                                            uu___13 ::
                                                              arg_comps_rev in
                                                          FStar_Compiler_List.map
                                                            map_fun uu___12 in
                                                        FStar_Compiler_List.split
                                                          uu___11 in
                                                      match uu___10 with
                                                      | (lifted_args,
                                                         reverse_args) ->
                                                          let uu___11 =
                                                            let uu___12 =
                                                              FStar_Compiler_List.hd
                                                                reverse_args in
                                                            FStar_Pervasives_Native.fst
                                                              uu___12 in
                                                          let uu___12 =
                                                            let uu___13 =
                                                              FStar_Compiler_List.tl
                                                                reverse_args in
                                                            FStar_Compiler_List.rev
                                                              uu___13 in
                                                          (lifted_args,
                                                            uu___11, uu___12) in
                                                    match uu___9 with
                                                    | (lifted_args, head2,
                                                       args1) ->
                                                        let app1 =
                                                          FStar_Syntax_Syntax.mk_Tm_app
                                                            head2 args1 r in
                                                        let app2 =
                                                          FStar_TypeChecker_Util.maybe_lift
                                                            env app1
                                                            cres4.FStar_TypeChecker_Common.eff_name
                                                            comp.FStar_TypeChecker_Common.eff_name
                                                            comp.FStar_TypeChecker_Common.res_typ in
                                                        let app3 =
                                                          FStar_TypeChecker_Util.maybe_monadic
                                                            env app2
                                                            comp.FStar_TypeChecker_Common.eff_name
                                                            comp.FStar_TypeChecker_Common.res_typ in
                                                        let bind_lifted_args
                                                          e uu___10 =
                                                          match uu___10 with
                                                          | FStar_Pervasives_Native.None
                                                              -> e
                                                          | FStar_Pervasives_Native.Some
                                                              (x, m, t, e1)
                                                              ->
                                                              let lb =
                                                                FStar_Syntax_Util.mk_letbinding
                                                                  (FStar_Pervasives.Inl
                                                                    x) [] t m
                                                                  e1 []
                                                                  e1.FStar_Syntax_Syntax.pos in
                                                              let letbinding
                                                                =
                                                                let uu___11 =
                                                                  let uu___12
                                                                    =
                                                                    let uu___13
                                                                    =
                                                                    let uu___14
                                                                    =
                                                                    let uu___15
                                                                    =
                                                                    FStar_Syntax_Syntax.mk_binder
                                                                    x in
                                                                    [uu___15] in
                                                                    FStar_Syntax_Subst.close
                                                                    uu___14 e in
                                                                    {
                                                                    FStar_Syntax_Syntax.lbs
                                                                    =
                                                                    (false,
                                                                    [lb]);
                                                                    FStar_Syntax_Syntax.body1
                                                                    = uu___13
                                                                    } in
                                                                  FStar_Syntax_Syntax.Tm_let
                                                                    uu___12 in
                                                                FStar_Syntax_Syntax.mk
                                                                  uu___11
                                                                  e.FStar_Syntax_Syntax.pos in
                                                              FStar_Syntax_Syntax.mk
                                                                (FStar_Syntax_Syntax.Tm_meta
                                                                   {
                                                                    FStar_Syntax_Syntax.tm2
                                                                    =
                                                                    letbinding;
                                                                    FStar_Syntax_Syntax.meta
                                                                    =
                                                                    (FStar_Syntax_Syntax.Meta_monadic
                                                                    (m,
                                                                    (comp.FStar_TypeChecker_Common.res_typ)))
                                                                   })
                                                                e.FStar_Syntax_Syntax.pos in
                                                        FStar_Compiler_List.fold_left
                                                          bind_lifted_args
                                                          app3 lifted_args) in
                                               let uu___8 =
                                                 FStar_TypeChecker_Util.strengthen_precondition
                                                   FStar_Pervasives_Native.None
                                                   env app comp guard2 in
                                               (match uu___8 with
                                                | (comp1, g) ->
                                                    ((let uu___10 =
                                                        FStar_Compiler_Debug.extreme
                                                          () in
                                                      if uu___10
                                                      then
                                                        let uu___11 =
                                                          FStar_Class_Show.show
                                                            FStar_Syntax_Print.showable_term
                                                            app in
                                                        let uu___12 =
                                                          FStar_TypeChecker_Common.lcomp_to_string
                                                            comp1 in
                                                        FStar_Compiler_Util.print2
                                                          "(d) Monadic app: type of app\n\t(%s)\n\t: %s\n"
                                                          uu___11 uu___12
                                                      else ());
                                                     (app, comp1, g))))))))) in
               let rec tc_args head_info uu___1 bs args1 =
                 match uu___1 with
                 | (subst, outargs, arg_rets, g, fvs) ->
                     let instantiate_one_and_go b rest_bs args2 =
                       let r1 =
                         match outargs with
                         | [] -> head.FStar_Syntax_Syntax.pos
                         | ((t, uu___2), uu___3, uu___4)::uu___5 ->
                             let uu___6 =
                               FStar_Compiler_Range_Type.def_range
                                 head.FStar_Syntax_Syntax.pos in
                             let uu___7 =
                               let uu___8 =
                                 FStar_Compiler_Range_Type.use_range
                                   head.FStar_Syntax_Syntax.pos in
                               let uu___9 =
                                 FStar_Compiler_Range_Type.use_range
                                   t.FStar_Syntax_Syntax.pos in
                               FStar_Compiler_Range_Ops.union_rng uu___8
                                 uu___9 in
                             FStar_Compiler_Range_Type.range_of_rng uu___6
                               uu___7 in
                       let b1 = FStar_Syntax_Subst.subst_binder subst b in
                       let uu___2 =
                         FStar_TypeChecker_Util.instantiate_one_binder env r1
                           b1 in
                       match uu___2 with
                       | (tm, ty, aq, g') ->
                           let uu___3 =
                             check_no_escape
                               (FStar_Pervasives_Native.Some head) env fvs ty in
                           (match uu___3 with
                            | (ty1, g_ex) ->
                                let guard =
                                  let uu___4 =
                                    FStar_Class_Monoid.op_Plus_Plus
                                      FStar_TypeChecker_Common.monoid_guard_t
                                      g g' in
                                  FStar_Class_Monoid.op_Plus_Plus
                                    FStar_TypeChecker_Common.monoid_guard_t
                                    uu___4 g_ex in
                                let arg = (tm, aq) in
                                let subst1 =
                                  (FStar_Syntax_Syntax.NT
                                     ((b1.FStar_Syntax_Syntax.binder_bv), tm))
                                  :: subst in
                                let uu___4 =
                                  let uu___5 =
                                    let uu___6 =
                                      let uu___7 =
                                        let uu___8 =
                                          FStar_Syntax_Syntax.mk_Total ty1 in
                                        FStar_TypeChecker_Common.lcomp_of_comp
                                          uu___8 in
                                      (arg, FStar_Pervasives_Native.None,
                                        uu___7) in
                                    uu___6 :: outargs in
                                  (subst1, uu___5, (arg :: arg_rets), guard,
                                    fvs) in
                                tc_args head_info uu___4 rest_bs args2) in
                     (match (bs, args1) with
                      | ({ FStar_Syntax_Syntax.binder_bv = x;
                           FStar_Syntax_Syntax.binder_qual =
                             FStar_Pervasives_Native.Some
                             (FStar_Syntax_Syntax.Implicit uu___2);
                           FStar_Syntax_Syntax.binder_positivity = uu___3;
                           FStar_Syntax_Syntax.binder_attrs = uu___4;_}::rest,
                         (uu___5, FStar_Pervasives_Native.None)::uu___6) ->
                          let uu___7 = FStar_Compiler_List.hd bs in
                          instantiate_one_and_go uu___7 rest args1
                      | ({ FStar_Syntax_Syntax.binder_bv = x;
                           FStar_Syntax_Syntax.binder_qual =
                             FStar_Pervasives_Native.Some
                             (FStar_Syntax_Syntax.Meta uu___2);
                           FStar_Syntax_Syntax.binder_positivity = uu___3;
                           FStar_Syntax_Syntax.binder_attrs = uu___4;_}::rest,
                         (uu___5, FStar_Pervasives_Native.None)::uu___6) ->
                          let uu___7 = FStar_Compiler_List.hd bs in
                          instantiate_one_and_go uu___7 rest args1
                      | ({ FStar_Syntax_Syntax.binder_bv = x;
                           FStar_Syntax_Syntax.binder_qual =
                             FStar_Pervasives_Native.Some
                             (FStar_Syntax_Syntax.Meta tau);
                           FStar_Syntax_Syntax.binder_positivity = uu___2;
                           FStar_Syntax_Syntax.binder_attrs = b_attrs;_}::rest,
                         ({
                            FStar_Syntax_Syntax.n =
                              FStar_Syntax_Syntax.Tm_unknown;
                            FStar_Syntax_Syntax.pos = uu___3;
                            FStar_Syntax_Syntax.vars = uu___4;
                            FStar_Syntax_Syntax.hash_code = uu___5;_},
                          FStar_Pervasives_Native.Some
                          { FStar_Syntax_Syntax.aqual_implicit = true;
                            FStar_Syntax_Syntax.aqual_attributes = uu___6;_})::rest')
                          ->
                          let uu___7 = FStar_Compiler_List.hd bs in
                          instantiate_one_and_go uu___7 rest rest'
                      | ({ FStar_Syntax_Syntax.binder_bv = x;
                           FStar_Syntax_Syntax.binder_qual = bqual;
                           FStar_Syntax_Syntax.binder_positivity = uu___2;
                           FStar_Syntax_Syntax.binder_attrs = b_attrs;_}::rest,
                         (e, aq)::rest') ->
                          let aq1 =
                            let uu___3 = FStar_Compiler_List.hd bs in
                            check_expected_aqual_for_binder aq uu___3
                              e.FStar_Syntax_Syntax.pos in
                          let targ =
                            FStar_Syntax_Subst.subst subst
                              x.FStar_Syntax_Syntax.sort in
                          let bqual1 =
                            FStar_Syntax_Subst.subst_bqual subst bqual in
                          let x1 =
                            {
                              FStar_Syntax_Syntax.ppname =
                                (x.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (x.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = targ
                            } in
                          ((let uu___4 = FStar_Compiler_Debug.extreme () in
                            if uu___4
                            then
                              let uu___5 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_bv x1 in
                              let uu___6 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term
                                  x1.FStar_Syntax_Syntax.sort in
                              let uu___7 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term e in
                              let uu___8 =
                                FStar_Class_Show.show
                                  (FStar_Class_Show.show_list
                                     FStar_Syntax_Print.showable_subst_elt)
                                  subst in
                              let uu___9 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term targ in
                              FStar_Compiler_Util.print5
                                "\tFormal is %s : %s\tType of arg %s (after subst %s) = %s\n"
                                uu___5 uu___6 uu___7 uu___8 uu___9
                            else ());
                           (let uu___4 =
                              check_no_escape
                                (FStar_Pervasives_Native.Some head) env fvs
                                targ in
                            match uu___4 with
                            | (targ1, g_ex) ->
                                let env1 =
                                  FStar_TypeChecker_Env.set_expected_typ_maybe_eq
                                    env targ1 (is_eq bqual1) in
                                ((let uu___6 = FStar_Compiler_Debug.high () in
                                  if uu___6
                                  then
                                    let uu___7 =
                                      FStar_Syntax_Print.tag_of_term e in
                                    let uu___8 =
                                      FStar_Class_Show.show
                                        FStar_Syntax_Print.showable_term e in
                                    let uu___9 =
                                      FStar_Class_Show.show
                                        FStar_Syntax_Print.showable_term
                                        targ1 in
                                    let uu___10 =
                                      FStar_Compiler_Util.string_of_bool
                                        (is_eq bqual1) in
                                    FStar_Compiler_Util.print4
                                      "Checking arg (%s) %s at type %s with use_eq:%s\n"
                                      uu___7 uu___8 uu___9 uu___10
                                  else ());
                                 (let uu___6 = tc_term env1 e in
                                  match uu___6 with
                                  | (e1, c, g_e) ->
                                      let g1 =
                                        let uu___7 =
                                          FStar_Class_Monoid.op_Plus_Plus
                                            FStar_TypeChecker_Common.monoid_guard_t
                                            g_ex g in
                                        FStar_Class_Monoid.op_Plus_Plus
                                          FStar_TypeChecker_Common.monoid_guard_t
                                          uu___7 g_e in
                                      let arg = (e1, aq1) in
                                      let xterm =
                                        let uu___7 =
                                          FStar_Syntax_Syntax.bv_to_name x1 in
                                        (uu___7, aq1) in
                                      let uu___7 =
                                        (FStar_TypeChecker_Common.is_tot_or_gtot_lcomp
                                           c)
                                          ||
                                          (FStar_TypeChecker_Util.is_pure_or_ghost_effect
                                             env1
                                             c.FStar_TypeChecker_Common.eff_name) in
                                      if uu___7
                                      then
                                        let subst1 =
                                          let uu___8 =
                                            FStar_Compiler_List.hd bs in
                                          maybe_extend_subst subst uu___8 e1 in
                                        tc_args head_info
                                          (subst1,
                                            ((arg,
                                               (FStar_Pervasives_Native.Some
                                                  x1), c) :: outargs), (xterm
                                            :: arg_rets), g1, fvs) rest rest'
                                      else
                                        tc_args head_info
                                          (subst,
                                            ((arg,
                                               (FStar_Pervasives_Native.Some
                                                  x1), c) :: outargs), (xterm
                                            :: arg_rets), g1, (x1 :: fvs))
                                          rest rest'))))
                      | (uu___2, []) ->
                          monadic_application head_info subst outargs
                            arg_rets g fvs bs
                      | ([], arg::uu___2) ->
                          let uu___3 =
                            monadic_application head_info subst outargs
                              arg_rets g fvs [] in
                          (match uu___3 with
                           | (head1, chead1, ghead1) ->
                               let uu___4 =
                                 let uu___5 =
                                   FStar_TypeChecker_Common.lcomp_comp chead1 in
                                 match uu___5 with
                                 | (c, g1) ->
                                     let uu___6 =
                                       FStar_Class_Monoid.op_Plus_Plus
                                         FStar_TypeChecker_Common.monoid_guard_t
                                         ghead1 g1 in
                                     (c, uu___6) in
                               (match uu___4 with
                                | (chead2, ghead2) ->
                                    let rec aux norm1 solve ghead3 tres =
                                      let tres1 =
                                        let uu___5 =
                                          let uu___6 =
                                            FStar_Syntax_Subst.compress tres in
                                          FStar_Syntax_Util.unrefine uu___6 in
                                        FStar_Syntax_Util.unmeta_safe uu___5 in
                                      match tres1.FStar_Syntax_Syntax.n with
                                      | FStar_Syntax_Syntax.Tm_arrow
                                          { FStar_Syntax_Syntax.bs1 = bs1;
                                            FStar_Syntax_Syntax.comp = cres';_}
                                          ->
                                          let uu___5 =
                                            FStar_Syntax_Subst.open_comp bs1
                                              cres' in
                                          (match uu___5 with
                                           | (bs2, cres'1) ->
                                               let head_info1 =
                                                 (head1, chead2, ghead3,
                                                   cres'1) in
                                               ((let uu___7 =
                                                   FStar_Compiler_Debug.low
                                                     () in
                                                 if uu___7
                                                 then
                                                   FStar_Errors.log_issue
                                                     tres1.FStar_Syntax_Syntax.pos
                                                     (FStar_Errors_Codes.Warning_RedundantExplicitCurrying,
                                                       "Potentially redundant explicit currying of a function type")
                                                 else ());
                                                tc_args head_info1
                                                  ([], [], [],
                                                    (FStar_Class_Monoid.mzero
                                                       FStar_TypeChecker_Common.monoid_guard_t),
                                                    []) bs2 args1))
                                      | uu___5 when Prims.op_Negation norm1
                                          ->
                                          let rec norm_tres tres2 =
                                            let tres3 =
                                              let uu___6 =
                                                FStar_TypeChecker_Normalize.unfold_whnf
                                                  env tres2 in
                                              FStar_Syntax_Util.unascribe
                                                uu___6 in
                                            let uu___6 =
                                              let uu___7 =
                                                FStar_Syntax_Subst.compress
                                                  tres3 in
                                              uu___7.FStar_Syntax_Syntax.n in
                                            match uu___6 with
                                            | FStar_Syntax_Syntax.Tm_refine
                                                {
                                                  FStar_Syntax_Syntax.b =
                                                    {
                                                      FStar_Syntax_Syntax.ppname
                                                        = uu___7;
                                                      FStar_Syntax_Syntax.index
                                                        = uu___8;
                                                      FStar_Syntax_Syntax.sort
                                                        = tres4;_};
                                                  FStar_Syntax_Syntax.phi =
                                                    uu___9;_}
                                                -> norm_tres tres4
                                            | uu___7 -> tres3 in
                                          let uu___6 = norm_tres tres1 in
                                          aux true solve ghead3 uu___6
                                      | uu___5 when Prims.op_Negation solve
                                          ->
                                          let ghead4 =
                                            FStar_TypeChecker_Rel.solve_deferred_constraints
                                              env ghead3 in
                                          aux norm1 true ghead4 tres1
                                      | uu___5 ->
                                          let uu___6 =
                                            let uu___7 =
                                              let uu___8 =
                                                let uu___9 =
                                                  FStar_Errors_Msg.text
                                                    "Too many arguments to function of type" in
                                                let uu___10 =
                                                  FStar_Class_PP.pp
                                                    FStar_Syntax_Print.pretty_term
                                                    thead in
                                                FStar_Pprint.prefix
                                                  (Prims.of_int (4))
                                                  Prims.int_one uu___9
                                                  uu___10 in
                                              let uu___9 =
                                                let uu___10 =
                                                  let uu___11 =
                                                    FStar_Errors_Msg.text
                                                      "Got" in
                                                  let uu___12 =
                                                    let uu___13 =
                                                      FStar_Class_PP.pp
                                                        FStar_Class_PP.pp_int
                                                        n_args in
                                                    let uu___14 =
                                                      FStar_Errors_Msg.text
                                                        "arguments" in
                                                    FStar_Pprint.op_Hat_Slash_Hat
                                                      uu___13 uu___14 in
                                                  FStar_Pprint.op_Hat_Slash_Hat
                                                    uu___11 uu___12 in
                                                let uu___11 =
                                                  let uu___12 =
                                                    let uu___13 =
                                                      FStar_Errors_Msg.text
                                                        "Remaining type is" in
                                                    let uu___14 =
                                                      FStar_Class_PP.pp
                                                        FStar_Syntax_Print.pretty_term
                                                        tres1 in
                                                    FStar_Pprint.prefix
                                                      (Prims.of_int (4))
                                                      Prims.int_one uu___13
                                                      uu___14 in
                                                  [uu___12] in
                                                uu___10 :: uu___11 in
                                              uu___8 :: uu___9 in
                                            (FStar_Errors_Codes.Fatal_ToManyArgumentToFunction,
                                              uu___7) in
                                          let uu___7 =
                                            FStar_Syntax_Syntax.argpos arg in
                                          FStar_Errors.raise_error_doc uu___6
                                            uu___7 in
                                    aux false false ghead2
                                      (FStar_Syntax_Util.comp_result chead2)))) in
               let rec check_function_app tf guard =
                 let tf1 = FStar_TypeChecker_Normalize.unfold_whnf env tf in
                 let uu___1 =
                   let uu___2 = FStar_Syntax_Util.unmeta tf1 in
                   uu___2.FStar_Syntax_Syntax.n in
                 match uu___1 with
                 | FStar_Syntax_Syntax.Tm_uvar uu___2 ->
                     let uu___3 =
                       FStar_Compiler_List.fold_right
                         (fun uu___4 ->
                            fun uu___5 ->
                              match uu___5 with
                              | (bs, guard1) ->
                                  let uu___6 =
                                    let uu___7 =
                                      let uu___8 =
                                        FStar_Syntax_Util.type_u () in
                                      FStar_Pervasives_Native.fst uu___8 in
                                    FStar_TypeChecker_Util.new_implicit_var
                                      "formal parameter"
                                      tf1.FStar_Syntax_Syntax.pos env uu___7 in
                                  (match uu___6 with
                                   | (t, uu___7, g) ->
                                       let uu___8 =
                                         let uu___9 =
                                           FStar_Syntax_Syntax.null_binder t in
                                         uu___9 :: bs in
                                       let uu___9 =
                                         FStar_Class_Monoid.op_Plus_Plus
                                           FStar_TypeChecker_Common.monoid_guard_t
                                           g guard1 in
                                       (uu___8, uu___9))) args ([], guard) in
                     (match uu___3 with
                      | (bs, guard1) ->
                          let uu___4 =
                            let uu___5 =
                              let uu___6 =
                                let uu___7 = FStar_Syntax_Util.type_u () in
                                FStar_Pervasives_Native.fst uu___7 in
                              FStar_TypeChecker_Util.new_implicit_var
                                "result type" tf1.FStar_Syntax_Syntax.pos env
                                uu___6 in
                            match uu___5 with
                            | (t, uu___6, g) ->
                                let uu___7 = FStar_Options.ml_ish () in
                                if uu___7
                                then
                                  let uu___8 = FStar_Syntax_Util.ml_comp t r in
                                  let uu___9 =
                                    FStar_Class_Monoid.op_Plus_Plus
                                      FStar_TypeChecker_Common.monoid_guard_t
                                      guard1 g in
                                  (uu___8, uu___9)
                                else
                                  (let uu___9 =
                                     FStar_Syntax_Syntax.mk_Total t in
                                   let uu___10 =
                                     FStar_Class_Monoid.op_Plus_Plus
                                       FStar_TypeChecker_Common.monoid_guard_t
                                       guard1 g in
                                   (uu___9, uu___10)) in
                          (match uu___4 with
                           | (cres, guard2) ->
                               let bs_cres = FStar_Syntax_Util.arrow bs cres in
                               ((let uu___6 = FStar_Compiler_Debug.extreme () in
                                 if uu___6
                                 then
                                   let uu___7 =
                                     FStar_Class_Show.show
                                       FStar_Syntax_Print.showable_term head in
                                   let uu___8 =
                                     FStar_Class_Show.show
                                       FStar_Syntax_Print.showable_term tf1 in
                                   let uu___9 =
                                     FStar_Class_Show.show
                                       FStar_Syntax_Print.showable_term
                                       bs_cres in
                                   FStar_Compiler_Util.print3
                                     "Forcing the type of %s from %s to %s\n"
                                     uu___7 uu___8 uu___9
                                 else ());
                                (let g =
                                   let uu___6 =
                                     FStar_TypeChecker_Rel.teq env tf1
                                       bs_cres in
                                   FStar_TypeChecker_Rel.solve_deferred_constraints
                                     env uu___6 in
                                 let uu___6 =
                                   FStar_Class_Monoid.op_Plus_Plus
                                     FStar_TypeChecker_Common.monoid_guard_t
                                     g guard2 in
                                 check_function_app bs_cres uu___6))))
                 | FStar_Syntax_Syntax.Tm_app
                     {
                       FStar_Syntax_Syntax.hd =
                         {
                           FStar_Syntax_Syntax.n =
                             FStar_Syntax_Syntax.Tm_uvar uu___2;
                           FStar_Syntax_Syntax.pos = uu___3;
                           FStar_Syntax_Syntax.vars = uu___4;
                           FStar_Syntax_Syntax.hash_code = uu___5;_};
                       FStar_Syntax_Syntax.args = uu___6;_}
                     ->
                     let uu___7 =
                       FStar_Compiler_List.fold_right
                         (fun uu___8 ->
                            fun uu___9 ->
                              match uu___9 with
                              | (bs, guard1) ->
                                  let uu___10 =
                                    let uu___11 =
                                      let uu___12 =
                                        FStar_Syntax_Util.type_u () in
                                      FStar_Pervasives_Native.fst uu___12 in
                                    FStar_TypeChecker_Util.new_implicit_var
                                      "formal parameter"
                                      tf1.FStar_Syntax_Syntax.pos env uu___11 in
                                  (match uu___10 with
                                   | (t, uu___11, g) ->
                                       let uu___12 =
                                         let uu___13 =
                                           FStar_Syntax_Syntax.null_binder t in
                                         uu___13 :: bs in
                                       let uu___13 =
                                         FStar_Class_Monoid.op_Plus_Plus
                                           FStar_TypeChecker_Common.monoid_guard_t
                                           g guard1 in
                                       (uu___12, uu___13))) args ([], guard) in
                     (match uu___7 with
                      | (bs, guard1) ->
                          let uu___8 =
                            let uu___9 =
                              let uu___10 =
                                let uu___11 = FStar_Syntax_Util.type_u () in
                                FStar_Pervasives_Native.fst uu___11 in
                              FStar_TypeChecker_Util.new_implicit_var
                                "result type" tf1.FStar_Syntax_Syntax.pos env
                                uu___10 in
                            match uu___9 with
                            | (t, uu___10, g) ->
                                let uu___11 = FStar_Options.ml_ish () in
                                if uu___11
                                then
                                  let uu___12 = FStar_Syntax_Util.ml_comp t r in
                                  let uu___13 =
                                    FStar_Class_Monoid.op_Plus_Plus
                                      FStar_TypeChecker_Common.monoid_guard_t
                                      guard1 g in
                                  (uu___12, uu___13)
                                else
                                  (let uu___13 =
                                     FStar_Syntax_Syntax.mk_Total t in
                                   let uu___14 =
                                     FStar_Class_Monoid.op_Plus_Plus
                                       FStar_TypeChecker_Common.monoid_guard_t
                                       guard1 g in
                                   (uu___13, uu___14)) in
                          (match uu___8 with
                           | (cres, guard2) ->
                               let bs_cres = FStar_Syntax_Util.arrow bs cres in
                               ((let uu___10 =
                                   FStar_Compiler_Debug.extreme () in
                                 if uu___10
                                 then
                                   let uu___11 =
                                     FStar_Class_Show.show
                                       FStar_Syntax_Print.showable_term head in
                                   let uu___12 =
                                     FStar_Class_Show.show
                                       FStar_Syntax_Print.showable_term tf1 in
                                   let uu___13 =
                                     FStar_Class_Show.show
                                       FStar_Syntax_Print.showable_term
                                       bs_cres in
                                   FStar_Compiler_Util.print3
                                     "Forcing the type of %s from %s to %s\n"
                                     uu___11 uu___12 uu___13
                                 else ());
                                (let g =
                                   let uu___10 =
                                     FStar_TypeChecker_Rel.teq env tf1
                                       bs_cres in
                                   FStar_TypeChecker_Rel.solve_deferred_constraints
                                     env uu___10 in
                                 let uu___10 =
                                   FStar_Class_Monoid.op_Plus_Plus
                                     FStar_TypeChecker_Common.monoid_guard_t
                                     g guard2 in
                                 check_function_app bs_cres uu___10))))
                 | FStar_Syntax_Syntax.Tm_arrow
                     { FStar_Syntax_Syntax.bs1 = bs;
                       FStar_Syntax_Syntax.comp = c;_}
                     ->
                     let uu___2 = FStar_Syntax_Subst.open_comp bs c in
                     (match uu___2 with
                      | (bs1, c1) ->
                          let head_info = (head, chead, ghead, c1) in
                          ((let uu___4 = FStar_Compiler_Debug.extreme () in
                            if uu___4
                            then
                              let uu___5 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term head in
                              let uu___6 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term tf1 in
                              let uu___7 =
                                FStar_Syntax_Print.binders_to_string ", " bs1 in
                              let uu___8 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_comp c1 in
                              FStar_Compiler_Util.print4
                                "######tc_args of head %s @ %s with formals=%s and result type=%s\n"
                                uu___5 uu___6 uu___7 uu___8
                            else ());
                           tc_args head_info ([], [], [], guard, []) bs1 args))
                 | FStar_Syntax_Syntax.Tm_refine
                     { FStar_Syntax_Syntax.b = bv;
                       FStar_Syntax_Syntax.phi = uu___2;_}
                     -> check_function_app bv.FStar_Syntax_Syntax.sort guard
                 | FStar_Syntax_Syntax.Tm_ascribed
                     { FStar_Syntax_Syntax.tm = t;
                       FStar_Syntax_Syntax.asc = uu___2;
                       FStar_Syntax_Syntax.eff_opt = uu___3;_}
                     -> check_function_app t guard
                 | uu___2 ->
                     let uu___3 =
                       FStar_TypeChecker_Err.expected_function_typ env tf1 in
                     FStar_Errors.raise_error_doc uu___3
                       head.FStar_Syntax_Syntax.pos in
               check_function_app thead
                 (FStar_Class_Monoid.mzero
                    FStar_TypeChecker_Common.monoid_guard_t))
and (check_short_circuit_args :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.comp ->
        FStar_TypeChecker_Env.guard_t ->
          (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax *
            FStar_Syntax_Syntax.arg_qualifier FStar_Pervasives_Native.option)
            Prims.list ->
            (FStar_Syntax_Syntax.typ * Prims.bool)
              FStar_Pervasives_Native.option ->
              (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
                FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun head ->
      fun chead ->
        fun g_head ->
          fun args ->
            fun expected_topt ->
              let r = FStar_TypeChecker_Env.get_range env in
              let tf =
                FStar_Syntax_Subst.compress
                  (FStar_Syntax_Util.comp_result chead) in
              match tf.FStar_Syntax_Syntax.n with
              | FStar_Syntax_Syntax.Tm_arrow
                  { FStar_Syntax_Syntax.bs1 = bs;
                    FStar_Syntax_Syntax.comp = c;_}
                  when
                  (FStar_Syntax_Util.is_total_comp c) &&
                    ((FStar_Compiler_List.length bs) =
                       (FStar_Compiler_List.length args))
                  ->
                  let res_t = FStar_Syntax_Util.comp_result c in
                  let uu___ =
                    FStar_Compiler_List.fold_left2
                      (fun uu___1 ->
                         fun uu___2 ->
                           fun b ->
                             match (uu___1, uu___2) with
                             | ((seen, guard, ghost), (e, aq)) ->
                                 let aq1 =
                                   check_expected_aqual_for_binder aq b
                                     e.FStar_Syntax_Syntax.pos in
                                 let uu___3 =
                                   tc_check_tot_or_gtot_term env e
                                     (b.FStar_Syntax_Syntax.binder_bv).FStar_Syntax_Syntax.sort
                                     "arguments to short circuiting operators must be pure or ghost" in
                                 (match uu___3 with
                                  | (e1, c1, g) ->
                                      let short =
                                        FStar_TypeChecker_Util.short_circuit
                                          head seen in
                                      let g1 =
                                        let uu___4 =
                                          FStar_TypeChecker_Env.guard_of_guard_formula
                                            short in
                                        FStar_TypeChecker_Env.imp_guard
                                          uu___4 g in
                                      let ghost1 =
                                        ghost ||
                                          ((let uu___4 =
                                              FStar_TypeChecker_Common.is_total_lcomp
                                                c1 in
                                            Prims.op_Negation uu___4) &&
                                             (let uu___4 =
                                                FStar_TypeChecker_Util.is_pure_effect
                                                  env
                                                  c1.FStar_TypeChecker_Common.eff_name in
                                              Prims.op_Negation uu___4)) in
                                      let uu___4 =
                                        FStar_Class_Monoid.op_Plus_Plus
                                          FStar_TypeChecker_Common.monoid_guard_t
                                          guard g1 in
                                      ((FStar_Compiler_List.op_At seen
                                          [(e1, aq1)]), uu___4, ghost1)))
                      ([], g_head, false) args bs in
                  (match uu___ with
                   | (args1, guard, ghost) ->
                       let e = FStar_Syntax_Syntax.mk_Tm_app head args1 r in
                       let c1 =
                         if ghost
                         then
                           let uu___1 = FStar_Syntax_Syntax.mk_GTotal res_t in
                           FStar_TypeChecker_Common.lcomp_of_comp uu___1
                         else FStar_TypeChecker_Common.lcomp_of_comp c in
                       let uu___1 =
                         FStar_TypeChecker_Util.strengthen_precondition
                           FStar_Pervasives_Native.None env e c1 guard in
                       (match uu___1 with | (c2, g) -> (e, c2, g)))
              | uu___ ->
                  check_application_args env head chead g_head args
                    expected_topt
and (tc_pat :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.typ ->
      FStar_Syntax_Syntax.pat ->
        (FStar_Syntax_Syntax.pat * FStar_Syntax_Syntax.bv Prims.list *
          FStar_Syntax_Syntax.term Prims.list * FStar_TypeChecker_Env.env *
          FStar_Syntax_Syntax.term * FStar_Syntax_Syntax.term *
          FStar_TypeChecker_Env.guard_t * Prims.bool))
  =
  fun env ->
    fun pat_t ->
      fun p0 ->
        let fail msg =
          FStar_Errors.raise_error
            (FStar_Errors_Codes.Fatal_MismatchedPatternType, msg)
            p0.FStar_Syntax_Syntax.p in
        let expected_pat_typ env1 pos scrutinee_t =
          let rec aux norm1 t =
            let t1 = FStar_Syntax_Util.unrefine t in
            let uu___ = FStar_Syntax_Util.head_and_args t1 in
            match uu___ with
            | (head, args) ->
                let uu___1 =
                  let uu___2 = FStar_Syntax_Subst.compress head in
                  uu___2.FStar_Syntax_Syntax.n in
                (match uu___1 with
                 | FStar_Syntax_Syntax.Tm_uinst
                     ({
                        FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar f;
                        FStar_Syntax_Syntax.pos = uu___2;
                        FStar_Syntax_Syntax.vars = uu___3;
                        FStar_Syntax_Syntax.hash_code = uu___4;_},
                      us)
                     -> unfold_once t1 f us args
                 | FStar_Syntax_Syntax.Tm_fvar f -> unfold_once t1 f [] args
                 | uu___2 ->
                     if norm1
                     then t1
                     else
                       (let uu___4 =
                          FStar_TypeChecker_Normalize.normalize
                            [FStar_TypeChecker_Env.HNF;
                            FStar_TypeChecker_Env.Unmeta;
                            FStar_TypeChecker_Env.Unascribe;
                            FStar_TypeChecker_Env.UnfoldUntil
                              FStar_Syntax_Syntax.delta_constant] env1 t1 in
                        aux true uu___4))
          and unfold_once t f us args =
            let uu___ =
              FStar_TypeChecker_Env.is_type_constructor env1
                (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
            if uu___
            then t
            else
              (let uu___2 =
                 FStar_TypeChecker_Env.lookup_definition
                   [FStar_TypeChecker_Env.Unfold
                      FStar_Syntax_Syntax.delta_constant] env1
                   (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
               match uu___2 with
               | FStar_Pervasives_Native.None -> t
               | FStar_Pervasives_Native.Some head_def_ts ->
                   let uu___3 =
                     FStar_TypeChecker_Env.inst_tscheme_with head_def_ts us in
                   (match uu___3 with
                    | (uu___4, head_def) ->
                        let t' =
                          FStar_Syntax_Syntax.mk_Tm_app head_def args
                            t.FStar_Syntax_Syntax.pos in
                        let t'1 =
                          FStar_TypeChecker_Normalize.normalize
                            [FStar_TypeChecker_Env.Beta;
                            FStar_TypeChecker_Env.Iota] env1 t' in
                        aux false t'1)) in
          let uu___ =
            FStar_TypeChecker_Normalize.normalize
              [FStar_TypeChecker_Env.Beta; FStar_TypeChecker_Env.Iota] env1
              scrutinee_t in
          aux false uu___ in
        let pat_typ_ok env1 pat_t1 scrutinee_t =
          (let uu___1 = FStar_Compiler_Effect.op_Bang dbg_Patterns in
           if uu___1
           then
             let uu___2 =
               FStar_Class_Show.show FStar_Syntax_Print.showable_term pat_t1 in
             let uu___3 =
               FStar_Class_Show.show FStar_Syntax_Print.showable_term
                 scrutinee_t in
             FStar_Compiler_Util.print2 "$$$$$$$$$$$$pat_typ_ok? %s vs. %s\n"
               uu___2 uu___3
           else ());
          FStar_Defensive.def_check_scoped
            FStar_TypeChecker_Env.hasBinders_env
            FStar_Class_Binders.hasNames_term FStar_Syntax_Print.pretty_term
            pat_t1.FStar_Syntax_Syntax.pos "pat_typ_ok.pat_t.entry" env1
            pat_t1;
          (let fail1 msg_str =
             let msg =
               if msg_str = ""
               then []
               else (let uu___3 = FStar_Errors_Msg.text msg_str in [uu___3]) in
             let msg1 =
               let uu___2 =
                 let uu___3 =
                   let uu___4 = FStar_Errors_Msg.text "Type of pattern" in
                   let uu___5 =
                     FStar_Class_PP.pp FStar_Syntax_Print.pretty_term pat_t1 in
                   FStar_Pprint.prefix (Prims.of_int (2)) Prims.int_one
                     uu___4 uu___5 in
                 let uu___4 =
                   let uu___5 =
                     FStar_Errors_Msg.text "does not match type of scrutinee" in
                   let uu___6 =
                     FStar_Class_PP.pp FStar_Syntax_Print.pretty_term
                       scrutinee_t in
                   FStar_Pprint.prefix (Prims.of_int (2)) Prims.int_one
                     uu___5 uu___6 in
                 FStar_Pprint.op_Hat_Slash_Hat uu___3 uu___4 in
               uu___2 :: msg in
             FStar_Errors.raise_error_doc
               (FStar_Errors_Codes.Fatal_MismatchedPatternType, msg1)
               p0.FStar_Syntax_Syntax.p in
           let uu___2 = FStar_Syntax_Util.head_and_args scrutinee_t in
           match uu___2 with
           | (head_s, args_s) ->
               let pat_t2 =
                 FStar_TypeChecker_Normalize.normalize
                   [FStar_TypeChecker_Env.Beta] env1 pat_t1 in
               let uu___3 = FStar_Syntax_Util.un_uinst head_s in
               (match uu___3 with
                | {
                    FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar
                      uu___4;
                    FStar_Syntax_Syntax.pos = uu___5;
                    FStar_Syntax_Syntax.vars = uu___6;
                    FStar_Syntax_Syntax.hash_code = uu___7;_} ->
                    let uu___8 = FStar_Syntax_Util.head_and_args pat_t2 in
                    (match uu___8 with
                     | (head_p, args_p) ->
                         let uu___9 =
                           FStar_TypeChecker_Rel.teq_nosmt_force env1 head_p
                             head_s in
                         if uu___9
                         then
                           let uu___10 =
                             let uu___11 = FStar_Syntax_Util.un_uinst head_p in
                             uu___11.FStar_Syntax_Syntax.n in
                           (match uu___10 with
                            | FStar_Syntax_Syntax.Tm_fvar f ->
                                ((let uu___12 =
                                    let uu___13 =
                                      let uu___14 =
                                        FStar_Syntax_Syntax.lid_of_fv f in
                                      FStar_TypeChecker_Env.is_type_constructor
                                        env1 uu___14 in
                                    Prims.op_Negation uu___13 in
                                  if uu___12
                                  then
                                    fail1
                                      "Pattern matching a non-inductive type"
                                  else ());
                                 if
                                   (FStar_Compiler_List.length args_p) <>
                                     (FStar_Compiler_List.length args_s)
                                 then fail1 ""
                                 else ();
                                 (let uu___13 =
                                    let uu___14 =
                                      let uu___15 =
                                        FStar_Syntax_Syntax.lid_of_fv f in
                                      FStar_TypeChecker_Env.num_inductive_ty_params
                                        env1 uu___15 in
                                    match uu___14 with
                                    | FStar_Pervasives_Native.None ->
                                        (args_p, args_s)
                                    | FStar_Pervasives_Native.Some n ->
                                        let uu___15 =
                                          FStar_Compiler_Util.first_N n
                                            args_p in
                                        (match uu___15 with
                                         | (params_p, uu___16) ->
                                             let uu___17 =
                                               FStar_Compiler_Util.first_N n
                                                 args_s in
                                             (match uu___17 with
                                              | (params_s, uu___18) ->
                                                  (params_p, params_s))) in
                                  match uu___13 with
                                  | (params_p, params_s) ->
                                      FStar_Compiler_List.fold_left2
                                        (fun out ->
                                           fun uu___14 ->
                                             fun uu___15 ->
                                               match (uu___14, uu___15) with
                                               | ((p, uu___16), (s, uu___17))
                                                   ->
                                                   let uu___18 =
                                                     FStar_TypeChecker_Rel.teq_nosmt
                                                       env1 p s in
                                                   (match uu___18 with
                                                    | FStar_Pervasives_Native.None
                                                        ->
                                                        let uu___19 =
                                                          let uu___20 =
                                                            FStar_Class_Show.show
                                                              FStar_Syntax_Print.showable_term
                                                              p in
                                                          let uu___21 =
                                                            FStar_Class_Show.show
                                                              FStar_Syntax_Print.showable_term
                                                              s in
                                                          FStar_Compiler_Util.format2
                                                            "Parameter %s <> Parameter %s"
                                                            uu___20 uu___21 in
                                                        fail1 uu___19
                                                    | FStar_Pervasives_Native.Some
                                                        g ->
                                                        let g1 =
                                                          FStar_TypeChecker_Rel.discharge_guard_no_smt
                                                            env1 g in
                                                        FStar_Class_Monoid.op_Plus_Plus
                                                          FStar_TypeChecker_Common.monoid_guard_t
                                                          g1 out))
                                        (FStar_Class_Monoid.mzero
                                           FStar_TypeChecker_Common.monoid_guard_t)
                                        params_p params_s))
                            | uu___11 ->
                                fail1 "Pattern matching a non-inductive type")
                         else
                           (let uu___11 =
                              let uu___12 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term head_p in
                              let uu___13 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term head_s in
                              FStar_Compiler_Util.format2
                                "Head mismatch %s vs %s" uu___12 uu___13 in
                            fail1 uu___11))
                | uu___4 ->
                    let uu___5 =
                      FStar_TypeChecker_Rel.teq_nosmt env1 pat_t2 scrutinee_t in
                    (match uu___5 with
                     | FStar_Pervasives_Native.None -> fail1 ""
                     | FStar_Pervasives_Native.Some g ->
                         let g1 =
                           FStar_TypeChecker_Rel.discharge_guard_no_smt env1
                             g in
                         g1))) in
        let type_of_simple_pat env1 e =
          let uu___ = FStar_Syntax_Util.head_and_args e in
          match uu___ with
          | (head, args) ->
              (match head.FStar_Syntax_Syntax.n with
               | FStar_Syntax_Syntax.Tm_uinst
                   ({
                      FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar
                        uu___1;
                      FStar_Syntax_Syntax.pos = uu___2;
                      FStar_Syntax_Syntax.vars = uu___3;
                      FStar_Syntax_Syntax.hash_code = uu___4;_},
                    uu___5)
                   ->
                   let uu___6 =
                     match head.FStar_Syntax_Syntax.n with
                     | FStar_Syntax_Syntax.Tm_uinst (head1, us) ->
                         let uu___7 = head1.FStar_Syntax_Syntax.n in
                         (match uu___7 with
                          | FStar_Syntax_Syntax.Tm_fvar f ->
                              let res =
                                FStar_TypeChecker_Env.try_lookup_and_inst_lid
                                  env1 us
                                  (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                              (match res with
                               | FStar_Pervasives_Native.Some (t, uu___8)
                                   when
                                   FStar_TypeChecker_Env.is_datacon env1
                                     (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                                   -> (head1, (us, t))
                               | uu___8 ->
                                   let uu___9 =
                                     let uu___10 =
                                       FStar_Ident.string_of_lid
                                         (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                                     FStar_Compiler_Util.format1
                                       "Could not find constructor: %s"
                                       uu___10 in
                                   fail uu___9))
                     | FStar_Syntax_Syntax.Tm_fvar f ->
                         let uu___7 =
                           FStar_TypeChecker_Env.lookup_datacon env1
                             (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                         (head, uu___7) in
                   (match uu___6 with
                    | (head1, (us, t_f)) ->
                        let uu___7 = FStar_Syntax_Util.arrow_formals t_f in
                        (match uu___7 with
                         | (formals, t) ->
                             let erasable =
                               FStar_TypeChecker_Env.non_informative env1 t in
                             (if
                                (FStar_Compiler_List.length formals) <>
                                  (FStar_Compiler_List.length args)
                              then
                                fail
                                  "Pattern is not a fully-applied data constructor"
                              else ();
                              (let rec aux uu___9 formals1 args1 =
                                 match uu___9 with
                                 | (subst, args_out, bvs, guard) ->
                                     (match (formals1, args1) with
                                      | ([], []) ->
                                          let head2 =
                                            FStar_Syntax_Syntax.mk_Tm_uinst
                                              head1 us in
                                          let pat_e =
                                            FStar_Syntax_Syntax.mk_Tm_app
                                              head2 args_out
                                              e.FStar_Syntax_Syntax.pos in
                                          let uu___10 =
                                            FStar_Syntax_Subst.subst subst t in
                                          (pat_e, uu___10, bvs, guard,
                                            erasable)
                                      | ({ FStar_Syntax_Syntax.binder_bv = f;
                                           FStar_Syntax_Syntax.binder_qual =
                                             uu___10;
                                           FStar_Syntax_Syntax.binder_positivity
                                             = uu___11;
                                           FStar_Syntax_Syntax.binder_attrs =
                                             uu___12;_}::formals2,
                                         (a, imp_a)::args2) ->
                                          let t_f1 =
                                            FStar_Syntax_Subst.subst subst
                                              f.FStar_Syntax_Syntax.sort in
                                          let uu___13 =
                                            let uu___14 =
                                              let uu___15 =
                                                FStar_Syntax_Subst.compress a in
                                              uu___15.FStar_Syntax_Syntax.n in
                                            match uu___14 with
                                            | FStar_Syntax_Syntax.Tm_name x
                                                ->
                                                let x1 =
                                                  {
                                                    FStar_Syntax_Syntax.ppname
                                                      =
                                                      (x.FStar_Syntax_Syntax.ppname);
                                                    FStar_Syntax_Syntax.index
                                                      =
                                                      (x.FStar_Syntax_Syntax.index);
                                                    FStar_Syntax_Syntax.sort
                                                      = t_f1
                                                  } in
                                                let a1 =
                                                  FStar_Syntax_Syntax.bv_to_name
                                                    x1 in
                                                let subst1 =
                                                  (FStar_Syntax_Syntax.NT
                                                     (f, a1))
                                                  :: subst in
                                                ((a1, imp_a), subst1,
                                                  (FStar_Compiler_List.op_At
                                                     bvs [x1]),
                                                  (FStar_Class_Monoid.mzero
                                                     FStar_TypeChecker_Common.monoid_guard_t))
                                            | FStar_Syntax_Syntax.Tm_uvar
                                                uu___15 ->
                                                let use_eq = true in
                                                let env2 =
                                                  FStar_TypeChecker_Env.set_expected_typ_maybe_eq
                                                    env1 t_f1 use_eq in
                                                let uu___16 =
                                                  tc_tot_or_gtot_term_maybe_solve_deferred
                                                    env2 a "" false in
                                                (match uu___16 with
                                                 | (a1, uu___17, g) ->
                                                     let subst1 =
                                                       (FStar_Syntax_Syntax.NT
                                                          (f, a1))
                                                       :: subst in
                                                     ((a1, imp_a), subst1,
                                                       bvs, g))
                                            | uu___15 ->
                                                let a1 =
                                                  FStar_Syntax_Subst.subst
                                                    subst a in
                                                let env2 =
                                                  FStar_TypeChecker_Env.set_expected_typ
                                                    env1 t_f1 in
                                                let uu___16 =
                                                  tc_tot_or_gtot_term env2 a1 in
                                                (match uu___16 with
                                                 | (a2, uu___17, g) ->
                                                     let subst1 =
                                                       (FStar_Syntax_Syntax.NT
                                                          (f, a2))
                                                       :: subst in
                                                     ((a2, imp_a), subst1,
                                                       bvs, g)) in
                                          (match uu___13 with
                                           | (a1, subst1, bvs1, g) ->
                                               let uu___14 =
                                                 let uu___15 =
                                                   FStar_Class_Monoid.op_Plus_Plus
                                                     FStar_TypeChecker_Common.monoid_guard_t
                                                     g guard in
                                                 (subst1,
                                                   (FStar_Compiler_List.op_At
                                                      args_out [a1]), bvs1,
                                                   uu___15) in
                                               aux uu___14 formals2 args2)
                                      | uu___10 ->
                                          fail "Not a fully applied pattern") in
                               aux
                                 ([], [], [],
                                   (FStar_Class_Monoid.mzero
                                      FStar_TypeChecker_Common.monoid_guard_t))
                                 formals args))))
               | FStar_Syntax_Syntax.Tm_fvar uu___1 ->
                   let uu___2 =
                     match head.FStar_Syntax_Syntax.n with
                     | FStar_Syntax_Syntax.Tm_uinst (head1, us) ->
                         let uu___3 = head1.FStar_Syntax_Syntax.n in
                         (match uu___3 with
                          | FStar_Syntax_Syntax.Tm_fvar f ->
                              let res =
                                FStar_TypeChecker_Env.try_lookup_and_inst_lid
                                  env1 us
                                  (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                              (match res with
                               | FStar_Pervasives_Native.Some (t, uu___4)
                                   when
                                   FStar_TypeChecker_Env.is_datacon env1
                                     (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                                   -> (head1, (us, t))
                               | uu___4 ->
                                   let uu___5 =
                                     let uu___6 =
                                       FStar_Ident.string_of_lid
                                         (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                                     FStar_Compiler_Util.format1
                                       "Could not find constructor: %s"
                                       uu___6 in
                                   fail uu___5))
                     | FStar_Syntax_Syntax.Tm_fvar f ->
                         let uu___3 =
                           FStar_TypeChecker_Env.lookup_datacon env1
                             (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
                         (head, uu___3) in
                   (match uu___2 with
                    | (head1, (us, t_f)) ->
                        let uu___3 = FStar_Syntax_Util.arrow_formals t_f in
                        (match uu___3 with
                         | (formals, t) ->
                             let erasable =
                               FStar_TypeChecker_Env.non_informative env1 t in
                             (if
                                (FStar_Compiler_List.length formals) <>
                                  (FStar_Compiler_List.length args)
                              then
                                fail
                                  "Pattern is not a fully-applied data constructor"
                              else ();
                              (let rec aux uu___5 formals1 args1 =
                                 match uu___5 with
                                 | (subst, args_out, bvs, guard) ->
                                     (match (formals1, args1) with
                                      | ([], []) ->
                                          let head2 =
                                            FStar_Syntax_Syntax.mk_Tm_uinst
                                              head1 us in
                                          let pat_e =
                                            FStar_Syntax_Syntax.mk_Tm_app
                                              head2 args_out
                                              e.FStar_Syntax_Syntax.pos in
                                          let uu___6 =
                                            FStar_Syntax_Subst.subst subst t in
                                          (pat_e, uu___6, bvs, guard,
                                            erasable)
                                      | ({ FStar_Syntax_Syntax.binder_bv = f;
                                           FStar_Syntax_Syntax.binder_qual =
                                             uu___6;
                                           FStar_Syntax_Syntax.binder_positivity
                                             = uu___7;
                                           FStar_Syntax_Syntax.binder_attrs =
                                             uu___8;_}::formals2,
                                         (a, imp_a)::args2) ->
                                          let t_f1 =
                                            FStar_Syntax_Subst.subst subst
                                              f.FStar_Syntax_Syntax.sort in
                                          let uu___9 =
                                            let uu___10 =
                                              let uu___11 =
                                                FStar_Syntax_Subst.compress a in
                                              uu___11.FStar_Syntax_Syntax.n in
                                            match uu___10 with
                                            | FStar_Syntax_Syntax.Tm_name x
                                                ->
                                                let x1 =
                                                  {
                                                    FStar_Syntax_Syntax.ppname
                                                      =
                                                      (x.FStar_Syntax_Syntax.ppname);
                                                    FStar_Syntax_Syntax.index
                                                      =
                                                      (x.FStar_Syntax_Syntax.index);
                                                    FStar_Syntax_Syntax.sort
                                                      = t_f1
                                                  } in
                                                let a1 =
                                                  FStar_Syntax_Syntax.bv_to_name
                                                    x1 in
                                                let subst1 =
                                                  (FStar_Syntax_Syntax.NT
                                                     (f, a1))
                                                  :: subst in
                                                ((a1, imp_a), subst1,
                                                  (FStar_Compiler_List.op_At
                                                     bvs [x1]),
                                                  (FStar_Class_Monoid.mzero
                                                     FStar_TypeChecker_Common.monoid_guard_t))
                                            | FStar_Syntax_Syntax.Tm_uvar
                                                uu___11 ->
                                                let use_eq = true in
                                                let env2 =
                                                  FStar_TypeChecker_Env.set_expected_typ_maybe_eq
                                                    env1 t_f1 use_eq in
                                                let uu___12 =
                                                  tc_tot_or_gtot_term_maybe_solve_deferred
                                                    env2 a "" false in
                                                (match uu___12 with
                                                 | (a1, uu___13, g) ->
                                                     let subst1 =
                                                       (FStar_Syntax_Syntax.NT
                                                          (f, a1))
                                                       :: subst in
                                                     ((a1, imp_a), subst1,
                                                       bvs, g))
                                            | uu___11 ->
                                                let a1 =
                                                  FStar_Syntax_Subst.subst
                                                    subst a in
                                                let env2 =
                                                  FStar_TypeChecker_Env.set_expected_typ
                                                    env1 t_f1 in
                                                let uu___12 =
                                                  tc_tot_or_gtot_term env2 a1 in
                                                (match uu___12 with
                                                 | (a2, uu___13, g) ->
                                                     let subst1 =
                                                       (FStar_Syntax_Syntax.NT
                                                          (f, a2))
                                                       :: subst in
                                                     ((a2, imp_a), subst1,
                                                       bvs, g)) in
                                          (match uu___9 with
                                           | (a1, subst1, bvs1, g) ->
                                               let uu___10 =
                                                 let uu___11 =
                                                   FStar_Class_Monoid.op_Plus_Plus
                                                     FStar_TypeChecker_Common.monoid_guard_t
                                                     g guard in
                                                 (subst1,
                                                   (FStar_Compiler_List.op_At
                                                      args_out [a1]), bvs1,
                                                   uu___11) in
                                               aux uu___10 formals2 args2)
                                      | uu___6 ->
                                          fail "Not a fully applied pattern") in
                               aux
                                 ([], [], [],
                                   (FStar_Class_Monoid.mzero
                                      FStar_TypeChecker_Common.monoid_guard_t))
                                 formals args))))
               | uu___1 -> fail "Not a simple pattern") in
        let rec check_nested_pattern env1 p t =
          (let uu___1 = FStar_Compiler_Effect.op_Bang dbg_Patterns in
           if uu___1
           then
             let uu___2 =
               FStar_Class_Show.show FStar_Syntax_Print.showable_pat p in
             let uu___3 =
               FStar_Class_Show.show FStar_Syntax_Print.showable_term t in
             FStar_Compiler_Util.print2 "Checking pattern %s at type %s\n"
               uu___2 uu___3
           else ());
          (let id t1 =
             let uu___1 =
               FStar_Syntax_Syntax.fvar FStar_Parser_Const.id_lid
                 FStar_Pervasives_Native.None in
             let uu___2 =
               let uu___3 = FStar_Syntax_Syntax.iarg t1 in [uu___3] in
             FStar_Syntax_Syntax.mk_Tm_app uu___1 uu___2
               t1.FStar_Syntax_Syntax.pos in
           let mk_disc_t disc inner_t =
             let x_b =
               let uu___1 =
                 FStar_Syntax_Syntax.gen_bv "x" FStar_Pervasives_Native.None
                   t in
               FStar_Syntax_Syntax.mk_binder uu___1 in
             let ty_args =
               let uu___1 = FStar_Syntax_Util.head_and_args t in
               match uu___1 with
               | (hd, args) ->
                   let uu___2 =
                     let uu___3 =
                       let uu___4 = FStar_Syntax_Subst.compress hd in
                       FStar_Syntax_Util.un_uinst uu___4 in
                     uu___3.FStar_Syntax_Syntax.n in
                   (match uu___2 with
                    | FStar_Syntax_Syntax.Tm_fvar fv ->
                        let uu___3 =
                          let uu___4 =
                            let uu___5 = FStar_Syntax_Syntax.lid_of_fv fv in
                            FStar_TypeChecker_Env.num_inductive_ty_params
                              env1 uu___5 in
                          let uu___5 =
                            FStar_Compiler_Util.map_option
                              (fun n ->
                                 if (FStar_Compiler_List.length args) >= n
                                 then
                                   let uu___6 =
                                     FStar_Compiler_List.splitAt n args in
                                   FStar_Pervasives_Native.fst uu___6
                                 else []) uu___4 in
                          FStar_Compiler_Util.dflt [] uu___5 in
                        FStar_Compiler_List.map
                          (fun uu___4 ->
                             match uu___4 with
                             | (t1, uu___5) -> FStar_Syntax_Syntax.iarg t1)
                          uu___3
                    | uu___3 -> []) in
             let tm =
               let uu___1 =
                 let uu___2 =
                   let uu___3 =
                     let uu___4 =
                       FStar_Syntax_Syntax.bv_to_name
                         x_b.FStar_Syntax_Syntax.binder_bv in
                     FStar_Syntax_Syntax.as_arg uu___4 in
                   [uu___3] in
                 FStar_Compiler_List.op_At ty_args uu___2 in
               FStar_Syntax_Syntax.mk_Tm_app disc uu___1
                 FStar_Compiler_Range_Type.dummyRange in
             let tm1 =
               let uu___1 =
                 let uu___2 = FStar_Syntax_Syntax.as_arg tm in [uu___2] in
               FStar_Syntax_Syntax.mk_Tm_app inner_t uu___1
                 FStar_Compiler_Range_Type.dummyRange in
             FStar_Syntax_Util.abs [x_b] tm1 FStar_Pervasives_Native.None in
           match p.FStar_Syntax_Syntax.v with
           | FStar_Syntax_Syntax.Pat_dot_term uu___1 ->
               let uu___2 =
                 let uu___3 =
                   FStar_Class_Show.show FStar_Syntax_Print.showable_pat p in
                 FStar_Compiler_Util.format1
                   "Impossible: Expected an undecorated pattern, got %s"
                   uu___3 in
               FStar_Compiler_Effect.failwith uu___2
           | FStar_Syntax_Syntax.Pat_var x ->
               let x1 =
                 {
                   FStar_Syntax_Syntax.ppname =
                     (x.FStar_Syntax_Syntax.ppname);
                   FStar_Syntax_Syntax.index = (x.FStar_Syntax_Syntax.index);
                   FStar_Syntax_Syntax.sort = t
                 } in
               let uu___1 = let uu___2 = id t in [uu___2] in
               let uu___2 = FStar_Syntax_Syntax.bv_to_name x1 in
               ([x1], uu___1, uu___2,
                 {
                   FStar_Syntax_Syntax.v = (FStar_Syntax_Syntax.Pat_var x1);
                   FStar_Syntax_Syntax.p = (p.FStar_Syntax_Syntax.p)
                 },
                 (FStar_Class_Monoid.mzero
                    FStar_TypeChecker_Common.monoid_guard_t), false)
           | FStar_Syntax_Syntax.Pat_constant c ->
               ((match c with
                 | FStar_Const.Const_unit -> ()
                 | FStar_Const.Const_bool uu___2 -> ()
                 | FStar_Const.Const_int uu___2 -> ()
                 | FStar_Const.Const_char uu___2 -> ()
                 | FStar_Const.Const_string uu___2 -> ()
                 | uu___2 ->
                     let uu___3 =
                       let uu___4 =
                         FStar_Class_Show.show
                           FStar_Syntax_Print.showable_const c in
                       FStar_Compiler_Util.format1
                         "Pattern matching a constant that does not have decidable equality: %s"
                         uu___4 in
                     fail uu___3);
                (let uu___2 =
                   FStar_TypeChecker_PatternUtils.pat_as_exp false false env1
                     p in
                 match uu___2 with
                 | (uu___3, e_c, uu___4, uu___5) ->
                     let uu___6 = tc_tot_or_gtot_term env1 e_c in
                     (match uu___6 with
                      | (e_c1, lc, g) ->
                          (FStar_TypeChecker_Rel.force_trivial_guard env1 g;
                           (let expected_t =
                              expected_pat_typ env1 p0.FStar_Syntax_Syntax.p
                                t in
                            (let uu___9 =
                               let uu___10 =
                                 FStar_TypeChecker_Rel.teq_nosmt_force env1
                                   lc.FStar_TypeChecker_Common.res_typ
                                   expected_t in
                               Prims.op_Negation uu___10 in
                             if uu___9
                             then
                               let uu___10 =
                                 let uu___11 =
                                   FStar_Class_Show.show
                                     FStar_Syntax_Print.showable_term
                                     lc.FStar_TypeChecker_Common.res_typ in
                                 let uu___12 =
                                   FStar_Class_Show.show
                                     FStar_Syntax_Print.showable_term
                                     expected_t in
                                 FStar_Compiler_Util.format2
                                   "Type of pattern (%s) does not match type of scrutinee (%s)"
                                   uu___11 uu___12 in
                               fail uu___10
                             else ());
                            ([], [], e_c1, p,
                              (FStar_Class_Monoid.mzero
                                 FStar_TypeChecker_Common.monoid_guard_t),
                              false))))))
           | FStar_Syntax_Syntax.Pat_cons
               ({ FStar_Syntax_Syntax.fv_name = uu___1;
                  FStar_Syntax_Syntax.fv_qual = FStar_Pervasives_Native.Some
                    (FStar_Syntax_Syntax.Unresolved_constructor uc);_},
                us_opt, sub_pats)
               ->
               let uu___2 =
                 FStar_TypeChecker_Util.find_record_or_dc_from_typ env1
                   (FStar_Pervasives_Native.Some t) uc
                   p.FStar_Syntax_Syntax.p in
               (match uu___2 with
                | (rdc, uu___3, constructor_fv) ->
                    let f_sub_pats =
                      FStar_Compiler_List.zip
                        uc.FStar_Syntax_Syntax.uc_fields sub_pats in
                    let sub_pats1 =
                      FStar_TypeChecker_Util.make_record_fields_in_order env1
                        uc
                        (FStar_Pervasives_Native.Some
                           (FStar_Pervasives.Inl t)) rdc f_sub_pats
                        (fun uu___4 ->
                           let x =
                             FStar_Syntax_Syntax.new_bv
                               FStar_Pervasives_Native.None
                               FStar_Syntax_Syntax.tun in
                           let uu___5 =
                             let uu___6 =
                               FStar_Syntax_Syntax.withinfo
                                 (FStar_Syntax_Syntax.Pat_var x)
                                 p.FStar_Syntax_Syntax.p in
                             (uu___6, false) in
                           FStar_Pervasives_Native.Some uu___5)
                        p.FStar_Syntax_Syntax.p in
                    let p1 =
                      {
                        FStar_Syntax_Syntax.v =
                          (FStar_Syntax_Syntax.Pat_cons
                             (constructor_fv, us_opt, sub_pats1));
                        FStar_Syntax_Syntax.p = (p.FStar_Syntax_Syntax.p)
                      } in
                    let p2 =
                      FStar_TypeChecker_PatternUtils.elaborate_pat env1 p1 in
                    check_nested_pattern env1 p2 t)
           | FStar_Syntax_Syntax.Pat_cons (fv, us_opt, sub_pats) ->
               let simple_pat =
                 let simple_sub_pats =
                   FStar_Compiler_List.map
                     (fun uu___1 ->
                        match uu___1 with
                        | (p1, b) ->
                            (match p1.FStar_Syntax_Syntax.v with
                             | FStar_Syntax_Syntax.Pat_dot_term uu___2 ->
                                 (p1, b)
                             | uu___2 ->
                                 let uu___3 =
                                   let uu___4 =
                                     let uu___5 =
                                       FStar_Syntax_Syntax.new_bv
                                         (FStar_Pervasives_Native.Some
                                            (p1.FStar_Syntax_Syntax.p))
                                         FStar_Syntax_Syntax.tun in
                                     FStar_Syntax_Syntax.Pat_var uu___5 in
                                   FStar_Syntax_Syntax.withinfo uu___4
                                     p1.FStar_Syntax_Syntax.p in
                                 (uu___3, b))) sub_pats in
                 {
                   FStar_Syntax_Syntax.v =
                     (FStar_Syntax_Syntax.Pat_cons
                        (fv, us_opt, simple_sub_pats));
                   FStar_Syntax_Syntax.p = (p.FStar_Syntax_Syntax.p)
                 } in
               let sub_pats1 =
                 FStar_Compiler_List.filter
                   (fun uu___1 ->
                      match uu___1 with
                      | (x, uu___2) ->
                          (match x.FStar_Syntax_Syntax.v with
                           | FStar_Syntax_Syntax.Pat_dot_term uu___3 -> false
                           | uu___3 -> true)) sub_pats in
               let uu___1 =
                 FStar_TypeChecker_PatternUtils.pat_as_exp false false env1
                   simple_pat in
               (match uu___1 with
                | (simple_bvs_pat, simple_pat_e, g0, simple_pat_elab) ->
                    (if
                       (FStar_Compiler_List.length simple_bvs_pat) <>
                         (FStar_Compiler_List.length sub_pats1)
                     then
                       (let uu___3 =
                          let uu___4 =
                            FStar_Compiler_Range_Ops.string_of_range
                              p.FStar_Syntax_Syntax.p in
                          let uu___5 =
                            FStar_Class_Show.show
                              FStar_Syntax_Print.showable_pat simple_pat in
                          let uu___6 =
                            FStar_Compiler_Util.string_of_int
                              (FStar_Compiler_List.length sub_pats1) in
                          let uu___7 =
                            FStar_Compiler_Util.string_of_int
                              (FStar_Compiler_List.length simple_bvs_pat) in
                          FStar_Compiler_Util.format4
                            "(%s) Impossible: pattern bvar mismatch: %s; expected %s sub pats; got %s"
                            uu___4 uu___5 uu___6 uu___7 in
                        FStar_Compiler_Effect.failwith uu___3)
                     else ();
                     (let uu___3 =
                        let uu___4 = type_of_simple_pat env1 simple_pat_e in
                        match uu___4 with
                        | (simple_pat_e1, simple_pat_t, simple_bvs, guard,
                           erasable) ->
                            let simple_bvs1 =
                              let uu___5 =
                                FStar_Compiler_Util.first_N
                                  ((FStar_Compiler_List.length simple_bvs) -
                                     (FStar_Compiler_List.length
                                        simple_bvs_pat)) simple_bvs in
                              FStar_Pervasives_Native.snd uu___5 in
                            let g' =
                              let uu___5 =
                                FStar_TypeChecker_Env.push_bvs env1
                                  simple_bvs1 in
                              let uu___6 =
                                expected_pat_typ env1
                                  p0.FStar_Syntax_Syntax.p t in
                              pat_typ_ok uu___5 simple_pat_t uu___6 in
                            let guard1 =
                              let fml =
                                FStar_TypeChecker_Env.guard_form guard in
                              let guard2 =
                                FStar_TypeChecker_Rel.discharge_guard_no_smt
                                  env1
                                  {
                                    FStar_TypeChecker_Common.guard_f =
                                      FStar_TypeChecker_Common.Trivial;
                                    FStar_TypeChecker_Common.deferred_to_tac
                                      =
                                      (guard.FStar_TypeChecker_Common.deferred_to_tac);
                                    FStar_TypeChecker_Common.deferred =
                                      (guard.FStar_TypeChecker_Common.deferred);
                                    FStar_TypeChecker_Common.univ_ineqs =
                                      (guard.FStar_TypeChecker_Common.univ_ineqs);
                                    FStar_TypeChecker_Common.implicits =
                                      (guard.FStar_TypeChecker_Common.implicits)
                                  } in
                              {
                                FStar_TypeChecker_Common.guard_f = fml;
                                FStar_TypeChecker_Common.deferred_to_tac =
                                  (guard2.FStar_TypeChecker_Common.deferred_to_tac);
                                FStar_TypeChecker_Common.deferred =
                                  (guard2.FStar_TypeChecker_Common.deferred);
                                FStar_TypeChecker_Common.univ_ineqs =
                                  (guard2.FStar_TypeChecker_Common.univ_ineqs);
                                FStar_TypeChecker_Common.implicits =
                                  (guard2.FStar_TypeChecker_Common.implicits)
                              } in
                            let guard2 =
                              FStar_Class_Monoid.op_Plus_Plus
                                FStar_TypeChecker_Common.monoid_guard_t
                                guard1 g' in
                            ((let uu___6 =
                                FStar_Compiler_Effect.op_Bang dbg_Patterns in
                              if uu___6
                              then
                                let uu___7 =
                                  FStar_Class_Show.show
                                    FStar_Syntax_Print.showable_term
                                    simple_pat_e1 in
                                let uu___8 =
                                  FStar_Class_Show.show
                                    FStar_Syntax_Print.showable_term
                                    simple_pat_t in
                                let uu___9 =
                                  let uu___10 =
                                    FStar_Compiler_List.map
                                      (fun x ->
                                         let uu___11 =
                                           let uu___12 =
                                             FStar_Class_Show.show
                                               FStar_Syntax_Print.showable_bv
                                               x in
                                           let uu___13 =
                                             let uu___14 =
                                               let uu___15 =
                                                 FStar_Class_Show.show
                                                   FStar_Syntax_Print.showable_term
                                                   x.FStar_Syntax_Syntax.sort in
                                               Prims.strcat uu___15 ")" in
                                             Prims.strcat " : " uu___14 in
                                           Prims.strcat uu___12 uu___13 in
                                         Prims.strcat "(" uu___11)
                                      simple_bvs1 in
                                  FStar_Compiler_String.concat " " uu___10 in
                                FStar_Compiler_Util.print3
                                  "$$$$$$$$$$$$Checked simple pattern %s at type %s with bvs=%s\n"
                                  uu___7 uu___8 uu___9
                              else ());
                             (simple_pat_e1, simple_bvs1, guard2, erasable)) in
                      match uu___3 with
                      | (simple_pat_e1, simple_bvs, g1, erasable) ->
                          let uu___4 =
                            let uu___5 =
                              let uu___6 =
                                FStar_Class_Monoid.op_Plus_Plus
                                  FStar_TypeChecker_Common.monoid_guard_t g0
                                  g1 in
                              ([], [], [], [], uu___6, erasable,
                                Prims.int_zero) in
                            FStar_Compiler_List.fold_left2
                              (fun uu___6 ->
                                 fun uu___7 ->
                                   fun x ->
                                     match (uu___6, uu___7) with
                                     | ((bvs, tms, pats, subst, g, erasable1,
                                         i),
                                        (p1, b)) ->
                                         let expected_t =
                                           FStar_Syntax_Subst.subst subst
                                             x.FStar_Syntax_Syntax.sort in
                                         let env2 =
                                           FStar_TypeChecker_Env.push_bvs
                                             env1 bvs in
                                         let uu___8 =
                                           check_nested_pattern env2 p1
                                             expected_t in
                                         (match uu___8 with
                                          | (bvs_p, tms_p, e_p, p2, g',
                                             erasable_p) ->
                                              let g'1 =
                                                let uu___9 =
                                                  FStar_Compiler_List.map
                                                    FStar_Syntax_Syntax.mk_binder
                                                    bvs in
                                                FStar_TypeChecker_Env.close_guard
                                                  env2 uu___9 g' in
                                              let tms_p1 =
                                                let disc_tm =
                                                  let uu___9 =
                                                    FStar_Syntax_Syntax.lid_of_fv
                                                      fv in
                                                  FStar_TypeChecker_Util.get_field_projector_name
                                                    env2 uu___9 i in
                                                let uu___9 =
                                                  let uu___10 =
                                                    FStar_Syntax_Syntax.fvar
                                                      disc_tm
                                                      FStar_Pervasives_Native.None in
                                                  mk_disc_t uu___10 in
                                                FStar_Compiler_List.map
                                                  uu___9 tms_p in
                                              let uu___9 =
                                                FStar_Class_Monoid.op_Plus_Plus
                                                  FStar_TypeChecker_Common.monoid_guard_t
                                                  g g'1 in
                                              ((FStar_Compiler_List.op_At bvs
                                                  bvs_p),
                                                (FStar_Compiler_List.op_At
                                                   tms tms_p1),
                                                (FStar_Compiler_List.op_At
                                                   pats [(p2, b)]),
                                                ((FStar_Syntax_Syntax.NT
                                                    (x, e_p)) :: subst),
                                                uu___9,
                                                (erasable1 || erasable_p),
                                                (i + Prims.int_one)))) uu___5
                              sub_pats1 simple_bvs in
                          (match uu___4 with
                           | (bvs, tms, checked_sub_pats, subst, g,
                              erasable1, uu___5) ->
                               let pat_e =
                                 FStar_Syntax_Subst.subst subst simple_pat_e1 in
                               let reconstruct_nested_pat pat =
                                 let rec aux simple_pats bvs1 sub_pats2 =
                                   match simple_pats with
                                   | [] -> []
                                   | (hd, b)::simple_pats1 ->
                                       (match hd.FStar_Syntax_Syntax.v with
                                        | FStar_Syntax_Syntax.Pat_dot_term
                                            eopt ->
                                            let eopt1 =
                                              FStar_Compiler_Util.map_option
                                                (FStar_Syntax_Subst.subst
                                                   subst) eopt in
                                            let hd1 =
                                              {
                                                FStar_Syntax_Syntax.v =
                                                  (FStar_Syntax_Syntax.Pat_dot_term
                                                     eopt1);
                                                FStar_Syntax_Syntax.p =
                                                  (hd.FStar_Syntax_Syntax.p)
                                              } in
                                            let uu___6 =
                                              aux simple_pats1 bvs1 sub_pats2 in
                                            (hd1, b) :: uu___6
                                        | FStar_Syntax_Syntax.Pat_var x ->
                                            (match (bvs1, sub_pats2) with
                                             | (x'::bvs2,
                                                (hd1, uu___6)::sub_pats3)
                                                 when
                                                 FStar_Syntax_Syntax.bv_eq x
                                                   x'
                                                 ->
                                                 let uu___7 =
                                                   aux simple_pats1 bvs2
                                                     sub_pats3 in
                                                 (hd1, b) :: uu___7
                                             | uu___6 ->
                                                 FStar_Compiler_Effect.failwith
                                                   "Impossible: simple pat variable mismatch")
                                        | uu___6 ->
                                            FStar_Compiler_Effect.failwith
                                              "Impossible: expected a simple pattern") in
                                 let us =
                                   let uu___6 =
                                     FStar_Syntax_Util.head_and_args
                                       simple_pat_e1 in
                                   match uu___6 with
                                   | (hd, uu___7) ->
                                       let uu___8 =
                                         let uu___9 =
                                           FStar_Syntax_Subst.compress hd in
                                         uu___9.FStar_Syntax_Syntax.n in
                                       (match uu___8 with
                                        | FStar_Syntax_Syntax.Tm_fvar uu___9
                                            -> []
                                        | FStar_Syntax_Syntax.Tm_uinst
                                            (uu___9, us1) -> us1
                                        | uu___9 ->
                                            FStar_Compiler_Effect.failwith
                                              "Impossible: tc_pat: pattern head not fvar or uinst") in
                                 match pat.FStar_Syntax_Syntax.v with
                                 | FStar_Syntax_Syntax.Pat_cons
                                     (fv1, uu___6, simple_pats) ->
                                     let nested_pats =
                                       aux simple_pats simple_bvs
                                         checked_sub_pats in
                                     {
                                       FStar_Syntax_Syntax.v =
                                         (FStar_Syntax_Syntax.Pat_cons
                                            (fv1,
                                              (FStar_Pervasives_Native.Some
                                                 us), nested_pats));
                                       FStar_Syntax_Syntax.p =
                                         (pat.FStar_Syntax_Syntax.p)
                                     }
                                 | uu___6 ->
                                     FStar_Compiler_Effect.failwith
                                       "Impossible: tc_pat: pat.v expected Pat_cons" in
                               let uu___6 =
                                 reconstruct_nested_pat simple_pat_elab in
                               (bvs, tms, pat_e, uu___6, g, erasable1)))))) in
        (let uu___1 = FStar_Compiler_Effect.op_Bang dbg_Patterns in
         if uu___1
         then
           let uu___2 =
             FStar_Class_Show.show FStar_Syntax_Print.showable_pat p0 in
           FStar_Compiler_Util.print1 "Checking pattern: %s\n" uu___2
         else ());
        (let uu___1 =
           let uu___2 =
             let uu___3 = FStar_TypeChecker_Env.clear_expected_typ env in
             FStar_Pervasives_Native.fst uu___3 in
           let uu___3 = FStar_TypeChecker_PatternUtils.elaborate_pat env p0 in
           let uu___4 = expected_pat_typ env p0.FStar_Syntax_Syntax.p pat_t in
           check_nested_pattern uu___2 uu___3 uu___4 in
         match uu___1 with
         | (bvs, tms, pat_e, pat, g, erasable) ->
             let extended_env = FStar_TypeChecker_Env.push_bvs env bvs in
             let pat_e_norm =
               FStar_TypeChecker_Normalize.normalize
                 [FStar_TypeChecker_Env.Beta] extended_env pat_e in
             ((let uu___3 = FStar_Compiler_Effect.op_Bang dbg_Patterns in
               if uu___3
               then
                 let uu___4 =
                   FStar_Class_Show.show FStar_Syntax_Print.showable_pat pat in
                 let uu___5 =
                   FStar_Class_Show.show FStar_Syntax_Print.showable_term
                     pat_e in
                 FStar_Compiler_Util.print2
                   "Done checking pattern %s as expression %s\n" uu___4
                   uu___5
               else ());
              (pat, bvs, tms, extended_env, pat_e, pat_e_norm, g, erasable)))
and (tc_eqn :
  FStar_Syntax_Syntax.bv ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.match_returns_ascription
        FStar_Pervasives_Native.option ->
        FStar_Syntax_Syntax.branch ->
          ((FStar_Syntax_Syntax.pat * FStar_Syntax_Syntax.term
            FStar_Pervasives_Native.option * FStar_Syntax_Syntax.term) *
            FStar_Syntax_Syntax.formula * FStar_Ident.lident *
            FStar_Syntax_Syntax.cflag Prims.list
            FStar_Pervasives_Native.option *
            (Prims.bool -> FStar_TypeChecker_Common.lcomp)
            FStar_Pervasives_Native.option * FStar_TypeChecker_Env.guard_t *
            Prims.bool))
  =
  fun scrutinee ->
    fun env ->
      fun ret_opt ->
        fun branch ->
          let uu___ = FStar_Syntax_Subst.open_branch branch in
          match uu___ with
          | (pattern, when_clause, branch_exp) ->
              let uu___1 = branch in
              (match uu___1 with
               | (cpat, uu___2, cbr) ->
                   let pat_t = scrutinee.FStar_Syntax_Syntax.sort in
                   let scrutinee_tm =
                     FStar_Syntax_Syntax.bv_to_name scrutinee in
                   let uu___3 =
                     let uu___4 = FStar_TypeChecker_Env.push_bv env scrutinee in
                     FStar_TypeChecker_Env.clear_expected_typ uu___4 in
                   (match uu___3 with
                    | (scrutinee_env, uu___4) ->
                        let uu___5 =
                          let uu___6 =
                            FStar_TypeChecker_Env.push_bv env scrutinee in
                          tc_pat uu___6 pat_t pattern in
                        (match uu___5 with
                         | (pattern1, pat_bvs, pat_bv_tms, pat_env, pat_exp,
                            norm_pat_exp, guard_pat, erasable) ->
                             ((let uu___7 = FStar_Compiler_Debug.extreme () in
                               if uu___7
                               then
                                 let uu___8 =
                                   FStar_Class_Show.show
                                     FStar_Syntax_Print.showable_pat pattern1 in
                                 let uu___9 =
                                   FStar_Syntax_Print.bvs_to_string ";"
                                     pat_bvs in
                                 let uu___10 =
                                   FStar_Class_Show.show
                                     (FStar_Class_Show.show_list
                                        FStar_Syntax_Print.showable_term)
                                     pat_bv_tms in
                                 FStar_Compiler_Util.print3
                                   "tc_eqn: typechecked pattern %s with bvs %s and pat_bv_tms=%s\n"
                                   uu___8 uu___9 uu___10
                               else ());
                              (let uu___7 =
                                 match when_clause with
                                 | FStar_Pervasives_Native.None ->
                                     (FStar_Pervasives_Native.None,
                                       (FStar_Class_Monoid.mzero
                                          FStar_TypeChecker_Common.monoid_guard_t))
                                 | FStar_Pervasives_Native.Some e ->
                                     let uu___8 =
                                       FStar_TypeChecker_Env.should_verify
                                         env in
                                     if uu___8
                                     then
                                       FStar_Errors.raise_error
                                         (FStar_Errors_Codes.Fatal_WhenClauseNotSupported,
                                           "When clauses are not yet supported in --verify mode; they will be some day")
                                         e.FStar_Syntax_Syntax.pos
                                     else
                                       (let uu___10 =
                                          let uu___11 =
                                            FStar_TypeChecker_Env.set_expected_typ
                                              pat_env
                                              FStar_Syntax_Util.t_bool in
                                          tc_term uu___11 e in
                                        match uu___10 with
                                        | (e1, c, g) ->
                                            ((FStar_Pervasives_Native.Some e1),
                                              g)) in
                               match uu___7 with
                               | (when_clause1, g_when) ->
                                   let uu___8 =
                                     let branch_exp1 =
                                       match ret_opt with
                                       | FStar_Pervasives_Native.None ->
                                           branch_exp
                                       | FStar_Pervasives_Native.Some
                                           (b, asc) ->
                                           let uu___9 =
                                             FStar_Syntax_Subst.subst_ascription
                                               [FStar_Syntax_Syntax.NT
                                                  ((b.FStar_Syntax_Syntax.binder_bv),
                                                    norm_pat_exp)] asc in
                                           FStar_Syntax_Util.ascribe
                                             branch_exp uu___9 in
                                     let uu___9 = tc_term pat_env branch_exp1 in
                                     match uu___9 with
                                     | (branch_exp2, c, g_branch) ->
                                         let branch_exp3 =
                                           match ret_opt with
                                           | FStar_Pervasives_Native.None ->
                                               branch_exp2
                                           | uu___10 ->
                                               let uu___11 =
                                                 let uu___12 =
                                                   FStar_Syntax_Subst.compress
                                                     branch_exp2 in
                                                 uu___12.FStar_Syntax_Syntax.n in
                                               (match uu___11 with
                                                | FStar_Syntax_Syntax.Tm_ascribed
                                                    {
                                                      FStar_Syntax_Syntax.tm
                                                        = branch_exp4;
                                                      FStar_Syntax_Syntax.asc
                                                        = uu___12;
                                                      FStar_Syntax_Syntax.eff_opt
                                                        = uu___13;_}
                                                    -> branch_exp4
                                                | uu___12 ->
                                                    FStar_Compiler_Effect.failwith
                                                      "Impossible (expected the match branch with an ascription)") in
                                         (branch_exp3, c, g_branch) in
                                   (match uu___8 with
                                    | (branch_exp1, c, g_branch) ->
                                        (FStar_Defensive.def_check_scoped
                                           FStar_TypeChecker_Env.hasBinders_env
                                           FStar_TypeChecker_Env.hasNames_guard
                                           FStar_TypeChecker_Env.pretty_guard
                                           cbr.FStar_Syntax_Syntax.pos
                                           "tc_eqn.1" pat_env g_branch;
                                         (let when_condition =
                                            match when_clause1 with
                                            | FStar_Pervasives_Native.None ->
                                                FStar_Pervasives_Native.None
                                            | FStar_Pervasives_Native.Some w
                                                ->
                                                let uu___10 =
                                                  FStar_Syntax_Util.mk_eq2
                                                    FStar_Syntax_Syntax.U_zero
                                                    FStar_Syntax_Util.t_bool
                                                    w
                                                    FStar_Syntax_Util.exp_true_bool in
                                                FStar_Pervasives_Native.Some
                                                  uu___10 in
                                          let branch_guard =
                                            let uu___10 =
                                              let uu___11 =
                                                FStar_TypeChecker_Env.should_verify
                                                  env in
                                              Prims.op_Negation uu___11 in
                                            if uu___10
                                            then
                                              FStar_Syntax_Util.exp_true_bool
                                            else
                                              (let rec build_branch_guard
                                                 scrutinee_tm1 pattern2
                                                 pat_exp1 =
                                                 let discriminate
                                                   scrutinee_tm2 f =
                                                   let uu___12 =
                                                     let uu___13 =
                                                       FStar_TypeChecker_Env.typ_of_datacon
                                                         env
                                                         f.FStar_Syntax_Syntax.v in
                                                     FStar_TypeChecker_Env.datacons_of_typ
                                                       env uu___13 in
                                                   match uu___12 with
                                                   | (is_induc, datacons) ->
                                                       if
                                                         (Prims.op_Negation
                                                            is_induc)
                                                           ||
                                                           ((FStar_Compiler_List.length
                                                               datacons)
                                                              > Prims.int_one)
                                                       then
                                                         let discriminator =
                                                           FStar_Syntax_Util.mk_discriminator
                                                             f.FStar_Syntax_Syntax.v in
                                                         let uu___13 =
                                                           FStar_TypeChecker_Env.try_lookup_lid
                                                             env
                                                             discriminator in
                                                         (match uu___13 with
                                                          | FStar_Pervasives_Native.None
                                                              -> []
                                                          | uu___14 ->
                                                              let disc =
                                                                FStar_Syntax_Syntax.fvar
                                                                  discriminator
                                                                  FStar_Pervasives_Native.None in
                                                              let uu___15 =
                                                                let uu___16 =
                                                                  let uu___17
                                                                    =
                                                                    FStar_Syntax_Syntax.as_arg
                                                                    scrutinee_tm2 in
                                                                  [uu___17] in
                                                                FStar_Syntax_Syntax.mk_Tm_app
                                                                  disc
                                                                  uu___16
                                                                  scrutinee_tm2.FStar_Syntax_Syntax.pos in
                                                              [uu___15])
                                                       else [] in
                                                 let fail uu___12 =
                                                   let uu___13 =
                                                     let uu___14 =
                                                       FStar_Compiler_Range_Ops.string_of_range
                                                         pat_exp1.FStar_Syntax_Syntax.pos in
                                                     let uu___15 =
                                                       FStar_Class_Show.show
                                                         FStar_Syntax_Print.showable_term
                                                         pat_exp1 in
                                                     let uu___16 =
                                                       FStar_Syntax_Print.tag_of_term
                                                         pat_exp1 in
                                                     FStar_Compiler_Util.format3
                                                       "tc_eqn: Impossible (%s) %s (%s)"
                                                       uu___14 uu___15
                                                       uu___16 in
                                                   FStar_Compiler_Effect.failwith
                                                     uu___13 in
                                                 let rec head_constructor t =
                                                   match t.FStar_Syntax_Syntax.n
                                                   with
                                                   | FStar_Syntax_Syntax.Tm_fvar
                                                       fv ->
                                                       fv.FStar_Syntax_Syntax.fv_name
                                                   | FStar_Syntax_Syntax.Tm_uinst
                                                       (t1, uu___12) ->
                                                       head_constructor t1
                                                   | uu___12 -> fail () in
                                                 let force_scrutinee uu___12
                                                   =
                                                   match scrutinee_tm1 with
                                                   | FStar_Pervasives_Native.None
                                                       ->
                                                       let uu___13 =
                                                         let uu___14 =
                                                           FStar_Compiler_Range_Ops.string_of_range
                                                             pattern2.FStar_Syntax_Syntax.p in
                                                         let uu___15 =
                                                           FStar_Class_Show.show
                                                             FStar_Syntax_Print.showable_pat
                                                             pattern2 in
                                                         FStar_Compiler_Util.format2
                                                           "Impossible (%s): scrutinee of match is not defined %s"
                                                           uu___14 uu___15 in
                                                       FStar_Compiler_Effect.failwith
                                                         uu___13
                                                   | FStar_Pervasives_Native.Some
                                                       t -> t in
                                                 let pat_exp2 =
                                                   let uu___12 =
                                                     FStar_Syntax_Subst.compress
                                                       pat_exp1 in
                                                   FStar_Syntax_Util.unmeta
                                                     uu___12 in
                                                 match ((pattern2.FStar_Syntax_Syntax.v),
                                                         (pat_exp2.FStar_Syntax_Syntax.n))
                                                 with
                                                 | (uu___12,
                                                    FStar_Syntax_Syntax.Tm_name
                                                    uu___13) -> []
                                                 | (uu___12,
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    (FStar_Const.Const_unit))
                                                     -> []
                                                 | (FStar_Syntax_Syntax.Pat_constant
                                                    _c,
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    c1) ->
                                                     let uu___12 =
                                                       let uu___13 =
                                                         tc_constant env
                                                           pat_exp2.FStar_Syntax_Syntax.pos
                                                           c1 in
                                                       let uu___14 =
                                                         force_scrutinee () in
                                                       FStar_Syntax_Util.mk_decidable_eq
                                                         uu___13 uu___14
                                                         pat_exp2 in
                                                     [uu___12]
                                                 | (FStar_Syntax_Syntax.Pat_constant
                                                    (FStar_Const.Const_int
                                                    (uu___12,
                                                     FStar_Pervasives_Native.Some
                                                     uu___13)),
                                                    uu___14) ->
                                                     let uu___15 =
                                                       let uu___16 =
                                                         FStar_TypeChecker_Env.clear_expected_typ
                                                           env in
                                                       match uu___16 with
                                                       | (env1, uu___17) ->
                                                           env1.FStar_TypeChecker_Env.typeof_tot_or_gtot_term
                                                             env1 pat_exp2
                                                             true in
                                                     (match uu___15 with
                                                      | (uu___16, t, uu___17)
                                                          ->
                                                          let uu___18 =
                                                            let uu___19 =
                                                              force_scrutinee
                                                                () in
                                                            FStar_Syntax_Util.mk_decidable_eq
                                                              t uu___19
                                                              pat_exp2 in
                                                          [uu___18])
                                                 | (FStar_Syntax_Syntax.Pat_cons
                                                    (uu___12, uu___13, []),
                                                    FStar_Syntax_Syntax.Tm_uinst
                                                    uu___14) ->
                                                     let f =
                                                       head_constructor
                                                         pat_exp2 in
                                                     let uu___15 =
                                                       let uu___16 =
                                                         FStar_TypeChecker_Env.is_datacon
                                                           env
                                                           f.FStar_Syntax_Syntax.v in
                                                       Prims.op_Negation
                                                         uu___16 in
                                                     if uu___15
                                                     then
                                                       FStar_Compiler_Effect.failwith
                                                         "Impossible: nullary patterns must be data constructors"
                                                     else
                                                       (let uu___17 =
                                                          force_scrutinee () in
                                                        let uu___18 =
                                                          head_constructor
                                                            pat_exp2 in
                                                        discriminate uu___17
                                                          uu___18)
                                                 | (FStar_Syntax_Syntax.Pat_cons
                                                    (uu___12, uu___13, []),
                                                    FStar_Syntax_Syntax.Tm_fvar
                                                    uu___14) ->
                                                     let f =
                                                       head_constructor
                                                         pat_exp2 in
                                                     let uu___15 =
                                                       let uu___16 =
                                                         FStar_TypeChecker_Env.is_datacon
                                                           env
                                                           f.FStar_Syntax_Syntax.v in
                                                       Prims.op_Negation
                                                         uu___16 in
                                                     if uu___15
                                                     then
                                                       FStar_Compiler_Effect.failwith
                                                         "Impossible: nullary patterns must be data constructors"
                                                     else
                                                       (let uu___17 =
                                                          force_scrutinee () in
                                                        let uu___18 =
                                                          head_constructor
                                                            pat_exp2 in
                                                        discriminate uu___17
                                                          uu___18)
                                                 | (FStar_Syntax_Syntax.Pat_cons
                                                    (uu___12, uu___13,
                                                     pat_args),
                                                    FStar_Syntax_Syntax.Tm_app
                                                    {
                                                      FStar_Syntax_Syntax.hd
                                                        = head;
                                                      FStar_Syntax_Syntax.args
                                                        = args;_})
                                                     ->
                                                     let f =
                                                       head_constructor head in
                                                     let uu___14 =
                                                       (let uu___15 =
                                                          FStar_TypeChecker_Env.is_datacon
                                                            env
                                                            f.FStar_Syntax_Syntax.v in
                                                        Prims.op_Negation
                                                          uu___15)
                                                         ||
                                                         ((FStar_Compiler_List.length
                                                             pat_args)
                                                            <>
                                                            (FStar_Compiler_List.length
                                                               args)) in
                                                     if uu___14
                                                     then
                                                       FStar_Compiler_Effect.failwith
                                                         "Impossible: application patterns must be fully-applied data constructors"
                                                     else
                                                       (let sub_term_guards =
                                                          let uu___16 =
                                                            let uu___17 =
                                                              FStar_Compiler_List.zip
                                                                pat_args args in
                                                            FStar_Compiler_List.mapi
                                                              (fun i ->
                                                                 fun uu___18
                                                                   ->
                                                                   match uu___18
                                                                   with
                                                                   | 
                                                                   ((pi,
                                                                    uu___19),
                                                                    (ei,
                                                                    uu___20))
                                                                    ->
                                                                    let projector
                                                                    =
                                                                    FStar_TypeChecker_Env.lookup_projector
                                                                    env
                                                                    f.FStar_Syntax_Syntax.v
                                                                    i in
                                                                    let scrutinee_tm2
                                                                    =
                                                                    let uu___21
                                                                    =
                                                                    FStar_TypeChecker_Env.try_lookup_lid
                                                                    env
                                                                    projector in
                                                                    match uu___21
                                                                    with
                                                                    | 
                                                                    FStar_Pervasives_Native.None
                                                                    ->
                                                                    FStar_Pervasives_Native.None
                                                                    | 
                                                                    uu___22
                                                                    ->
                                                                    let proj
                                                                    =
                                                                    let uu___23
                                                                    =
                                                                    FStar_Ident.set_lid_range
                                                                    projector
                                                                    f.FStar_Syntax_Syntax.p in
                                                                    FStar_Syntax_Syntax.fvar
                                                                    uu___23
                                                                    FStar_Pervasives_Native.None in
                                                                    let uu___23
                                                                    =
                                                                    let uu___24
                                                                    =
                                                                    let uu___25
                                                                    =
                                                                    let uu___26
                                                                    =
                                                                    force_scrutinee
                                                                    () in
                                                                    FStar_Syntax_Syntax.as_arg
                                                                    uu___26 in
                                                                    [uu___25] in
                                                                    FStar_Syntax_Syntax.mk_Tm_app
                                                                    proj
                                                                    uu___24
                                                                    f.FStar_Syntax_Syntax.p in
                                                                    FStar_Pervasives_Native.Some
                                                                    uu___23 in
                                                                    build_branch_guard
                                                                    scrutinee_tm2
                                                                    pi ei)
                                                              uu___17 in
                                                          FStar_Compiler_List.flatten
                                                            uu___16 in
                                                        let uu___16 =
                                                          let uu___17 =
                                                            force_scrutinee
                                                              () in
                                                          discriminate
                                                            uu___17 f in
                                                        FStar_Compiler_List.op_At
                                                          uu___16
                                                          sub_term_guards)
                                                 | (FStar_Syntax_Syntax.Pat_dot_term
                                                    uu___12, uu___13) -> []
                                                 | uu___12 ->
                                                     let uu___13 =
                                                       let uu___14 =
                                                         FStar_Class_Show.show
                                                           FStar_Syntax_Print.showable_pat
                                                           pattern2 in
                                                       let uu___15 =
                                                         FStar_Class_Show.show
                                                           FStar_Syntax_Print.showable_term
                                                           pat_exp2 in
                                                       FStar_Compiler_Util.format2
                                                         "Internal error: unexpected elaborated pattern: %s and pattern expression %s"
                                                         uu___14 uu___15 in
                                                     FStar_Compiler_Effect.failwith
                                                       uu___13 in
                                               let build_and_check_branch_guard
                                                 scrutinee_tm1 pattern2 pat =
                                                 let uu___12 =
                                                   let uu___13 =
                                                     FStar_TypeChecker_Env.should_verify
                                                       env in
                                                   Prims.op_Negation uu___13 in
                                                 if uu___12
                                                 then
                                                   FStar_Syntax_Util.exp_true_bool
                                                 else
                                                   (let t =
                                                      let uu___14 =
                                                        build_branch_guard
                                                          scrutinee_tm1
                                                          pattern2 pat in
                                                      FStar_Syntax_Util.mk_and_l
                                                        uu___14 in
                                                    let uu___14 =
                                                      tc_check_tot_or_gtot_term
                                                        scrutinee_env t
                                                        FStar_Syntax_Util.t_bool
                                                        "" in
                                                    match uu___14 with
                                                    | (t1, uu___15, uu___16)
                                                        -> t1) in
                                               let branch_guard1 =
                                                 build_and_check_branch_guard
                                                   (FStar_Pervasives_Native.Some
                                                      scrutinee_tm) pattern1
                                                   norm_pat_exp in
                                               let branch_guard2 =
                                                 match when_condition with
                                                 | FStar_Pervasives_Native.None
                                                     -> branch_guard1
                                                 | FStar_Pervasives_Native.Some
                                                     w ->
                                                     FStar_Syntax_Util.mk_and
                                                       branch_guard1 w in
                                               branch_guard2) in
                                          (let uu___11 =
                                             FStar_Compiler_Debug.extreme () in
                                           if uu___11
                                           then
                                             let uu___12 =
                                               FStar_Class_Show.show
                                                 FStar_Syntax_Print.showable_term
                                                 branch_guard in
                                             FStar_Compiler_Util.print1
                                               "tc_eqn: branch guard : %s\n"
                                               uu___12
                                           else ());
                                          (let uu___11 =
                                             let eqs =
                                               let env1 = pat_env in
                                               let uu___12 =
                                                 let uu___13 =
                                                   FStar_TypeChecker_Env.should_verify
                                                     env1 in
                                                 Prims.op_Negation uu___13 in
                                               if uu___12
                                               then
                                                 FStar_Pervasives_Native.None
                                               else
                                                 (let e =
                                                    FStar_Syntax_Subst.compress
                                                      pat_exp in
                                                  let uu___14 =
                                                    let uu___15 =
                                                      env1.FStar_TypeChecker_Env.universe_of
                                                        env1 pat_t in
                                                    FStar_Syntax_Util.mk_eq2
                                                      uu___15 pat_t
                                                      scrutinee_tm e in
                                                  FStar_Pervasives_Native.Some
                                                    uu___14) in
                                             match ret_opt with
                                             | FStar_Pervasives_Native.Some
                                                 (uu___12,
                                                  (FStar_Pervasives.Inr c1,
                                                   uu___13, uu___14))
                                                 ->
                                                 let pat_bs =
                                                   FStar_Compiler_List.map
                                                     FStar_Syntax_Syntax.mk_binder
                                                     pat_bvs in
                                                 let g_branch1 =
                                                   let uu___15 =
                                                     let uu___16 =
                                                       if
                                                         FStar_Compiler_Util.is_some
                                                           eqs
                                                       then
                                                         let uu___17 =
                                                           FStar_Compiler_Util.must
                                                             eqs in
                                                         FStar_TypeChecker_Common.weaken_guard_formula
                                                           g_branch uu___17
                                                       else g_branch in
                                                     FStar_TypeChecker_Env.close_guard
                                                       env pat_bs uu___16 in
                                                   FStar_TypeChecker_Util.close_guard_implicits
                                                     env true pat_bs uu___15 in
                                                 ((FStar_Syntax_Util.comp_effect_name
                                                     c1),
                                                   FStar_Pervasives_Native.None,
                                                   FStar_Pervasives_Native.None,
                                                   g_when, g_branch1)
                                             | uu___12 ->
                                                 let uu___13 =
                                                   FStar_TypeChecker_Util.strengthen_precondition
                                                     FStar_Pervasives_Native.None
                                                     env branch_exp1 c
                                                     g_branch in
                                                 (match uu___13 with
                                                  | (c1, g_branch1) ->
                                                      let close_branch_with_substitutions
                                                        =
                                                        let m =
                                                          FStar_TypeChecker_Env.norm_eff_name
                                                            env
                                                            c1.FStar_TypeChecker_Common.eff_name in
                                                        (FStar_TypeChecker_Env.is_layered_effect
                                                           env m)
                                                          &&
                                                          (let uu___14 =
                                                             let uu___15 =
                                                               FStar_TypeChecker_Env.get_effect_decl
                                                                 env m in
                                                             FStar_Syntax_Util.get_layered_close_combinator
                                                               uu___15 in
                                                           FStar_Pervasives_Native.uu___is_None
                                                             uu___14) in
                                                      let uu___14 =
                                                        if
                                                          close_branch_with_substitutions
                                                        then
                                                          let c2 =
                                                            let uu___15 =
                                                              let uu___16 =
                                                                FStar_Syntax_Util.b2t
                                                                  branch_guard in
                                                              FStar_TypeChecker_Common.NonTrivial
                                                                uu___16 in
                                                            FStar_TypeChecker_Util.weaken_precondition
                                                              pat_env c1
                                                              uu___15 in
                                                          (c2,
                                                            (FStar_Class_Monoid.mzero
                                                               FStar_TypeChecker_Common.monoid_guard_t))
                                                        else
                                                          if
                                                            (let uu___16 =
                                                               FStar_TypeChecker_Env.should_verify
                                                                 pat_env in
                                                             Prims.op_Negation
                                                               uu___16)
                                                          then (c1, g_when)
                                                          else
                                                            (match (eqs,
                                                                    when_condition)
                                                             with
                                                             | (FStar_Pervasives_Native.None,
                                                                FStar_Pervasives_Native.None)
                                                                 ->
                                                                 (c1, g_when)
                                                             | (FStar_Pervasives_Native.Some
                                                                f,
                                                                FStar_Pervasives_Native.None)
                                                                 ->
                                                                 let gf =
                                                                   FStar_TypeChecker_Common.NonTrivial
                                                                    f in
                                                                 let g =
                                                                   FStar_TypeChecker_Env.guard_of_guard_formula
                                                                    gf in
                                                                 let uu___16
                                                                   =
                                                                   FStar_TypeChecker_Util.weaken_precondition
                                                                    pat_env
                                                                    c1 gf in
                                                                 let uu___17
                                                                   =
                                                                   FStar_TypeChecker_Env.imp_guard
                                                                    g g_when in
                                                                 (uu___16,
                                                                   uu___17)
                                                             | (FStar_Pervasives_Native.Some
                                                                f,
                                                                FStar_Pervasives_Native.Some
                                                                w) ->
                                                                 let g_f =
                                                                   FStar_TypeChecker_Common.NonTrivial
                                                                    f in
                                                                 let g_fw =
                                                                   let uu___16
                                                                    =
                                                                    FStar_Syntax_Util.mk_conj
                                                                    f w in
                                                                   FStar_TypeChecker_Common.NonTrivial
                                                                    uu___16 in
                                                                 let uu___16
                                                                   =
                                                                   FStar_TypeChecker_Util.weaken_precondition
                                                                    pat_env
                                                                    c1 g_fw in
                                                                 let uu___17
                                                                   =
                                                                   let uu___18
                                                                    =
                                                                    FStar_TypeChecker_Env.guard_of_guard_formula
                                                                    g_f in
                                                                   FStar_TypeChecker_Env.imp_guard
                                                                    uu___18
                                                                    g_when in
                                                                 (uu___16,
                                                                   uu___17)
                                                             | (FStar_Pervasives_Native.None,
                                                                FStar_Pervasives_Native.Some
                                                                w) ->
                                                                 let g_w =
                                                                   FStar_TypeChecker_Common.NonTrivial
                                                                    w in
                                                                 let g =
                                                                   FStar_TypeChecker_Env.guard_of_guard_formula
                                                                    g_w in
                                                                 let uu___16
                                                                   =
                                                                   FStar_TypeChecker_Util.weaken_precondition
                                                                    pat_env
                                                                    c1 g_w in
                                                                 (uu___16,
                                                                   g_when)) in
                                                      (match uu___14 with
                                                       | (c_weak,
                                                          g_when_weak) ->
                                                           let binders =
                                                             FStar_Compiler_List.map
                                                               FStar_Syntax_Syntax.mk_binder
                                                               pat_bvs in
                                                           let maybe_return_c_weak
                                                             should_return =
                                                             let c_weak1 =
                                                               let uu___15 =
                                                                 should_return
                                                                   &&
                                                                   (FStar_TypeChecker_Common.is_pure_or_ghost_lcomp
                                                                    c_weak) in
                                                               if uu___15
                                                               then
                                                                 let uu___16
                                                                   =
                                                                   FStar_TypeChecker_Env.push_bvs
                                                                    scrutinee_env
                                                                    pat_bvs in
                                                                 FStar_TypeChecker_Util.maybe_assume_result_eq_pure_term
                                                                   uu___16
                                                                   branch_exp1
                                                                   c_weak
                                                               else c_weak in
                                                             if
                                                               close_branch_with_substitutions
                                                             then
                                                               ((let uu___16
                                                                   =
                                                                   FStar_Compiler_Effect.op_Bang
                                                                    dbg_LayeredEffects in
                                                                 if uu___16
                                                                 then
                                                                   FStar_Compiler_Util.print_string
                                                                    "Typechecking pat_bv_tms ...\n"
                                                                 else ());
                                                                (let pat_bv_tms1
                                                                   =
                                                                   FStar_Compiler_List.map
                                                                    (fun
                                                                    pat_bv_tm
                                                                    ->
                                                                    let uu___16
                                                                    =
                                                                    let uu___17
                                                                    =
                                                                    FStar_Syntax_Syntax.as_arg
                                                                    scrutinee_tm in
                                                                    [uu___17] in
                                                                    FStar_Syntax_Syntax.mk_Tm_app
                                                                    pat_bv_tm
                                                                    uu___16
                                                                    FStar_Compiler_Range_Type.dummyRange)
                                                                    pat_bv_tms in
                                                                 let pat_bv_tms2
                                                                   =
                                                                   let env1 =
                                                                    let uu___16
                                                                    =
                                                                    FStar_TypeChecker_Env.push_bv
                                                                    env
                                                                    scrutinee in
                                                                    {
                                                                    FStar_TypeChecker_Env.solver
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.solver);
                                                                    FStar_TypeChecker_Env.range
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.range);
                                                                    FStar_TypeChecker_Env.curmodule
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.curmodule);
                                                                    FStar_TypeChecker_Env.gamma
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.gamma);
                                                                    FStar_TypeChecker_Env.gamma_sig
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.gamma_sig);
                                                                    FStar_TypeChecker_Env.gamma_cache
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.gamma_cache);
                                                                    FStar_TypeChecker_Env.modules
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.modules);
                                                                    FStar_TypeChecker_Env.expected_typ
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.expected_typ);
                                                                    FStar_TypeChecker_Env.sigtab
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.sigtab);
                                                                    FStar_TypeChecker_Env.attrtab
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.attrtab);
                                                                    FStar_TypeChecker_Env.instantiate_imp
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.instantiate_imp);
                                                                    FStar_TypeChecker_Env.effects
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.effects);
                                                                    FStar_TypeChecker_Env.generalize
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.generalize);
                                                                    FStar_TypeChecker_Env.letrecs
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.letrecs);
                                                                    FStar_TypeChecker_Env.top_level
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.top_level);
                                                                    FStar_TypeChecker_Env.check_uvars
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.check_uvars);
                                                                    FStar_TypeChecker_Env.use_eq_strict
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.use_eq_strict);
                                                                    FStar_TypeChecker_Env.is_iface
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.is_iface);
                                                                    FStar_TypeChecker_Env.admit
                                                                    = true;
                                                                    FStar_TypeChecker_Env.lax_universes
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.lax_universes);
                                                                    FStar_TypeChecker_Env.phase1
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.phase1);
                                                                    FStar_TypeChecker_Env.failhard
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.failhard);
                                                                    FStar_TypeChecker_Env.flychecking
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.flychecking);
                                                                    FStar_TypeChecker_Env.uvar_subtyping
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.uvar_subtyping);
                                                                    FStar_TypeChecker_Env.intactics
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.intactics);
                                                                    FStar_TypeChecker_Env.nocoerce
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.nocoerce);
                                                                    FStar_TypeChecker_Env.tc_term
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.tc_term);
                                                                    FStar_TypeChecker_Env.typeof_tot_or_gtot_term
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                                                                    FStar_TypeChecker_Env.universe_of
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.universe_of);
                                                                    FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                                                                    FStar_TypeChecker_Env.teq_nosmt_force
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.teq_nosmt_force);
                                                                    FStar_TypeChecker_Env.subtype_nosmt_force
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.subtype_nosmt_force);
                                                                    FStar_TypeChecker_Env.qtbl_name_and_index
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.qtbl_name_and_index);
                                                                    FStar_TypeChecker_Env.normalized_eff_names
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.normalized_eff_names);
                                                                    FStar_TypeChecker_Env.fv_delta_depths
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.fv_delta_depths);
                                                                    FStar_TypeChecker_Env.proof_ns
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.proof_ns);
                                                                    FStar_TypeChecker_Env.synth_hook
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.synth_hook);
                                                                    FStar_TypeChecker_Env.try_solve_implicits_hook
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.try_solve_implicits_hook);
                                                                    FStar_TypeChecker_Env.splice
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.splice);
                                                                    FStar_TypeChecker_Env.mpreprocess
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.mpreprocess);
                                                                    FStar_TypeChecker_Env.postprocess
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.postprocess);
                                                                    FStar_TypeChecker_Env.identifier_info
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.identifier_info);
                                                                    FStar_TypeChecker_Env.tc_hooks
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.tc_hooks);
                                                                    FStar_TypeChecker_Env.dsenv
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.dsenv);
                                                                    FStar_TypeChecker_Env.nbe
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.nbe);
                                                                    FStar_TypeChecker_Env.strict_args_tab
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.strict_args_tab);
                                                                    FStar_TypeChecker_Env.erasable_types_tab
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.erasable_types_tab);
                                                                    FStar_TypeChecker_Env.enable_defer_to_tac
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.enable_defer_to_tac);
                                                                    FStar_TypeChecker_Env.unif_allow_ref_guards
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.unif_allow_ref_guards);
                                                                    FStar_TypeChecker_Env.erase_erasable_args
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.erase_erasable_args);
                                                                    FStar_TypeChecker_Env.core_check
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.core_check);
                                                                    FStar_TypeChecker_Env.missing_decl
                                                                    =
                                                                    (uu___16.FStar_TypeChecker_Env.missing_decl)
                                                                    } in
                                                                   let uu___16
                                                                    =
                                                                    let uu___17
                                                                    =
                                                                    FStar_Compiler_List.fold_left2
                                                                    (fun
                                                                    uu___18
                                                                    ->
                                                                    fun
                                                                    pat_bv_tm
                                                                    ->
                                                                    fun bv ->
                                                                    match uu___18
                                                                    with
                                                                    | 
                                                                    (substs,
                                                                    acc) ->
                                                                    let expected_t
                                                                    =
                                                                    FStar_Syntax_Subst.subst
                                                                    substs
                                                                    bv.FStar_Syntax_Syntax.sort in
                                                                    let pat_bv_tm1
                                                                    =
                                                                    let uu___19
                                                                    =
                                                                    let uu___20
                                                                    =
                                                                    FStar_TypeChecker_Env.set_expected_typ
                                                                    env1
                                                                    expected_t in
                                                                    let uu___21
                                                                    =
                                                                    FStar_Syntax_Subst.subst
                                                                    substs
                                                                    pat_bv_tm in
                                                                    tc_trivial_guard
                                                                    uu___20
                                                                    uu___21 in
                                                                    FStar_Pervasives_Native.fst
                                                                    uu___19 in
                                                                    ((FStar_Compiler_List.op_At
                                                                    substs
                                                                    [
                                                                    FStar_Syntax_Syntax.NT
                                                                    (bv,
                                                                    pat_bv_tm1)]),
                                                                    (FStar_Compiler_List.op_At
                                                                    acc
                                                                    [pat_bv_tm1])))
                                                                    ([], [])
                                                                    pat_bv_tms1
                                                                    pat_bvs in
                                                                    FStar_Pervasives_Native.snd
                                                                    uu___17 in
                                                                   FStar_Compiler_List.map
                                                                    (FStar_TypeChecker_Normalize.normalize
                                                                    [FStar_TypeChecker_Env.Beta]
                                                                    env1)
                                                                    uu___16 in
                                                                 (let uu___17
                                                                    =
                                                                    FStar_Compiler_Effect.op_Bang
                                                                    dbg_LayeredEffects in
                                                                  if uu___17
                                                                  then
                                                                    let uu___18
                                                                    =
                                                                    FStar_Class_Show.show
                                                                    (FStar_Class_Show.show_list
                                                                    FStar_Syntax_Print.showable_term)
                                                                    pat_bv_tms2 in
                                                                    let uu___19
                                                                    =
                                                                    FStar_Class_Show.show
                                                                    (FStar_Class_Show.show_list
                                                                    FStar_Syntax_Print.showable_bv)
                                                                    pat_bvs in
                                                                    FStar_Compiler_Util.print2
                                                                    "tc_eqn: typechecked pat_bv_tms=%s (pat_bvs=%s)\n"
                                                                    uu___18
                                                                    uu___19
                                                                  else ());
                                                                 (let uu___17
                                                                    =
                                                                    FStar_TypeChecker_Env.push_bv
                                                                    env
                                                                    scrutinee in
                                                                  let uu___18
                                                                    =
                                                                    FStar_TypeChecker_Common.apply_lcomp
                                                                    (fun c2
                                                                    -> c2)
                                                                    (fun g ->
                                                                    match eqs
                                                                    with
                                                                    | 
                                                                    FStar_Pervasives_Native.None
                                                                    -> g
                                                                    | 
                                                                    FStar_Pervasives_Native.Some
                                                                    eqs1 ->
                                                                    FStar_TypeChecker_Common.weaken_guard_formula
                                                                    g eqs1)
                                                                    c_weak1 in
                                                                  FStar_TypeChecker_Util.close_layered_lcomp_with_substitutions
                                                                    uu___17
                                                                    pat_bvs
                                                                    pat_bv_tms2
                                                                    uu___18)))
                                                             else
                                                               (let uu___16 =
                                                                  let uu___17
                                                                    =
                                                                    FStar_TypeChecker_Env.norm_eff_name
                                                                    env
                                                                    c_weak1.FStar_TypeChecker_Common.eff_name in
                                                                  FStar_TypeChecker_Env.is_layered_effect
                                                                    env
                                                                    uu___17 in
                                                                if uu___16
                                                                then
                                                                  let uu___17
                                                                    =
                                                                    FStar_TypeChecker_Env.push_bv
                                                                    env
                                                                    scrutinee in
                                                                  FStar_TypeChecker_Util.close_layered_lcomp_with_combinator
                                                                    uu___17
                                                                    pat_bvs
                                                                    c_weak1
                                                                else
                                                                  (let uu___18
                                                                    =
                                                                    FStar_TypeChecker_Env.push_bv
                                                                    env
                                                                    scrutinee in
                                                                   FStar_TypeChecker_Util.close_wp_lcomp
                                                                    uu___18
                                                                    pat_bvs
                                                                    c_weak1)) in
                                                           let uu___15 =
                                                             FStar_TypeChecker_Env.close_guard
                                                               env binders
                                                               g_when_weak in
                                                           let uu___16 =
                                                             FStar_Class_Monoid.op_Plus_Plus
                                                               FStar_TypeChecker_Common.monoid_guard_t
                                                               guard_pat
                                                               g_branch1 in
                                                           ((c_weak.FStar_TypeChecker_Common.eff_name),
                                                             (FStar_Pervasives_Native.Some
                                                                (c_weak.FStar_TypeChecker_Common.cflags)),
                                                             (FStar_Pervasives_Native.Some
                                                                maybe_return_c_weak),
                                                             uu___15,
                                                             uu___16))) in
                                           match uu___11 with
                                           | (effect_label, cflags,
                                              maybe_return_c, g_when1,
                                              g_branch1) ->
                                               let guard =
                                                 FStar_Class_Monoid.op_Plus_Plus
                                                   FStar_TypeChecker_Common.monoid_guard_t
                                                   g_when1 g_branch1 in
                                               ((let uu___13 =
                                                   FStar_Compiler_Debug.high
                                                     () in
                                                 if uu___13
                                                 then
                                                   let uu___14 =
                                                     FStar_TypeChecker_Rel.guard_to_string
                                                       env guard in
                                                   FStar_Compiler_Util.print1
                                                     "Carrying guard from match: %s\n"
                                                     uu___14
                                                 else ());
                                                (let uu___13 =
                                                   FStar_Syntax_Subst.close_branch
                                                     (pattern1, when_clause1,
                                                       branch_exp1) in
                                                 let uu___14 =
                                                   let uu___15 =
                                                     FStar_Compiler_List.map
                                                       FStar_Syntax_Syntax.mk_binder
                                                       pat_bvs in
                                                   FStar_TypeChecker_Util.close_guard_implicits
                                                     env false uu___15 guard in
                                                 (uu___13, branch_guard,
                                                   effect_label, cflags,
                                                   maybe_return_c, uu___14,
                                                   erasable))))))))))))
and (check_top_level_let :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
        FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      let env1 = instantiate_both env in
      match e.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Tm_let
          { FStar_Syntax_Syntax.lbs = (false, lb::[]);
            FStar_Syntax_Syntax.body1 = e2;_}
          ->
          let uu___ = check_let_bound_def true env1 lb in
          (match uu___ with
           | (e1, univ_vars, c1, g1, annotated) ->
               let uu___1 =
                 if
                   annotated &&
                     (Prims.op_Negation env1.FStar_TypeChecker_Env.generalize)
                 then
                   let uu___2 =
                     FStar_TypeChecker_Normalize.reduce_uvar_solutions env1
                       e1 in
                   (g1, uu___2, univ_vars, c1)
                 else
                   (let g11 =
                      let uu___3 =
                        FStar_TypeChecker_Rel.solve_deferred_constraints env1
                          g1 in
                      FStar_TypeChecker_Rel.resolve_implicits env1 uu___3 in
                    let uu___3 = FStar_TypeChecker_Common.lcomp_comp c1 in
                    match uu___3 with
                    | (comp1, g_comp1) ->
                        let g12 =
                          FStar_Class_Monoid.op_Plus_Plus
                            FStar_TypeChecker_Common.monoid_guard_t g11
                            g_comp1 in
                        let uu___4 =
                          let uu___5 =
                            FStar_TypeChecker_Generalize.generalize env1
                              false
                              [((lb.FStar_Syntax_Syntax.lbname), e1, comp1)] in
                          FStar_Compiler_List.hd uu___5 in
                        (match uu___4 with
                         | (uu___5, univs, e11, c11, gvs) ->
                             let g13 =
                               FStar_TypeChecker_Rel.resolve_generalization_implicits
                                 env1 g12 in
                             let g14 =
                               FStar_TypeChecker_Env.map_guard g13
                                 (FStar_TypeChecker_Normalize.normalize
                                    [FStar_TypeChecker_Env.Beta;
                                    FStar_TypeChecker_Env.DoNotUnfoldPureLets;
                                    FStar_TypeChecker_Env.CompressUvars;
                                    FStar_TypeChecker_Env.NoFullNorm;
                                    FStar_TypeChecker_Env.Exclude
                                      FStar_TypeChecker_Env.Zeta] env1) in
                             let g15 =
                               FStar_TypeChecker_Env.abstract_guard_n gvs g14 in
                             let uu___6 =
                               FStar_TypeChecker_Common.lcomp_of_comp c11 in
                             (g15, e11, univs, uu___6))) in
               (match uu___1 with
                | (g11, e11, univ_vars1, c11) ->
                    let uu___2 =
                      let uu___3 =
                        FStar_TypeChecker_Util.check_top_level env1 g11 c11 in
                      match uu___3 with
                      | (ok, c12) ->
                          if ok
                          then (e2, c12)
                          else
                            ((let uu___6 =
                                FStar_TypeChecker_Env.get_range env1 in
                              FStar_Errors.log_issue uu___6
                                FStar_TypeChecker_Err.top_level_effect);
                             (let uu___6 =
                                FStar_Syntax_Syntax.mk
                                  (FStar_Syntax_Syntax.Tm_meta
                                     {
                                       FStar_Syntax_Syntax.tm2 = e2;
                                       FStar_Syntax_Syntax.meta =
                                         (FStar_Syntax_Syntax.Meta_desugared
                                            FStar_Syntax_Syntax.Masked_effect)
                                     }) e2.FStar_Syntax_Syntax.pos in
                              (uu___6, c12))) in
                    (match uu___2 with
                     | (e21, c12) ->
                         ((let uu___4 = FStar_Compiler_Debug.medium () in
                           if uu___4
                           then
                             let uu___5 =
                               FStar_Class_Show.show
                                 FStar_Syntax_Print.showable_term e11 in
                             FStar_Compiler_Util.print1
                               "Let binding BEFORE tcnorm: %s\n" uu___5
                           else ());
                          (let e12 =
                             let uu___4 = FStar_Options.tcnorm () in
                             if uu___4
                             then
                               FStar_TypeChecker_Normalize.normalize
                                 [FStar_TypeChecker_Env.UnfoldAttr
                                    [FStar_Parser_Const.tcnorm_attr];
                                 FStar_TypeChecker_Env.Exclude
                                   FStar_TypeChecker_Env.Beta;
                                 FStar_TypeChecker_Env.Exclude
                                   FStar_TypeChecker_Env.Zeta;
                                 FStar_TypeChecker_Env.NoFullNorm;
                                 FStar_TypeChecker_Env.DoNotUnfoldPureLets]
                                 env1 e11
                             else e11 in
                           (let uu___5 = FStar_Compiler_Debug.medium () in
                            if uu___5
                            then
                              let uu___6 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term e12 in
                              FStar_Compiler_Util.print1
                                "Let binding AFTER tcnorm: %s\n" uu___6
                            else ());
                           (let cres =
                              FStar_Syntax_Syntax.mk_Total
                                FStar_Syntax_Syntax.t_unit in
                            let lb1 =
                              FStar_Syntax_Util.close_univs_and_mk_letbinding
                                FStar_Pervasives_Native.None
                                lb.FStar_Syntax_Syntax.lbname univ_vars1
                                (FStar_Syntax_Util.comp_result c12)
                                (FStar_Syntax_Util.comp_effect_name c12) e12
                                lb.FStar_Syntax_Syntax.lbattrs
                                lb.FStar_Syntax_Syntax.lbpos in
                            let uu___5 =
                              FStar_Syntax_Syntax.mk
                                (FStar_Syntax_Syntax.Tm_let
                                   {
                                     FStar_Syntax_Syntax.lbs = (false, [lb1]);
                                     FStar_Syntax_Syntax.body1 = e21
                                   }) e.FStar_Syntax_Syntax.pos in
                            let uu___6 =
                              FStar_TypeChecker_Common.lcomp_of_comp cres in
                            (uu___5, uu___6,
                              (FStar_Class_Monoid.mzero
                                 FStar_TypeChecker_Common.monoid_guard_t))))))))
      | uu___ ->
          FStar_Compiler_Effect.failwith
            "Impossible: check_top_level_let: not a let"
and (maybe_intro_smt_lemma :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_TypeChecker_Common.lcomp -> FStar_TypeChecker_Common.lcomp)
  =
  fun env ->
    fun lem_typ ->
      fun c2 ->
        let uu___ = FStar_Syntax_Util.is_smt_lemma lem_typ in
        if uu___
        then
          let universe_of_binders bs =
            let uu___1 =
              FStar_Compiler_List.fold_left
                (fun uu___2 ->
                   fun b ->
                     match uu___2 with
                     | (env1, us) ->
                         let u =
                           env1.FStar_TypeChecker_Env.universe_of env1
                             (b.FStar_Syntax_Syntax.binder_bv).FStar_Syntax_Syntax.sort in
                         let env2 =
                           FStar_TypeChecker_Env.push_binders env1 [b] in
                         (env2, (u :: us))) (env, []) bs in
            match uu___1 with | (uu___2, us) -> FStar_Compiler_List.rev us in
          let quant =
            FStar_Syntax_Util.smt_lemma_as_forall lem_typ universe_of_binders in
          FStar_TypeChecker_Util.weaken_precondition env c2
            (FStar_TypeChecker_Common.NonTrivial quant)
        else c2
and (check_inner_let :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
        FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      let env1 = instantiate_both env in
      match e.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Tm_let
          { FStar_Syntax_Syntax.lbs = (false, lb::[]);
            FStar_Syntax_Syntax.body1 = e2;_}
          ->
          let env2 =
            {
              FStar_TypeChecker_Env.solver =
                (env1.FStar_TypeChecker_Env.solver);
              FStar_TypeChecker_Env.range =
                (env1.FStar_TypeChecker_Env.range);
              FStar_TypeChecker_Env.curmodule =
                (env1.FStar_TypeChecker_Env.curmodule);
              FStar_TypeChecker_Env.gamma =
                (env1.FStar_TypeChecker_Env.gamma);
              FStar_TypeChecker_Env.gamma_sig =
                (env1.FStar_TypeChecker_Env.gamma_sig);
              FStar_TypeChecker_Env.gamma_cache =
                (env1.FStar_TypeChecker_Env.gamma_cache);
              FStar_TypeChecker_Env.modules =
                (env1.FStar_TypeChecker_Env.modules);
              FStar_TypeChecker_Env.expected_typ =
                (env1.FStar_TypeChecker_Env.expected_typ);
              FStar_TypeChecker_Env.sigtab =
                (env1.FStar_TypeChecker_Env.sigtab);
              FStar_TypeChecker_Env.attrtab =
                (env1.FStar_TypeChecker_Env.attrtab);
              FStar_TypeChecker_Env.instantiate_imp =
                (env1.FStar_TypeChecker_Env.instantiate_imp);
              FStar_TypeChecker_Env.effects =
                (env1.FStar_TypeChecker_Env.effects);
              FStar_TypeChecker_Env.generalize =
                (env1.FStar_TypeChecker_Env.generalize);
              FStar_TypeChecker_Env.letrecs =
                (env1.FStar_TypeChecker_Env.letrecs);
              FStar_TypeChecker_Env.top_level = false;
              FStar_TypeChecker_Env.check_uvars =
                (env1.FStar_TypeChecker_Env.check_uvars);
              FStar_TypeChecker_Env.use_eq_strict =
                (env1.FStar_TypeChecker_Env.use_eq_strict);
              FStar_TypeChecker_Env.is_iface =
                (env1.FStar_TypeChecker_Env.is_iface);
              FStar_TypeChecker_Env.admit =
                (env1.FStar_TypeChecker_Env.admit);
              FStar_TypeChecker_Env.lax_universes =
                (env1.FStar_TypeChecker_Env.lax_universes);
              FStar_TypeChecker_Env.phase1 =
                (env1.FStar_TypeChecker_Env.phase1);
              FStar_TypeChecker_Env.failhard =
                (env1.FStar_TypeChecker_Env.failhard);
              FStar_TypeChecker_Env.flychecking =
                (env1.FStar_TypeChecker_Env.flychecking);
              FStar_TypeChecker_Env.uvar_subtyping =
                (env1.FStar_TypeChecker_Env.uvar_subtyping);
              FStar_TypeChecker_Env.intactics =
                (env1.FStar_TypeChecker_Env.intactics);
              FStar_TypeChecker_Env.nocoerce =
                (env1.FStar_TypeChecker_Env.nocoerce);
              FStar_TypeChecker_Env.tc_term =
                (env1.FStar_TypeChecker_Env.tc_term);
              FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                (env1.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
              FStar_TypeChecker_Env.universe_of =
                (env1.FStar_TypeChecker_Env.universe_of);
              FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term =
                (env1.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
              FStar_TypeChecker_Env.teq_nosmt_force =
                (env1.FStar_TypeChecker_Env.teq_nosmt_force);
              FStar_TypeChecker_Env.subtype_nosmt_force =
                (env1.FStar_TypeChecker_Env.subtype_nosmt_force);
              FStar_TypeChecker_Env.qtbl_name_and_index =
                (env1.FStar_TypeChecker_Env.qtbl_name_and_index);
              FStar_TypeChecker_Env.normalized_eff_names =
                (env1.FStar_TypeChecker_Env.normalized_eff_names);
              FStar_TypeChecker_Env.fv_delta_depths =
                (env1.FStar_TypeChecker_Env.fv_delta_depths);
              FStar_TypeChecker_Env.proof_ns =
                (env1.FStar_TypeChecker_Env.proof_ns);
              FStar_TypeChecker_Env.synth_hook =
                (env1.FStar_TypeChecker_Env.synth_hook);
              FStar_TypeChecker_Env.try_solve_implicits_hook =
                (env1.FStar_TypeChecker_Env.try_solve_implicits_hook);
              FStar_TypeChecker_Env.splice =
                (env1.FStar_TypeChecker_Env.splice);
              FStar_TypeChecker_Env.mpreprocess =
                (env1.FStar_TypeChecker_Env.mpreprocess);
              FStar_TypeChecker_Env.postprocess =
                (env1.FStar_TypeChecker_Env.postprocess);
              FStar_TypeChecker_Env.identifier_info =
                (env1.FStar_TypeChecker_Env.identifier_info);
              FStar_TypeChecker_Env.tc_hooks =
                (env1.FStar_TypeChecker_Env.tc_hooks);
              FStar_TypeChecker_Env.dsenv =
                (env1.FStar_TypeChecker_Env.dsenv);
              FStar_TypeChecker_Env.nbe = (env1.FStar_TypeChecker_Env.nbe);
              FStar_TypeChecker_Env.strict_args_tab =
                (env1.FStar_TypeChecker_Env.strict_args_tab);
              FStar_TypeChecker_Env.erasable_types_tab =
                (env1.FStar_TypeChecker_Env.erasable_types_tab);
              FStar_TypeChecker_Env.enable_defer_to_tac =
                (env1.FStar_TypeChecker_Env.enable_defer_to_tac);
              FStar_TypeChecker_Env.unif_allow_ref_guards =
                (env1.FStar_TypeChecker_Env.unif_allow_ref_guards);
              FStar_TypeChecker_Env.erase_erasable_args =
                (env1.FStar_TypeChecker_Env.erase_erasable_args);
              FStar_TypeChecker_Env.core_check =
                (env1.FStar_TypeChecker_Env.core_check);
              FStar_TypeChecker_Env.missing_decl =
                (env1.FStar_TypeChecker_Env.missing_decl)
            } in
          let uu___ =
            let uu___1 =
              let uu___2 = FStar_TypeChecker_Env.clear_expected_typ env2 in
              FStar_Pervasives_Native.fst uu___2 in
            check_let_bound_def false uu___1 lb in
          (match uu___ with
           | (e1, uu___1, c1, g1, annotated) ->
               let pure_or_ghost =
                 FStar_TypeChecker_Common.is_pure_or_ghost_lcomp c1 in
               let is_inline_let =
                 FStar_Compiler_Util.for_some
                   (FStar_Syntax_Util.is_fvar
                      FStar_Parser_Const.inline_let_attr)
                   lb.FStar_Syntax_Syntax.lbattrs in
               ((let uu___3 =
                   is_inline_let &&
                     (let uu___4 =
                        pure_or_ghost ||
                          (FStar_TypeChecker_Env.is_erasable_effect env2
                             c1.FStar_TypeChecker_Common.eff_name) in
                      Prims.op_Negation uu___4) in
                 if uu___3
                 then
                   let uu___4 =
                     let uu___5 =
                       let uu___6 =
                         FStar_Class_Show.show
                           FStar_Syntax_Print.showable_term e1 in
                       let uu___7 =
                         FStar_Class_Show.show FStar_Ident.showable_lident
                           c1.FStar_TypeChecker_Common.eff_name in
                       FStar_Compiler_Util.format2
                         "Definitions marked @inline_let are expected to be pure or ghost; got an expression \"%s\" with effect \"%s\""
                         uu___6 uu___7 in
                     (FStar_Errors_Codes.Fatal_ExpectedPureExpression,
                       uu___5) in
                   FStar_Errors.raise_error uu___4 e1.FStar_Syntax_Syntax.pos
                 else ());
                (let x =
                   let uu___3 =
                     FStar_Compiler_Util.left lb.FStar_Syntax_Syntax.lbname in
                   {
                     FStar_Syntax_Syntax.ppname =
                       (uu___3.FStar_Syntax_Syntax.ppname);
                     FStar_Syntax_Syntax.index =
                       (uu___3.FStar_Syntax_Syntax.index);
                     FStar_Syntax_Syntax.sort =
                       (c1.FStar_TypeChecker_Common.res_typ)
                   } in
                 let uu___3 =
                   let uu___4 =
                     let uu___5 = FStar_Syntax_Syntax.mk_binder x in [uu___5] in
                   FStar_Syntax_Subst.open_term uu___4 e2 in
                 match uu___3 with
                 | (xb, e21) ->
                     let xbinder = FStar_Compiler_List.hd xb in
                     let x1 = xbinder.FStar_Syntax_Syntax.binder_bv in
                     let env_x = FStar_TypeChecker_Env.push_bv env2 x1 in
                     let uu___4 =
                       let uu___5 = tc_term env_x e21 in
                       match uu___5 with
                       | (e22, c2, g2) ->
                           let uu___6 =
                             FStar_TypeChecker_Util.strengthen_precondition
                               (FStar_Pervasives_Native.Some
                                  (fun uu___7 ->
                                     FStar_Errors_Msg.mkmsg
                                       "folding guard g2 of e2 in the lcomp"))
                               env_x e22 c2 g2 in
                           (match uu___6 with | (c21, g21) -> (e22, c21, g21)) in
                     (match uu___4 with
                      | (e22, c2, g2) ->
                          let c21 =
                            maybe_intro_smt_lemma env_x
                              c1.FStar_TypeChecker_Common.res_typ c2 in
                          let cres =
                            FStar_TypeChecker_Util.maybe_return_e2_and_bind
                              e1.FStar_Syntax_Syntax.pos env2
                              (FStar_Pervasives_Native.Some e1) c1 e22
                              ((FStar_Pervasives_Native.Some x1), c21) in
                          let e11 =
                            FStar_TypeChecker_Util.maybe_lift env2 e1
                              c1.FStar_TypeChecker_Common.eff_name
                              cres.FStar_TypeChecker_Common.eff_name
                              c1.FStar_TypeChecker_Common.res_typ in
                          let e23 =
                            FStar_TypeChecker_Util.maybe_lift env2 e22
                              c21.FStar_TypeChecker_Common.eff_name
                              cres.FStar_TypeChecker_Common.eff_name
                              c21.FStar_TypeChecker_Common.res_typ in
                          let lb1 =
                            let attrs =
                              let add_inline_let =
                                (Prims.op_Negation is_inline_let) &&
                                  ((pure_or_ghost &&
                                      (FStar_Syntax_Util.is_unit
                                         c1.FStar_TypeChecker_Common.res_typ))
                                     ||
                                     ((FStar_TypeChecker_Env.is_erasable_effect
                                         env2
                                         c1.FStar_TypeChecker_Common.eff_name)
                                        &&
                                        (let uu___5 =
                                           FStar_TypeChecker_Env.is_erasable_effect
                                             env2
                                             cres.FStar_TypeChecker_Common.eff_name in
                                         Prims.op_Negation uu___5))) in
                              if add_inline_let
                              then FStar_Syntax_Util.inline_let_attr ::
                                (lb.FStar_Syntax_Syntax.lbattrs)
                              else lb.FStar_Syntax_Syntax.lbattrs in
                            FStar_Syntax_Util.mk_letbinding
                              (FStar_Pervasives.Inl x1) []
                              c1.FStar_TypeChecker_Common.res_typ
                              cres.FStar_TypeChecker_Common.eff_name e11
                              attrs lb.FStar_Syntax_Syntax.lbpos in
                          let e3 =
                            let uu___5 =
                              let uu___6 =
                                let uu___7 = FStar_Syntax_Subst.close xb e23 in
                                {
                                  FStar_Syntax_Syntax.lbs = (false, [lb1]);
                                  FStar_Syntax_Syntax.body1 = uu___7
                                } in
                              FStar_Syntax_Syntax.Tm_let uu___6 in
                            FStar_Syntax_Syntax.mk uu___5
                              e.FStar_Syntax_Syntax.pos in
                          let e4 =
                            FStar_TypeChecker_Util.maybe_monadic env2 e3
                              cres.FStar_TypeChecker_Common.eff_name
                              cres.FStar_TypeChecker_Common.res_typ in
                          let g21 =
                            let uu___5 =
                              let uu___6 =
                                FStar_TypeChecker_Env.norm_eff_name env2
                                  cres.FStar_TypeChecker_Common.eff_name in
                              FStar_TypeChecker_Env.is_layered_effect env2
                                uu___6 in
                            FStar_TypeChecker_Util.close_guard_implicits env2
                              uu___5 xb g2 in
                          let guard =
                            FStar_Class_Monoid.op_Plus_Plus
                              FStar_TypeChecker_Common.monoid_guard_t g1 g21 in
                          let uu___5 =
                            let uu___6 =
                              FStar_TypeChecker_Env.expected_typ env2 in
                            FStar_Compiler_Option.isSome uu___6 in
                          if uu___5
                          then
                            let tt =
                              let uu___6 =
                                let uu___7 =
                                  FStar_TypeChecker_Env.expected_typ env2 in
                                FStar_Compiler_Option.get uu___7 in
                              FStar_Pervasives_Native.fst uu___6 in
                            ((let uu___7 =
                                FStar_Compiler_Effect.op_Bang dbg_Exports in
                              if uu___7
                              then
                                let uu___8 =
                                  FStar_Class_Show.show
                                    FStar_Syntax_Print.showable_term tt in
                                let uu___9 =
                                  FStar_Class_Show.show
                                    FStar_Syntax_Print.showable_term
                                    cres.FStar_TypeChecker_Common.res_typ in
                                FStar_Compiler_Util.print2
                                  "Got expected type from env %s\ncres.res_typ=%s\n"
                                  uu___8 uu___9
                              else ());
                             (e4, cres, guard))
                          else
                            (let uu___7 =
                               check_no_escape FStar_Pervasives_Native.None
                                 env2 [x1]
                                 cres.FStar_TypeChecker_Common.res_typ in
                             match uu___7 with
                             | (t, g_ex) ->
                                 ((let uu___9 =
                                     FStar_Compiler_Effect.op_Bang
                                       dbg_Exports in
                                   if uu___9
                                   then
                                     let uu___10 =
                                       FStar_Class_Show.show
                                         FStar_Syntax_Print.showable_term
                                         cres.FStar_TypeChecker_Common.res_typ in
                                     let uu___11 =
                                       FStar_Class_Show.show
                                         FStar_Syntax_Print.showable_term t in
                                     FStar_Compiler_Util.print2
                                       "Checked %s has no escaping types; normalized to %s\n"
                                       uu___10 uu___11
                                   else ());
                                  (let uu___9 =
                                     FStar_Class_Monoid.op_Plus_Plus
                                       FStar_TypeChecker_Common.monoid_guard_t
                                       g_ex guard in
                                   (e4,
                                     {
                                       FStar_TypeChecker_Common.eff_name =
                                         (cres.FStar_TypeChecker_Common.eff_name);
                                       FStar_TypeChecker_Common.res_typ = t;
                                       FStar_TypeChecker_Common.cflags =
                                         (cres.FStar_TypeChecker_Common.cflags);
                                       FStar_TypeChecker_Common.comp_thunk =
                                         (cres.FStar_TypeChecker_Common.comp_thunk)
                                     }, uu___9))))))))
      | uu___ ->
          FStar_Compiler_Effect.failwith
            "Impossible (inner let with more than one lb)"
and (check_top_level_let_rec :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
        FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun top ->
      let env1 = instantiate_both env in
      match top.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Tm_let
          { FStar_Syntax_Syntax.lbs = (true, lbs);
            FStar_Syntax_Syntax.body1 = e2;_}
          ->
          let uu___ = FStar_Syntax_Subst.open_let_rec lbs e2 in
          (match uu___ with
           | (lbs1, e21) ->
               let uu___1 = FStar_TypeChecker_Env.clear_expected_typ env1 in
               (match uu___1 with
                | (env0, topt) ->
                    let uu___2 = build_let_rec_env true env0 lbs1 in
                    (match uu___2 with
                     | (lbs2, rec_env, g_t) ->
                         let uu___3 = check_let_recs rec_env lbs2 in
                         (match uu___3 with
                          | (lbs3, g_lbs) ->
                              let g_lbs1 =
                                let uu___4 =
                                  let uu___5 =
                                    FStar_Class_Monoid.op_Plus_Plus
                                      FStar_TypeChecker_Common.monoid_guard_t
                                      g_t g_lbs in
                                  FStar_TypeChecker_Rel.solve_deferred_constraints
                                    env1 uu___5 in
                                FStar_TypeChecker_Rel.resolve_implicits env1
                                  uu___4 in
                              let all_lb_names =
                                let uu___4 =
                                  FStar_Compiler_List.map
                                    (fun lb ->
                                       FStar_Compiler_Util.right
                                         lb.FStar_Syntax_Syntax.lbname) lbs3 in
                                FStar_Pervasives_Native.Some uu___4 in
                              let uu___4 =
                                if
                                  Prims.op_Negation
                                    env1.FStar_TypeChecker_Env.generalize
                                then
                                  let lbs4 =
                                    FStar_Compiler_List.map
                                      (fun lb ->
                                         let lbdef =
                                           FStar_TypeChecker_Normalize.reduce_uvar_solutions
                                             env1
                                             lb.FStar_Syntax_Syntax.lbdef in
                                         if
                                           lb.FStar_Syntax_Syntax.lbunivs =
                                             []
                                         then lb
                                         else
                                           FStar_Syntax_Util.close_univs_and_mk_letbinding
                                             all_lb_names
                                             lb.FStar_Syntax_Syntax.lbname
                                             lb.FStar_Syntax_Syntax.lbunivs
                                             lb.FStar_Syntax_Syntax.lbtyp
                                             lb.FStar_Syntax_Syntax.lbeff
                                             lbdef
                                             lb.FStar_Syntax_Syntax.lbattrs
                                             lb.FStar_Syntax_Syntax.lbpos)
                                      lbs3 in
                                  (lbs4, g_lbs1)
                                else
                                  (let ecs =
                                     let uu___6 =
                                       FStar_Compiler_List.map
                                         (fun lb ->
                                            let uu___7 =
                                              FStar_Syntax_Syntax.mk_Total
                                                lb.FStar_Syntax_Syntax.lbtyp in
                                            ((lb.FStar_Syntax_Syntax.lbname),
                                              (lb.FStar_Syntax_Syntax.lbdef),
                                              uu___7)) lbs3 in
                                     FStar_TypeChecker_Generalize.generalize
                                       env1 true uu___6 in
                                   let lbs4 =
                                     FStar_Compiler_List.map2
                                       (fun uu___6 ->
                                          fun lb ->
                                            match uu___6 with
                                            | (x, uvs, e, c, gvs) ->
                                                FStar_Syntax_Util.close_univs_and_mk_letbinding
                                                  all_lb_names x uvs
                                                  (FStar_Syntax_Util.comp_result
                                                     c)
                                                  (FStar_Syntax_Util.comp_effect_name
                                                     c) e
                                                  lb.FStar_Syntax_Syntax.lbattrs
                                                  lb.FStar_Syntax_Syntax.lbpos)
                                       ecs lbs3 in
                                   let g_lbs2 =
                                     FStar_TypeChecker_Rel.resolve_generalization_implicits
                                       env1 g_lbs1 in
                                   (lbs4, g_lbs2)) in
                              (match uu___4 with
                               | (lbs4, g_lbs2) ->
                                   let cres =
                                     let uu___5 =
                                       FStar_Syntax_Syntax.mk_Total
                                         FStar_Syntax_Syntax.t_unit in
                                     FStar_TypeChecker_Common.lcomp_of_comp
                                       uu___5 in
                                   let uu___5 =
                                     FStar_Syntax_Subst.close_let_rec lbs4
                                       e21 in
                                   (match uu___5 with
                                    | (lbs5, e22) ->
                                        ((let uu___7 =
                                            FStar_TypeChecker_Rel.discharge_guard
                                              env1 g_lbs2 in
                                          FStar_TypeChecker_Rel.force_trivial_guard
                                            env1 uu___7);
                                         (let uu___7 =
                                            FStar_Syntax_Syntax.mk
                                              (FStar_Syntax_Syntax.Tm_let
                                                 {
                                                   FStar_Syntax_Syntax.lbs =
                                                     (true, lbs5);
                                                   FStar_Syntax_Syntax.body1
                                                     = e22
                                                 })
                                              top.FStar_Syntax_Syntax.pos in
                                          (uu___7, cres,
                                            (FStar_Class_Monoid.mzero
                                               FStar_TypeChecker_Common.monoid_guard_t))))))))))
      | uu___ ->
          FStar_Compiler_Effect.failwith
            "Impossible: check_top_level_let_rec: not a let rec"
and (check_inner_let_rec :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
        FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun top ->
      let env1 = instantiate_both env in
      match top.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Tm_let
          { FStar_Syntax_Syntax.lbs = (true, lbs);
            FStar_Syntax_Syntax.body1 = e2;_}
          ->
          let uu___ = FStar_Syntax_Subst.open_let_rec lbs e2 in
          (match uu___ with
           | (lbs1, e21) ->
               let uu___1 = FStar_TypeChecker_Env.clear_expected_typ env1 in
               (match uu___1 with
                | (env0, topt) ->
                    let uu___2 = build_let_rec_env false env0 lbs1 in
                    (match uu___2 with
                     | (lbs2, rec_env, g_t) ->
                         let uu___3 =
                           let uu___4 = check_let_recs rec_env lbs2 in
                           match uu___4 with
                           | (lbs3, g) ->
                               let uu___5 =
                                 FStar_Class_Monoid.op_Plus_Plus
                                   FStar_TypeChecker_Common.monoid_guard_t
                                   g_t g in
                               (lbs3, uu___5) in
                         (match uu___3 with
                          | (lbs3, g_lbs) ->
                              let uu___4 =
                                FStar_Compiler_Util.fold_map
                                  (fun env2 ->
                                     fun lb ->
                                       let x =
                                         let uu___5 =
                                           FStar_Compiler_Util.left
                                             lb.FStar_Syntax_Syntax.lbname in
                                         {
                                           FStar_Syntax_Syntax.ppname =
                                             (uu___5.FStar_Syntax_Syntax.ppname);
                                           FStar_Syntax_Syntax.index =
                                             (uu___5.FStar_Syntax_Syntax.index);
                                           FStar_Syntax_Syntax.sort =
                                             (lb.FStar_Syntax_Syntax.lbtyp)
                                         } in
                                       let lb1 =
                                         {
                                           FStar_Syntax_Syntax.lbname =
                                             (FStar_Pervasives.Inl x);
                                           FStar_Syntax_Syntax.lbunivs =
                                             (lb.FStar_Syntax_Syntax.lbunivs);
                                           FStar_Syntax_Syntax.lbtyp =
                                             (lb.FStar_Syntax_Syntax.lbtyp);
                                           FStar_Syntax_Syntax.lbeff =
                                             (lb.FStar_Syntax_Syntax.lbeff);
                                           FStar_Syntax_Syntax.lbdef =
                                             (lb.FStar_Syntax_Syntax.lbdef);
                                           FStar_Syntax_Syntax.lbattrs =
                                             (lb.FStar_Syntax_Syntax.lbattrs);
                                           FStar_Syntax_Syntax.lbpos =
                                             (lb.FStar_Syntax_Syntax.lbpos)
                                         } in
                                       let env3 =
                                         FStar_TypeChecker_Env.push_let_binding
                                           env2
                                           lb1.FStar_Syntax_Syntax.lbname
                                           ([],
                                             (lb1.FStar_Syntax_Syntax.lbtyp)) in
                                       (env3, lb1)) env1 lbs3 in
                              (match uu___4 with
                               | (env2, lbs4) ->
                                   let bvs =
                                     FStar_Compiler_List.map
                                       (fun lb ->
                                          FStar_Compiler_Util.left
                                            lb.FStar_Syntax_Syntax.lbname)
                                       lbs4 in
                                   let uu___5 = tc_term env2 e21 in
                                   (match uu___5 with
                                    | (e22, cres, g2) ->
                                        let cres1 =
                                          FStar_Compiler_List.fold_right
                                            (fun lb ->
                                               fun cres2 ->
                                                 maybe_intro_smt_lemma env2
                                                   lb.FStar_Syntax_Syntax.lbtyp
                                                   cres2) lbs4 cres in
                                        let cres2 =
                                          FStar_TypeChecker_Util.maybe_assume_result_eq_pure_term
                                            env2 e22 cres1 in
                                        let cres3 =
                                          FStar_TypeChecker_Common.lcomp_set_flags
                                            cres2
                                            [FStar_Syntax_Syntax.SHOULD_NOT_INLINE] in
                                        let guard =
                                          let uu___6 =
                                            let uu___7 =
                                              FStar_Compiler_List.map
                                                FStar_Syntax_Syntax.mk_binder
                                                bvs in
                                            FStar_TypeChecker_Env.close_guard
                                              env2 uu___7 g2 in
                                          FStar_Class_Monoid.op_Plus_Plus
                                            FStar_TypeChecker_Common.monoid_guard_t
                                            g_lbs uu___6 in
                                        let cres4 =
                                          let uu___6 =
                                            let uu___7 =
                                              FStar_TypeChecker_Env.norm_eff_name
                                                env2
                                                cres3.FStar_TypeChecker_Common.eff_name in
                                            FStar_TypeChecker_Env.is_layered_effect
                                              env2 uu___7 in
                                          if uu___6
                                          then
                                            let bvss =
                                              Obj.magic
                                                (FStar_Class_Setlike.from_list
                                                   ()
                                                   (Obj.magic
                                                      (FStar_Compiler_FlatSet.setlike_flat_set
                                                         FStar_Syntax_Syntax.ord_bv))
                                                   bvs) in
                                            FStar_TypeChecker_Common.apply_lcomp
                                              (fun c ->
                                                 let uu___7 =
                                                   let uu___8 =
                                                     FStar_Syntax_Util.comp_effect_args
                                                       c in
                                                   FStar_Compiler_List.existsb
                                                     (fun uu___9 ->
                                                        match uu___9 with
                                                        | (t, uu___10) ->
                                                            let uu___11 =
                                                              let uu___12 =
                                                                let uu___13 =
                                                                  FStar_Syntax_Free.names
                                                                    t in
                                                                Obj.magic
                                                                  (FStar_Class_Setlike.inter
                                                                    ()
                                                                    (Obj.magic
                                                                    (FStar_Compiler_FlatSet.setlike_flat_set
                                                                    FStar_Syntax_Syntax.ord_bv))
                                                                    (Obj.magic
                                                                    bvss)
                                                                    (Obj.magic
                                                                    uu___13)) in
                                                              FStar_Class_Setlike.is_empty
                                                                ()
                                                                (Obj.magic
                                                                   (FStar_Compiler_FlatSet.setlike_flat_set
                                                                    FStar_Syntax_Syntax.ord_bv))
                                                                (Obj.magic
                                                                   uu___12) in
                                                            Prims.op_Negation
                                                              uu___11) uu___8 in
                                                 if uu___7
                                                 then
                                                   FStar_Errors.raise_error
                                                     (FStar_Errors_Codes.Fatal_EscapedBoundVar,
                                                       "One of the inner let recs escapes in the effect argument(s), try adding a type annotation")
                                                     top.FStar_Syntax_Syntax.pos
                                                 else c) (fun g -> g) cres3
                                          else
                                            FStar_TypeChecker_Util.close_wp_lcomp
                                              env2 bvs cres3 in
                                        let tres =
                                          norm env2
                                            cres4.FStar_TypeChecker_Common.res_typ in
                                        let cres5 =
                                          {
                                            FStar_TypeChecker_Common.eff_name
                                              =
                                              (cres4.FStar_TypeChecker_Common.eff_name);
                                            FStar_TypeChecker_Common.res_typ
                                              = tres;
                                            FStar_TypeChecker_Common.cflags =
                                              (cres4.FStar_TypeChecker_Common.cflags);
                                            FStar_TypeChecker_Common.comp_thunk
                                              =
                                              (cres4.FStar_TypeChecker_Common.comp_thunk)
                                          } in
                                        let guard1 =
                                          let bs =
                                            FStar_Compiler_List.map
                                              (fun lb ->
                                                 let uu___6 =
                                                   FStar_Compiler_Util.left
                                                     lb.FStar_Syntax_Syntax.lbname in
                                                 FStar_Syntax_Syntax.mk_binder
                                                   uu___6) lbs4 in
                                          FStar_TypeChecker_Util.close_guard_implicits
                                            env2 false bs guard in
                                        let uu___6 =
                                          FStar_Syntax_Subst.close_let_rec
                                            lbs4 e22 in
                                        (match uu___6 with
                                         | (lbs5, e23) ->
                                             let e =
                                               FStar_Syntax_Syntax.mk
                                                 (FStar_Syntax_Syntax.Tm_let
                                                    {
                                                      FStar_Syntax_Syntax.lbs
                                                        = (true, lbs5);
                                                      FStar_Syntax_Syntax.body1
                                                        = e23
                                                    })
                                                 top.FStar_Syntax_Syntax.pos in
                                             (match topt with
                                              | FStar_Pervasives_Native.Some
                                                  uu___7 ->
                                                  (e, cres5, guard1)
                                              | FStar_Pervasives_Native.None
                                                  ->
                                                  let uu___7 =
                                                    check_no_escape
                                                      FStar_Pervasives_Native.None
                                                      env2 bvs tres in
                                                  (match uu___7 with
                                                   | (tres1, g_ex) ->
                                                       let cres6 =
                                                         {
                                                           FStar_TypeChecker_Common.eff_name
                                                             =
                                                             (cres5.FStar_TypeChecker_Common.eff_name);
                                                           FStar_TypeChecker_Common.res_typ
                                                             = tres1;
                                                           FStar_TypeChecker_Common.cflags
                                                             =
                                                             (cres5.FStar_TypeChecker_Common.cflags);
                                                           FStar_TypeChecker_Common.comp_thunk
                                                             =
                                                             (cres5.FStar_TypeChecker_Common.comp_thunk)
                                                         } in
                                                       let uu___8 =
                                                         FStar_Class_Monoid.op_Plus_Plus
                                                           FStar_TypeChecker_Common.monoid_guard_t
                                                           g_ex guard1 in
                                                       (e, cres6, uu___8))))))))))
      | uu___ ->
          FStar_Compiler_Effect.failwith
            "Impossible: check_inner_let_rec: not a let rec"
and (build_let_rec_env :
  Prims.bool ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.letbinding Prims.list ->
        (FStar_Syntax_Syntax.letbinding Prims.list *
          FStar_TypeChecker_Env.env_t * FStar_TypeChecker_Env.guard_t))
  =
  fun _top_level ->
    fun env ->
      fun lbs ->
        let env0 = env in
        let termination_check_enabled attrs lbname lbdef lbtyp =
          let uu___ = FStar_Options.ml_ish () in
          if uu___
          then FStar_Pervasives_Native.None
          else
            (let lbtyp0 = lbtyp in
             let uu___2 = FStar_Syntax_Util.abs_formals lbdef in
             match uu___2 with
             | (actuals, body, body_lc) ->
                 let actuals1 =
                   let uu___3 =
                     FStar_TypeChecker_Env.set_expected_typ env lbtyp in
                   FStar_TypeChecker_Util.maybe_add_implicit_binders uu___3
                     actuals in
                 let nactuals = FStar_Compiler_List.length actuals1 in
                 let uu___3 =
                   FStar_TypeChecker_Normalize.get_n_binders env nactuals
                     lbtyp in
                 (match uu___3 with
                  | (formals, c) ->
                      (if
                         (FStar_Compiler_List.isEmpty formals) ||
                           (FStar_Compiler_List.isEmpty actuals1)
                       then
                         (let uu___5 =
                            let uu___6 =
                              let uu___7 =
                                FStar_Syntax_Print.tag_of_term lbdef in
                              let uu___8 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term lbdef in
                              let uu___9 =
                                FStar_Class_Show.show
                                  FStar_Syntax_Print.showable_term lbtyp in
                              FStar_Compiler_Util.format3
                                "Only function literals with arrow types can be defined recursively; got (%s) %s : %s"
                                uu___7 uu___8 uu___9 in
                            (FStar_Errors_Codes.Fatal_RecursiveFunctionLiteral,
                              uu___6) in
                          FStar_Errors.raise_error uu___5
                            lbtyp.FStar_Syntax_Syntax.pos)
                       else ();
                       (let nformals = FStar_Compiler_List.length formals in
                        let uu___5 =
                          FStar_Syntax_Util.has_attribute attrs
                            FStar_Parser_Const.admit_termination_lid in
                        if uu___5
                        then
                          ((let uu___7 =
                              let uu___8 =
                                let uu___9 =
                                  FStar_Class_Show.show
                                    (FStar_Class_Show.show_either
                                       FStar_Syntax_Print.showable_bv
                                       FStar_Syntax_Print.showable_fv) lbname in
                                Prims.strcat "Admitting termination of "
                                  uu___9 in
                              (FStar_Errors_Codes.Warning_WarnOnUse, uu___8) in
                            FStar_Errors.log_issue
                              env.FStar_TypeChecker_Env.range uu___7);
                           FStar_Pervasives_Native.None)
                        else
                          (let uu___7 =
                             let uu___8 =
                               FStar_TypeChecker_Env.lookup_effect_quals env
                                 (FStar_Syntax_Util.comp_effect_name c) in
                             FStar_Compiler_List.contains
                               FStar_Syntax_Syntax.TotalEffect uu___8 in
                           if uu___7
                           then
                             let uu___8 =
                               let uu___9 =
                                 FStar_Syntax_Util.abs actuals1 body body_lc in
                               (nformals, uu___9) in
                             FStar_Pervasives_Native.Some uu___8
                           else FStar_Pervasives_Native.None))))) in
        let check_annot univ_vars t =
          let env01 = FStar_TypeChecker_Env.push_univ_vars env0 univ_vars in
          let uu___ =
            let uu___1 =
              let uu___2 = FStar_Syntax_Util.type_u () in
              FStar_Pervasives_Native.fst uu___2 in
            tc_check_tot_or_gtot_term
              {
                FStar_TypeChecker_Env.solver =
                  (env01.FStar_TypeChecker_Env.solver);
                FStar_TypeChecker_Env.range =
                  (env01.FStar_TypeChecker_Env.range);
                FStar_TypeChecker_Env.curmodule =
                  (env01.FStar_TypeChecker_Env.curmodule);
                FStar_TypeChecker_Env.gamma =
                  (env01.FStar_TypeChecker_Env.gamma);
                FStar_TypeChecker_Env.gamma_sig =
                  (env01.FStar_TypeChecker_Env.gamma_sig);
                FStar_TypeChecker_Env.gamma_cache =
                  (env01.FStar_TypeChecker_Env.gamma_cache);
                FStar_TypeChecker_Env.modules =
                  (env01.FStar_TypeChecker_Env.modules);
                FStar_TypeChecker_Env.expected_typ =
                  (env01.FStar_TypeChecker_Env.expected_typ);
                FStar_TypeChecker_Env.sigtab =
                  (env01.FStar_TypeChecker_Env.sigtab);
                FStar_TypeChecker_Env.attrtab =
                  (env01.FStar_TypeChecker_Env.attrtab);
                FStar_TypeChecker_Env.instantiate_imp =
                  (env01.FStar_TypeChecker_Env.instantiate_imp);
                FStar_TypeChecker_Env.effects =
                  (env01.FStar_TypeChecker_Env.effects);
                FStar_TypeChecker_Env.generalize =
                  (env01.FStar_TypeChecker_Env.generalize);
                FStar_TypeChecker_Env.letrecs =
                  (env01.FStar_TypeChecker_Env.letrecs);
                FStar_TypeChecker_Env.top_level =
                  (env01.FStar_TypeChecker_Env.top_level);
                FStar_TypeChecker_Env.check_uvars = true;
                FStar_TypeChecker_Env.use_eq_strict =
                  (env01.FStar_TypeChecker_Env.use_eq_strict);
                FStar_TypeChecker_Env.is_iface =
                  (env01.FStar_TypeChecker_Env.is_iface);
                FStar_TypeChecker_Env.admit =
                  (env01.FStar_TypeChecker_Env.admit);
                FStar_TypeChecker_Env.lax_universes =
                  (env01.FStar_TypeChecker_Env.lax_universes);
                FStar_TypeChecker_Env.phase1 =
                  (env01.FStar_TypeChecker_Env.phase1);
                FStar_TypeChecker_Env.failhard =
                  (env01.FStar_TypeChecker_Env.failhard);
                FStar_TypeChecker_Env.flychecking =
                  (env01.FStar_TypeChecker_Env.flychecking);
                FStar_TypeChecker_Env.uvar_subtyping =
                  (env01.FStar_TypeChecker_Env.uvar_subtyping);
                FStar_TypeChecker_Env.intactics =
                  (env01.FStar_TypeChecker_Env.intactics);
                FStar_TypeChecker_Env.nocoerce =
                  (env01.FStar_TypeChecker_Env.nocoerce);
                FStar_TypeChecker_Env.tc_term =
                  (env01.FStar_TypeChecker_Env.tc_term);
                FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                  (env01.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                FStar_TypeChecker_Env.universe_of =
                  (env01.FStar_TypeChecker_Env.universe_of);
                FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term =
                  (env01.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                FStar_TypeChecker_Env.teq_nosmt_force =
                  (env01.FStar_TypeChecker_Env.teq_nosmt_force);
                FStar_TypeChecker_Env.subtype_nosmt_force =
                  (env01.FStar_TypeChecker_Env.subtype_nosmt_force);
                FStar_TypeChecker_Env.qtbl_name_and_index =
                  (env01.FStar_TypeChecker_Env.qtbl_name_and_index);
                FStar_TypeChecker_Env.normalized_eff_names =
                  (env01.FStar_TypeChecker_Env.normalized_eff_names);
                FStar_TypeChecker_Env.fv_delta_depths =
                  (env01.FStar_TypeChecker_Env.fv_delta_depths);
                FStar_TypeChecker_Env.proof_ns =
                  (env01.FStar_TypeChecker_Env.proof_ns);
                FStar_TypeChecker_Env.synth_hook =
                  (env01.FStar_TypeChecker_Env.synth_hook);
                FStar_TypeChecker_Env.try_solve_implicits_hook =
                  (env01.FStar_TypeChecker_Env.try_solve_implicits_hook);
                FStar_TypeChecker_Env.splice =
                  (env01.FStar_TypeChecker_Env.splice);
                FStar_TypeChecker_Env.mpreprocess =
                  (env01.FStar_TypeChecker_Env.mpreprocess);
                FStar_TypeChecker_Env.postprocess =
                  (env01.FStar_TypeChecker_Env.postprocess);
                FStar_TypeChecker_Env.identifier_info =
                  (env01.FStar_TypeChecker_Env.identifier_info);
                FStar_TypeChecker_Env.tc_hooks =
                  (env01.FStar_TypeChecker_Env.tc_hooks);
                FStar_TypeChecker_Env.dsenv =
                  (env01.FStar_TypeChecker_Env.dsenv);
                FStar_TypeChecker_Env.nbe = (env01.FStar_TypeChecker_Env.nbe);
                FStar_TypeChecker_Env.strict_args_tab =
                  (env01.FStar_TypeChecker_Env.strict_args_tab);
                FStar_TypeChecker_Env.erasable_types_tab =
                  (env01.FStar_TypeChecker_Env.erasable_types_tab);
                FStar_TypeChecker_Env.enable_defer_to_tac =
                  (env01.FStar_TypeChecker_Env.enable_defer_to_tac);
                FStar_TypeChecker_Env.unif_allow_ref_guards =
                  (env01.FStar_TypeChecker_Env.unif_allow_ref_guards);
                FStar_TypeChecker_Env.erase_erasable_args =
                  (env01.FStar_TypeChecker_Env.erase_erasable_args);
                FStar_TypeChecker_Env.core_check =
                  (env01.FStar_TypeChecker_Env.core_check);
                FStar_TypeChecker_Env.missing_decl =
                  (env01.FStar_TypeChecker_Env.missing_decl)
              } t uu___1 "" in
          match uu___ with
          | (t1, uu___1, g) ->
              let uu___2 =
                let uu___3 = FStar_TypeChecker_Rel.resolve_implicits env g in
                FStar_TypeChecker_Rel.discharge_guard env01 uu___3 in
              (env01, uu___2, t1) in
        let uu___ =
          FStar_Compiler_List.fold_left
            (fun uu___1 ->
               fun lb ->
                 match uu___1 with
                 | (lbs1, env1, g_acc) ->
                     let uu___2 =
                       FStar_TypeChecker_Util.extract_let_rec_annotation env1
                         lb in
                     (match uu___2 with
                      | (univ_vars, lbtyp, lbdef, check_t) ->
                          let env2 =
                            FStar_TypeChecker_Env.push_univ_vars env1
                              univ_vars in
                          let uu___3 =
                            if Prims.op_Negation check_t
                            then (g_acc, lbtyp)
                            else
                              (let uu___5 = check_annot univ_vars lbtyp in
                               match uu___5 with
                               | (uu___6, g, t) ->
                                   let uu___7 =
                                     FStar_Class_Monoid.op_Plus_Plus
                                       FStar_TypeChecker_Common.monoid_guard_t
                                       g_acc g in
                                   (uu___7, t)) in
                          (match uu___3 with
                           | (g, lbtyp1) ->
                               let uu___4 =
                                 let uu___5 =
                                   termination_check_enabled
                                     lb.FStar_Syntax_Syntax.lbattrs
                                     lb.FStar_Syntax_Syntax.lbname lbdef
                                     lbtyp1 in
                                 match uu___5 with
                                 | FStar_Pervasives_Native.Some
                                     (arity, lbdef1) ->
                                     ((let uu___7 =
                                         FStar_Compiler_Debug.extreme () in
                                       if uu___7
                                       then
                                         let uu___8 =
                                           FStar_Compiler_Util.string_of_int
                                             arity in
                                         let uu___9 =
                                           FStar_Class_Show.show
                                             FStar_Syntax_Print.showable_term
                                             lbdef1 in
                                         FStar_Compiler_Util.print2
                                           "termination_check_enabled returned arity: %s and lbdef: %s\n"
                                           uu___8 uu___9
                                       else ());
                                      (let lb1 =
                                         {
                                           FStar_Syntax_Syntax.lbname =
                                             (lb.FStar_Syntax_Syntax.lbname);
                                           FStar_Syntax_Syntax.lbunivs =
                                             univ_vars;
                                           FStar_Syntax_Syntax.lbtyp = lbtyp1;
                                           FStar_Syntax_Syntax.lbeff =
                                             (lb.FStar_Syntax_Syntax.lbeff);
                                           FStar_Syntax_Syntax.lbdef = lbdef1;
                                           FStar_Syntax_Syntax.lbattrs =
                                             (lb.FStar_Syntax_Syntax.lbattrs);
                                           FStar_Syntax_Syntax.lbpos =
                                             (lb.FStar_Syntax_Syntax.lbpos)
                                         } in
                                       let env3 =
                                         {
                                           FStar_TypeChecker_Env.solver =
                                             (env2.FStar_TypeChecker_Env.solver);
                                           FStar_TypeChecker_Env.range =
                                             (env2.FStar_TypeChecker_Env.range);
                                           FStar_TypeChecker_Env.curmodule =
                                             (env2.FStar_TypeChecker_Env.curmodule);
                                           FStar_TypeChecker_Env.gamma =
                                             (env2.FStar_TypeChecker_Env.gamma);
                                           FStar_TypeChecker_Env.gamma_sig =
                                             (env2.FStar_TypeChecker_Env.gamma_sig);
                                           FStar_TypeChecker_Env.gamma_cache
                                             =
                                             (env2.FStar_TypeChecker_Env.gamma_cache);
                                           FStar_TypeChecker_Env.modules =
                                             (env2.FStar_TypeChecker_Env.modules);
                                           FStar_TypeChecker_Env.expected_typ
                                             =
                                             (env2.FStar_TypeChecker_Env.expected_typ);
                                           FStar_TypeChecker_Env.sigtab =
                                             (env2.FStar_TypeChecker_Env.sigtab);
                                           FStar_TypeChecker_Env.attrtab =
                                             (env2.FStar_TypeChecker_Env.attrtab);
                                           FStar_TypeChecker_Env.instantiate_imp
                                             =
                                             (env2.FStar_TypeChecker_Env.instantiate_imp);
                                           FStar_TypeChecker_Env.effects =
                                             (env2.FStar_TypeChecker_Env.effects);
                                           FStar_TypeChecker_Env.generalize =
                                             (env2.FStar_TypeChecker_Env.generalize);
                                           FStar_TypeChecker_Env.letrecs =
                                             (((lb1.FStar_Syntax_Syntax.lbname),
                                                arity, lbtyp1, univ_vars) ::
                                             (env2.FStar_TypeChecker_Env.letrecs));
                                           FStar_TypeChecker_Env.top_level =
                                             (env2.FStar_TypeChecker_Env.top_level);
                                           FStar_TypeChecker_Env.check_uvars
                                             =
                                             (env2.FStar_TypeChecker_Env.check_uvars);
                                           FStar_TypeChecker_Env.use_eq_strict
                                             =
                                             (env2.FStar_TypeChecker_Env.use_eq_strict);
                                           FStar_TypeChecker_Env.is_iface =
                                             (env2.FStar_TypeChecker_Env.is_iface);
                                           FStar_TypeChecker_Env.admit =
                                             (env2.FStar_TypeChecker_Env.admit);
                                           FStar_TypeChecker_Env.lax_universes
                                             =
                                             (env2.FStar_TypeChecker_Env.lax_universes);
                                           FStar_TypeChecker_Env.phase1 =
                                             (env2.FStar_TypeChecker_Env.phase1);
                                           FStar_TypeChecker_Env.failhard =
                                             (env2.FStar_TypeChecker_Env.failhard);
                                           FStar_TypeChecker_Env.flychecking
                                             =
                                             (env2.FStar_TypeChecker_Env.flychecking);
                                           FStar_TypeChecker_Env.uvar_subtyping
                                             =
                                             (env2.FStar_TypeChecker_Env.uvar_subtyping);
                                           FStar_TypeChecker_Env.intactics =
                                             (env2.FStar_TypeChecker_Env.intactics);
                                           FStar_TypeChecker_Env.nocoerce =
                                             (env2.FStar_TypeChecker_Env.nocoerce);
                                           FStar_TypeChecker_Env.tc_term =
                                             (env2.FStar_TypeChecker_Env.tc_term);
                                           FStar_TypeChecker_Env.typeof_tot_or_gtot_term
                                             =
                                             (env2.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                                           FStar_TypeChecker_Env.universe_of
                                             =
                                             (env2.FStar_TypeChecker_Env.universe_of);
                                           FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                                             =
                                             (env2.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                                           FStar_TypeChecker_Env.teq_nosmt_force
                                             =
                                             (env2.FStar_TypeChecker_Env.teq_nosmt_force);
                                           FStar_TypeChecker_Env.subtype_nosmt_force
                                             =
                                             (env2.FStar_TypeChecker_Env.subtype_nosmt_force);
                                           FStar_TypeChecker_Env.qtbl_name_and_index
                                             =
                                             (env2.FStar_TypeChecker_Env.qtbl_name_and_index);
                                           FStar_TypeChecker_Env.normalized_eff_names
                                             =
                                             (env2.FStar_TypeChecker_Env.normalized_eff_names);
                                           FStar_TypeChecker_Env.fv_delta_depths
                                             =
                                             (env2.FStar_TypeChecker_Env.fv_delta_depths);
                                           FStar_TypeChecker_Env.proof_ns =
                                             (env2.FStar_TypeChecker_Env.proof_ns);
                                           FStar_TypeChecker_Env.synth_hook =
                                             (env2.FStar_TypeChecker_Env.synth_hook);
                                           FStar_TypeChecker_Env.try_solve_implicits_hook
                                             =
                                             (env2.FStar_TypeChecker_Env.try_solve_implicits_hook);
                                           FStar_TypeChecker_Env.splice =
                                             (env2.FStar_TypeChecker_Env.splice);
                                           FStar_TypeChecker_Env.mpreprocess
                                             =
                                             (env2.FStar_TypeChecker_Env.mpreprocess);
                                           FStar_TypeChecker_Env.postprocess
                                             =
                                             (env2.FStar_TypeChecker_Env.postprocess);
                                           FStar_TypeChecker_Env.identifier_info
                                             =
                                             (env2.FStar_TypeChecker_Env.identifier_info);
                                           FStar_TypeChecker_Env.tc_hooks =
                                             (env2.FStar_TypeChecker_Env.tc_hooks);
                                           FStar_TypeChecker_Env.dsenv =
                                             (env2.FStar_TypeChecker_Env.dsenv);
                                           FStar_TypeChecker_Env.nbe =
                                             (env2.FStar_TypeChecker_Env.nbe);
                                           FStar_TypeChecker_Env.strict_args_tab
                                             =
                                             (env2.FStar_TypeChecker_Env.strict_args_tab);
                                           FStar_TypeChecker_Env.erasable_types_tab
                                             =
                                             (env2.FStar_TypeChecker_Env.erasable_types_tab);
                                           FStar_TypeChecker_Env.enable_defer_to_tac
                                             =
                                             (env2.FStar_TypeChecker_Env.enable_defer_to_tac);
                                           FStar_TypeChecker_Env.unif_allow_ref_guards
                                             =
                                             (env2.FStar_TypeChecker_Env.unif_allow_ref_guards);
                                           FStar_TypeChecker_Env.erase_erasable_args
                                             =
                                             (env2.FStar_TypeChecker_Env.erase_erasable_args);
                                           FStar_TypeChecker_Env.core_check =
                                             (env2.FStar_TypeChecker_Env.core_check);
                                           FStar_TypeChecker_Env.missing_decl
                                             =
                                             (env2.FStar_TypeChecker_Env.missing_decl)
                                         } in
                                       (lb1, env3)))
                                 | FStar_Pervasives_Native.None ->
                                     let lb1 =
                                       {
                                         FStar_Syntax_Syntax.lbname =
                                           (lb.FStar_Syntax_Syntax.lbname);
                                         FStar_Syntax_Syntax.lbunivs =
                                           univ_vars;
                                         FStar_Syntax_Syntax.lbtyp = lbtyp1;
                                         FStar_Syntax_Syntax.lbeff =
                                           (lb.FStar_Syntax_Syntax.lbeff);
                                         FStar_Syntax_Syntax.lbdef = lbdef;
                                         FStar_Syntax_Syntax.lbattrs =
                                           (lb.FStar_Syntax_Syntax.lbattrs);
                                         FStar_Syntax_Syntax.lbpos =
                                           (lb.FStar_Syntax_Syntax.lbpos)
                                       } in
                                     let uu___6 =
                                       FStar_TypeChecker_Env.push_let_binding
                                         env2 lb1.FStar_Syntax_Syntax.lbname
                                         (univ_vars, lbtyp1) in
                                     (lb1, uu___6) in
                               (match uu___4 with
                                | (lb1, env3) -> ((lb1 :: lbs1), env3, g)))))
            ([], env,
              (FStar_Class_Monoid.mzero
                 FStar_TypeChecker_Common.monoid_guard_t)) lbs in
        match uu___ with
        | (lbs1, env1, g) -> ((FStar_Compiler_List.rev lbs1), env1, g)
and (check_let_recs :
  FStar_TypeChecker_Env.env_t ->
    FStar_Syntax_Syntax.letbinding Prims.list ->
      (FStar_Syntax_Syntax.letbinding Prims.list *
        FStar_TypeChecker_Common.guard_t))
  =
  fun env ->
    fun lbts ->
      let uu___ =
        let uu___1 =
          FStar_Compiler_List.map
            (fun lb ->
               let uu___2 =
                 FStar_Syntax_Util.abs_formals lb.FStar_Syntax_Syntax.lbdef in
               match uu___2 with
               | (bs, t, lcomp) ->
                   (match bs with
                    | [] ->
                        let uu___3 =
                          let uu___4 =
                            let uu___5 =
                              FStar_Class_Show.show
                                (FStar_Class_Show.show_either
                                   FStar_Syntax_Print.showable_bv
                                   FStar_Syntax_Print.showable_fv)
                                lb.FStar_Syntax_Syntax.lbname in
                            let uu___6 =
                              FStar_Class_Show.show
                                FStar_Syntax_Print.showable_term
                                lb.FStar_Syntax_Syntax.lbdef in
                            FStar_Compiler_Util.format2
                              "Only function literals may be defined recursively; %s is defined to be %s"
                              uu___5 uu___6 in
                          (FStar_Errors_Codes.Fatal_RecursiveFunctionLiteral,
                            uu___4) in
                        let uu___4 =
                          FStar_Syntax_Syntax.range_of_lbname
                            lb.FStar_Syntax_Syntax.lbname in
                        FStar_Errors.raise_error uu___3 uu___4
                    | uu___3 ->
                        let arity =
                          let uu___4 =
                            FStar_TypeChecker_Env.get_letrec_arity env
                              lb.FStar_Syntax_Syntax.lbname in
                          match uu___4 with
                          | FStar_Pervasives_Native.Some n -> n
                          | FStar_Pervasives_Native.None ->
                              FStar_Compiler_List.length bs in
                        let uu___4 = FStar_Compiler_List.splitAt arity bs in
                        (match uu___4 with
                         | (bs0, bs1) ->
                             let def =
                               if FStar_Compiler_List.isEmpty bs1
                               then FStar_Syntax_Util.abs bs0 t lcomp
                               else
                                 (let inner =
                                    FStar_Syntax_Util.abs bs1 t lcomp in
                                  let inner1 =
                                    FStar_Syntax_Subst.close bs0 inner in
                                  let bs01 =
                                    FStar_Syntax_Subst.close_binders bs0 in
                                  FStar_Syntax_Syntax.mk
                                    (FStar_Syntax_Syntax.Tm_abs
                                       {
                                         FStar_Syntax_Syntax.bs = bs01;
                                         FStar_Syntax_Syntax.body = inner1;
                                         FStar_Syntax_Syntax.rc_opt =
                                           FStar_Pervasives_Native.None
                                       }) inner1.FStar_Syntax_Syntax.pos) in
                             let lb1 =
                               {
                                 FStar_Syntax_Syntax.lbname =
                                   (lb.FStar_Syntax_Syntax.lbname);
                                 FStar_Syntax_Syntax.lbunivs =
                                   (lb.FStar_Syntax_Syntax.lbunivs);
                                 FStar_Syntax_Syntax.lbtyp =
                                   (lb.FStar_Syntax_Syntax.lbtyp);
                                 FStar_Syntax_Syntax.lbeff =
                                   (lb.FStar_Syntax_Syntax.lbeff);
                                 FStar_Syntax_Syntax.lbdef = def;
                                 FStar_Syntax_Syntax.lbattrs =
                                   (lb.FStar_Syntax_Syntax.lbattrs);
                                 FStar_Syntax_Syntax.lbpos =
                                   (lb.FStar_Syntax_Syntax.lbpos)
                               } in
                             let uu___5 =
                               let uu___6 =
                                 FStar_TypeChecker_Env.set_expected_typ env
                                   lb1.FStar_Syntax_Syntax.lbtyp in
                               tc_tot_or_gtot_term uu___6
                                 lb1.FStar_Syntax_Syntax.lbdef in
                             (match uu___5 with
                              | (e, c, g) ->
                                  ((let uu___7 =
                                      let uu___8 =
                                        FStar_TypeChecker_Common.is_total_lcomp
                                          c in
                                      Prims.op_Negation uu___8 in
                                    if uu___7
                                    then
                                      FStar_Errors.raise_error
                                        (FStar_Errors_Codes.Fatal_UnexpectedGTotForLetRec,
                                          "Expected let rec to be a Tot term; got effect GTot")
                                        e.FStar_Syntax_Syntax.pos
                                    else ());
                                   (let lb2 =
                                      FStar_Syntax_Util.mk_letbinding
                                        lb1.FStar_Syntax_Syntax.lbname
                                        lb1.FStar_Syntax_Syntax.lbunivs
                                        lb1.FStar_Syntax_Syntax.lbtyp
                                        FStar_Parser_Const.effect_Tot_lid e
                                        lb1.FStar_Syntax_Syntax.lbattrs
                                        lb1.FStar_Syntax_Syntax.lbpos in
                                    (lb2, g))))))) lbts in
        FStar_Compiler_List.unzip uu___1 in
      match uu___ with
      | (lbs, gs) ->
          let uu___1 =
            FStar_Class_Monoid.msum FStar_TypeChecker_Common.monoid_guard_t
              gs in
          (lbs, uu___1)
and (check_let_bound_def :
  Prims.bool ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.letbinding ->
        (FStar_Syntax_Syntax.term * FStar_Syntax_Syntax.univ_names *
          FStar_TypeChecker_Common.lcomp * FStar_TypeChecker_Env.guard_t *
          Prims.bool))
  =
  fun top_level ->
    fun env ->
      fun lb ->
        let uu___ = FStar_TypeChecker_Env.clear_expected_typ env in
        match uu___ with
        | (env1, uu___1) ->
            let e1 = lb.FStar_Syntax_Syntax.lbdef in
            let uu___2 = check_lbtyp top_level env lb in
            (match uu___2 with
             | (topt, wf_annot, univ_vars, univ_opening, env11) ->
                 (if (Prims.op_Negation top_level) && (univ_vars <> [])
                  then
                    FStar_Errors.raise_error
                      (FStar_Errors_Codes.Fatal_UniversePolymorphicInnerLetBound,
                        "Inner let-bound definitions cannot be universe polymorphic")
                      e1.FStar_Syntax_Syntax.pos
                  else ();
                  (let e11 = FStar_Syntax_Subst.subst univ_opening e1 in
                   let uu___4 =
                     tc_maybe_toplevel_term
                       {
                         FStar_TypeChecker_Env.solver =
                           (env11.FStar_TypeChecker_Env.solver);
                         FStar_TypeChecker_Env.range =
                           (env11.FStar_TypeChecker_Env.range);
                         FStar_TypeChecker_Env.curmodule =
                           (env11.FStar_TypeChecker_Env.curmodule);
                         FStar_TypeChecker_Env.gamma =
                           (env11.FStar_TypeChecker_Env.gamma);
                         FStar_TypeChecker_Env.gamma_sig =
                           (env11.FStar_TypeChecker_Env.gamma_sig);
                         FStar_TypeChecker_Env.gamma_cache =
                           (env11.FStar_TypeChecker_Env.gamma_cache);
                         FStar_TypeChecker_Env.modules =
                           (env11.FStar_TypeChecker_Env.modules);
                         FStar_TypeChecker_Env.expected_typ =
                           (env11.FStar_TypeChecker_Env.expected_typ);
                         FStar_TypeChecker_Env.sigtab =
                           (env11.FStar_TypeChecker_Env.sigtab);
                         FStar_TypeChecker_Env.attrtab =
                           (env11.FStar_TypeChecker_Env.attrtab);
                         FStar_TypeChecker_Env.instantiate_imp =
                           (env11.FStar_TypeChecker_Env.instantiate_imp);
                         FStar_TypeChecker_Env.effects =
                           (env11.FStar_TypeChecker_Env.effects);
                         FStar_TypeChecker_Env.generalize =
                           (env11.FStar_TypeChecker_Env.generalize);
                         FStar_TypeChecker_Env.letrecs =
                           (env11.FStar_TypeChecker_Env.letrecs);
                         FStar_TypeChecker_Env.top_level = top_level;
                         FStar_TypeChecker_Env.check_uvars =
                           (env11.FStar_TypeChecker_Env.check_uvars);
                         FStar_TypeChecker_Env.use_eq_strict =
                           (env11.FStar_TypeChecker_Env.use_eq_strict);
                         FStar_TypeChecker_Env.is_iface =
                           (env11.FStar_TypeChecker_Env.is_iface);
                         FStar_TypeChecker_Env.admit =
                           (env11.FStar_TypeChecker_Env.admit);
                         FStar_TypeChecker_Env.lax_universes =
                           (env11.FStar_TypeChecker_Env.lax_universes);
                         FStar_TypeChecker_Env.phase1 =
                           (env11.FStar_TypeChecker_Env.phase1);
                         FStar_TypeChecker_Env.failhard =
                           (env11.FStar_TypeChecker_Env.failhard);
                         FStar_TypeChecker_Env.flychecking =
                           (env11.FStar_TypeChecker_Env.flychecking);
                         FStar_TypeChecker_Env.uvar_subtyping =
                           (env11.FStar_TypeChecker_Env.uvar_subtyping);
                         FStar_TypeChecker_Env.intactics =
                           (env11.FStar_TypeChecker_Env.intactics);
                         FStar_TypeChecker_Env.nocoerce =
                           (env11.FStar_TypeChecker_Env.nocoerce);
                         FStar_TypeChecker_Env.tc_term =
                           (env11.FStar_TypeChecker_Env.tc_term);
                         FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                           (env11.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                         FStar_TypeChecker_Env.universe_of =
                           (env11.FStar_TypeChecker_Env.universe_of);
                         FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                           =
                           (env11.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                         FStar_TypeChecker_Env.teq_nosmt_force =
                           (env11.FStar_TypeChecker_Env.teq_nosmt_force);
                         FStar_TypeChecker_Env.subtype_nosmt_force =
                           (env11.FStar_TypeChecker_Env.subtype_nosmt_force);
                         FStar_TypeChecker_Env.qtbl_name_and_index =
                           (env11.FStar_TypeChecker_Env.qtbl_name_and_index);
                         FStar_TypeChecker_Env.normalized_eff_names =
                           (env11.FStar_TypeChecker_Env.normalized_eff_names);
                         FStar_TypeChecker_Env.fv_delta_depths =
                           (env11.FStar_TypeChecker_Env.fv_delta_depths);
                         FStar_TypeChecker_Env.proof_ns =
                           (env11.FStar_TypeChecker_Env.proof_ns);
                         FStar_TypeChecker_Env.synth_hook =
                           (env11.FStar_TypeChecker_Env.synth_hook);
                         FStar_TypeChecker_Env.try_solve_implicits_hook =
                           (env11.FStar_TypeChecker_Env.try_solve_implicits_hook);
                         FStar_TypeChecker_Env.splice =
                           (env11.FStar_TypeChecker_Env.splice);
                         FStar_TypeChecker_Env.mpreprocess =
                           (env11.FStar_TypeChecker_Env.mpreprocess);
                         FStar_TypeChecker_Env.postprocess =
                           (env11.FStar_TypeChecker_Env.postprocess);
                         FStar_TypeChecker_Env.identifier_info =
                           (env11.FStar_TypeChecker_Env.identifier_info);
                         FStar_TypeChecker_Env.tc_hooks =
                           (env11.FStar_TypeChecker_Env.tc_hooks);
                         FStar_TypeChecker_Env.dsenv =
                           (env11.FStar_TypeChecker_Env.dsenv);
                         FStar_TypeChecker_Env.nbe =
                           (env11.FStar_TypeChecker_Env.nbe);
                         FStar_TypeChecker_Env.strict_args_tab =
                           (env11.FStar_TypeChecker_Env.strict_args_tab);
                         FStar_TypeChecker_Env.erasable_types_tab =
                           (env11.FStar_TypeChecker_Env.erasable_types_tab);
                         FStar_TypeChecker_Env.enable_defer_to_tac =
                           (env11.FStar_TypeChecker_Env.enable_defer_to_tac);
                         FStar_TypeChecker_Env.unif_allow_ref_guards =
                           (env11.FStar_TypeChecker_Env.unif_allow_ref_guards);
                         FStar_TypeChecker_Env.erase_erasable_args =
                           (env11.FStar_TypeChecker_Env.erase_erasable_args);
                         FStar_TypeChecker_Env.core_check =
                           (env11.FStar_TypeChecker_Env.core_check);
                         FStar_TypeChecker_Env.missing_decl =
                           (env11.FStar_TypeChecker_Env.missing_decl)
                       } e11 in
                   match uu___4 with
                   | (e12, c1, g1) ->
                       let uu___5 =
                         let uu___6 =
                           FStar_TypeChecker_Env.set_range env11
                             e12.FStar_Syntax_Syntax.pos in
                         FStar_TypeChecker_Util.strengthen_precondition
                           (FStar_Pervasives_Native.Some
                              (fun uu___7 ->
                                 FStar_Compiler_Util.return_all
                                   FStar_TypeChecker_Err.ill_kinded_type))
                           uu___6 e12 c1 wf_annot in
                       (match uu___5 with
                        | (c11, guard_f) ->
                            let g11 =
                              FStar_Class_Monoid.op_Plus_Plus
                                FStar_TypeChecker_Common.monoid_guard_t g1
                                guard_f in
                            ((let uu___7 = FStar_Compiler_Debug.extreme () in
                              if uu___7
                              then
                                let uu___8 =
                                  FStar_Class_Show.show
                                    (FStar_Class_Show.show_either
                                       FStar_Syntax_Print.showable_bv
                                       FStar_Syntax_Print.showable_fv)
                                    lb.FStar_Syntax_Syntax.lbname in
                                let uu___9 =
                                  FStar_TypeChecker_Common.lcomp_to_string
                                    c11 in
                                let uu___10 =
                                  FStar_TypeChecker_Rel.guard_to_string env
                                    g11 in
                                FStar_Compiler_Util.print3
                                  "checked let-bound def %s : %s guard is %s\n"
                                  uu___8 uu___9 uu___10
                              else ());
                             (e12, univ_vars, c11, g11,
                               (FStar_Compiler_Option.isSome topt)))))))
and (check_lbtyp :
  Prims.bool ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.letbinding ->
        (FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option *
          FStar_TypeChecker_Env.guard_t * FStar_Syntax_Syntax.univ_names *
          FStar_Syntax_Syntax.subst_elt Prims.list *
          FStar_TypeChecker_Env.env))
  =
  fun top_level ->
    fun env ->
      fun lb ->
        FStar_Errors.with_ctx
          "While checking type annotation of a letbinding"
          (fun uu___ ->
             let t = FStar_Syntax_Subst.compress lb.FStar_Syntax_Syntax.lbtyp in
             match t.FStar_Syntax_Syntax.n with
             | FStar_Syntax_Syntax.Tm_unknown ->
                 let uu___1 =
                   FStar_Syntax_Subst.univ_var_opening
                     lb.FStar_Syntax_Syntax.lbunivs in
                 (match uu___1 with
                  | (univ_opening, univ_vars) ->
                      let uu___2 =
                        FStar_TypeChecker_Env.push_univ_vars env univ_vars in
                      (FStar_Pervasives_Native.None,
                        (FStar_Class_Monoid.mzero
                           FStar_TypeChecker_Common.monoid_guard_t),
                        univ_vars, univ_opening, uu___2))
             | uu___1 ->
                 let uu___2 =
                   FStar_Syntax_Subst.univ_var_opening
                     lb.FStar_Syntax_Syntax.lbunivs in
                 (match uu___2 with
                  | (univ_opening, univ_vars) ->
                      let t1 = FStar_Syntax_Subst.subst univ_opening t in
                      let env1 =
                        FStar_TypeChecker_Env.push_univ_vars env univ_vars in
                      if
                        top_level &&
                          (Prims.op_Negation
                             env.FStar_TypeChecker_Env.generalize)
                      then
                        let uu___3 =
                          FStar_TypeChecker_Env.set_expected_typ env1 t1 in
                        ((FStar_Pervasives_Native.Some t1),
                          (FStar_Class_Monoid.mzero
                             FStar_TypeChecker_Common.monoid_guard_t),
                          univ_vars, univ_opening, uu___3)
                      else
                        (let uu___4 = FStar_Syntax_Util.type_u () in
                         match uu___4 with
                         | (k, uu___5) ->
                             let uu___6 =
                               tc_check_tot_or_gtot_term env1 t1 k "" in
                             (match uu___6 with
                              | (t2, uu___7, g) ->
                                  ((let uu___9 =
                                      FStar_Compiler_Debug.medium () in
                                    if uu___9
                                    then
                                      let uu___10 =
                                        let uu___11 =
                                          FStar_Syntax_Syntax.range_of_lbname
                                            lb.FStar_Syntax_Syntax.lbname in
                                        FStar_Compiler_Range_Ops.string_of_range
                                          uu___11 in
                                      let uu___11 =
                                        FStar_Class_Show.show
                                          FStar_Syntax_Print.showable_term t2 in
                                      FStar_Compiler_Util.print2
                                        "(%s) Checked type annotation %s\n"
                                        uu___10 uu___11
                                    else ());
                                   (let t3 = norm env1 t2 in
                                    let uu___9 =
                                      FStar_TypeChecker_Env.set_expected_typ
                                        env1 t3 in
                                    ((FStar_Pervasives_Native.Some t3), g,
                                      univ_vars, univ_opening, uu___9)))))))
and (tc_binder :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.binder ->
      (FStar_Syntax_Syntax.binder * FStar_TypeChecker_Env.env *
        FStar_TypeChecker_Common.guard_t * FStar_Syntax_Syntax.universe))
  =
  fun env ->
    fun uu___ ->
      match uu___ with
      | { FStar_Syntax_Syntax.binder_bv = x;
          FStar_Syntax_Syntax.binder_qual = imp;
          FStar_Syntax_Syntax.binder_positivity = pqual;
          FStar_Syntax_Syntax.binder_attrs = attrs;_} ->
          let uu___1 = FStar_Syntax_Util.type_u () in
          (match uu___1 with
           | (tu, u) ->
               ((let uu___3 = FStar_Compiler_Debug.extreme () in
                 if uu___3
                 then
                   let uu___4 =
                     FStar_Class_Show.show FStar_Syntax_Print.showable_bv x in
                   let uu___5 =
                     FStar_Class_Show.show FStar_Syntax_Print.showable_term
                       x.FStar_Syntax_Syntax.sort in
                   let uu___6 =
                     FStar_Class_Show.show FStar_Syntax_Print.showable_term
                       tu in
                   FStar_Compiler_Util.print3
                     "Checking binder %s:%s at type %s\n" uu___4 uu___5
                     uu___6
                 else ());
                (let uu___3 =
                   tc_check_tot_or_gtot_term env x.FStar_Syntax_Syntax.sort
                     tu "" in
                 match uu___3 with
                 | (t, uu___4, g) ->
                     let uu___5 =
                       match imp with
                       | FStar_Pervasives_Native.Some
                           (FStar_Syntax_Syntax.Meta tau) ->
                           let uu___6 =
                             tc_tactic FStar_Syntax_Syntax.t_unit
                               FStar_Syntax_Syntax.t_unit env tau in
                           (match uu___6 with
                            | (tau1, uu___7, g1) ->
                                ((FStar_Pervasives_Native.Some
                                    (FStar_Syntax_Syntax.Meta tau1)), g1))
                       | uu___6 ->
                           (imp,
                             (FStar_Class_Monoid.mzero
                                FStar_TypeChecker_Common.monoid_guard_t)) in
                     (match uu___5 with
                      | (imp1, g') ->
                          let uu___6 = tc_attributes env attrs in
                          (match uu___6 with
                           | (g_attrs, attrs1) ->
                               let g1 =
                                 FStar_Class_Monoid.op_Plus_Plus
                                   FStar_TypeChecker_Common.monoid_guard_t g
                                   g_attrs in
                               (check_erasable_binder_attributes env attrs1 t;
                                (let x1 =
                                   FStar_Syntax_Syntax.mk_binder_with_attrs
                                     {
                                       FStar_Syntax_Syntax.ppname =
                                         (x.FStar_Syntax_Syntax.ppname);
                                       FStar_Syntax_Syntax.index =
                                         (x.FStar_Syntax_Syntax.index);
                                       FStar_Syntax_Syntax.sort = t
                                     } imp1 pqual attrs1 in
                                 (let uu___9 = FStar_Compiler_Debug.high () in
                                  if uu___9
                                  then
                                    let uu___10 =
                                      FStar_Class_Show.show
                                        FStar_Syntax_Print.showable_bv
                                        x1.FStar_Syntax_Syntax.binder_bv in
                                    let uu___11 =
                                      FStar_Class_Show.show
                                        FStar_Syntax_Print.showable_term t in
                                    FStar_Compiler_Util.print2
                                      "Pushing binder %s at type %s\n"
                                      uu___10 uu___11
                                  else ());
                                 (let uu___9 = push_binding env x1 in
                                  (x1, uu___9, g1, u)))))))))
and (tc_binders :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.binders ->
      (FStar_Syntax_Syntax.binders * FStar_TypeChecker_Env.env *
        FStar_TypeChecker_Env.guard_t * FStar_Syntax_Syntax.universes))
  =
  fun env ->
    fun bs ->
      (let uu___1 = FStar_Compiler_Debug.extreme () in
       if uu___1
       then
         let uu___2 = FStar_Syntax_Print.binders_to_string ", " bs in
         FStar_Compiler_Util.print1 "Checking binders %s\n" uu___2
       else ());
      (let rec aux env1 bs1 =
         match bs1 with
         | [] ->
             ([], env1,
               (FStar_Class_Monoid.mzero
                  FStar_TypeChecker_Common.monoid_guard_t), [])
         | b::bs2 ->
             let uu___1 = tc_binder env1 b in
             (match uu___1 with
              | (b1, env', g, u) ->
                  let uu___2 = aux env' bs2 in
                  (match uu___2 with
                   | (bs3, env'1, g', us) ->
                       let uu___3 =
                         let uu___4 =
                           FStar_TypeChecker_Env.close_guard_univs [u] 
                             [b1] g' in
                         FStar_Class_Monoid.op_Plus_Plus
                           FStar_TypeChecker_Common.monoid_guard_t g uu___4 in
                       ((b1 :: bs3), env'1, uu___3, (u :: us)))) in
       aux env bs)
and (tc_smt_pats :
  FStar_TypeChecker_Env.env ->
    (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax *
      FStar_Syntax_Syntax.arg_qualifier FStar_Pervasives_Native.option)
      Prims.list Prims.list ->
      ((FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax *
        FStar_Syntax_Syntax.arg_qualifier FStar_Pervasives_Native.option)
        Prims.list Prims.list * FStar_TypeChecker_Common.guard_t))
  =
  fun en ->
    fun pats ->
      let tc_args en1 args =
        FStar_Compiler_List.fold_right
          (fun uu___ ->
             fun uu___1 ->
               match (uu___, uu___1) with
               | ((t, imp), (args1, g)) ->
                   (check_no_smt_theory_symbols en1 t;
                    (let uu___3 = tc_term en1 t in
                     match uu___3 with
                     | (t1, uu___4, g') ->
                         let uu___5 =
                           FStar_Class_Monoid.op_Plus_Plus
                             FStar_TypeChecker_Common.monoid_guard_t g g' in
                         (((t1, imp) :: args1), uu___5)))) args
          ([],
            (FStar_Class_Monoid.mzero FStar_TypeChecker_Common.monoid_guard_t)) in
      FStar_Compiler_List.fold_right
        (fun p ->
           fun uu___ ->
             match uu___ with
             | (pats1, g) ->
                 let uu___1 = tc_args en p in
                 (match uu___1 with
                  | (args, g') ->
                      let uu___2 =
                        FStar_Class_Monoid.op_Plus_Plus
                          FStar_TypeChecker_Common.monoid_guard_t g g' in
                      ((args :: pats1), uu___2))) pats
        ([],
          (FStar_Class_Monoid.mzero FStar_TypeChecker_Common.monoid_guard_t))
and (tc_tot_or_gtot_term_maybe_solve_deferred :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      Prims.string ->
        Prims.bool ->
          (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
            FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      fun msg ->
        fun solve_deferred ->
          let uu___ = tc_maybe_toplevel_term env e in
          match uu___ with
          | (e1, c, g) ->
              let uu___1 = FStar_TypeChecker_Common.is_tot_or_gtot_lcomp c in
              if uu___1
              then (e1, c, g)
              else
                (let g1 =
                   if solve_deferred
                   then
                     FStar_TypeChecker_Rel.solve_deferred_constraints env g
                   else g in
                 let uu___3 = FStar_TypeChecker_Common.lcomp_comp c in
                 match uu___3 with
                 | (c1, g_c) ->
                     let c2 = norm_c env c1 in
                     let uu___4 =
                       let uu___5 =
                         FStar_TypeChecker_Util.is_pure_effect env
                           (FStar_Syntax_Util.comp_effect_name c2) in
                       if uu___5
                       then
                         let uu___6 =
                           FStar_Syntax_Syntax.mk_Total
                             (FStar_Syntax_Util.comp_result c2) in
                         (uu___6, false)
                       else
                         (let uu___7 =
                            FStar_Syntax_Syntax.mk_GTotal
                              (FStar_Syntax_Util.comp_result c2) in
                          (uu___7, true)) in
                     (match uu___4 with
                      | (target_comp, allow_ghost) ->
                          let uu___5 =
                            FStar_TypeChecker_Rel.sub_comp env c2 target_comp in
                          (match uu___5 with
                           | FStar_Pervasives_Native.Some g' ->
                               let uu___6 =
                                 FStar_TypeChecker_Common.lcomp_of_comp
                                   target_comp in
                               let uu___7 =
                                 let uu___8 =
                                   FStar_Class_Monoid.op_Plus_Plus
                                     FStar_TypeChecker_Common.monoid_guard_t
                                     g_c g' in
                                 FStar_Class_Monoid.op_Plus_Plus
                                   FStar_TypeChecker_Common.monoid_guard_t g1
                                   uu___8 in
                               (e1, uu___6, uu___7)
                           | uu___6 ->
                               if allow_ghost
                               then
                                 let uu___7 =
                                   FStar_TypeChecker_Err.expected_ghost_expression
                                     e1 c2 msg in
                                 FStar_Errors.raise_error_doc uu___7
                                   e1.FStar_Syntax_Syntax.pos
                               else
                                 (let uu___8 =
                                    FStar_TypeChecker_Err.expected_pure_expression
                                      e1 c2 msg in
                                  FStar_Errors.raise_error_doc uu___8
                                    e1.FStar_Syntax_Syntax.pos))))
and (tc_tot_or_gtot_term' :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      Prims.string ->
        (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
          FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      fun msg -> tc_tot_or_gtot_term_maybe_solve_deferred env e msg true
and (tc_tot_or_gtot_term :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
        FStar_TypeChecker_Env.guard_t))
  = fun env -> fun e -> tc_tot_or_gtot_term' env e ""
and (tc_check_tot_or_gtot_term :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.typ ->
        Prims.string ->
          (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp *
            FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      fun t ->
        fun msg ->
          let env1 = FStar_TypeChecker_Env.set_expected_typ env t in
          tc_tot_or_gtot_term' env1 e msg
and (tc_trivial_guard :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      (FStar_Syntax_Syntax.term * FStar_TypeChecker_Common.lcomp))
  =
  fun env ->
    fun t ->
      let uu___ = tc_tot_or_gtot_term env t in
      match uu___ with
      | (t1, c, g) ->
          (FStar_TypeChecker_Rel.force_trivial_guard env g; (t1, c))
and (tc_attributes :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term Prims.list ->
      (FStar_TypeChecker_Env.guard_t * FStar_Syntax_Syntax.term Prims.list))
  =
  fun env ->
    fun attrs ->
      FStar_Compiler_List.fold_left
        (fun uu___ ->
           fun attr ->
             match uu___ with
             | (g, attrs1) ->
                 let uu___1 = tc_tot_or_gtot_term env attr in
                 (match uu___1 with
                  | (attr', uu___2, g') ->
                      let uu___3 =
                        FStar_Class_Monoid.op_Plus_Plus
                          FStar_TypeChecker_Common.monoid_guard_t g g' in
                      (uu___3, (attr' :: attrs1))))
        ((FStar_Class_Monoid.mzero FStar_TypeChecker_Common.monoid_guard_t),
          []) (FStar_Compiler_List.rev attrs)
let (tc_check_trivial_guard :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env ->
    fun t ->
      fun k ->
        let uu___ = tc_check_tot_or_gtot_term env t k "" in
        match uu___ with
        | (t1, uu___1, g) ->
            (FStar_TypeChecker_Rel.force_trivial_guard env g; t1)
let (typeof_tot_or_gtot_term :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      Prims.bool ->
        (FStar_Syntax_Syntax.term * FStar_Syntax_Syntax.typ *
          FStar_TypeChecker_Env.guard_t))
  =
  fun env ->
    fun e ->
      fun must_tot ->
        (let uu___1 = FStar_Compiler_Effect.op_Bang dbg_RelCheck in
         if uu___1
         then
           let uu___2 =
             FStar_Class_Show.show FStar_Syntax_Print.showable_term e in
           FStar_Compiler_Util.print1 "Checking term %s\n" uu___2
         else ());
        (let env1 =
           {
             FStar_TypeChecker_Env.solver =
               (env.FStar_TypeChecker_Env.solver);
             FStar_TypeChecker_Env.range = (env.FStar_TypeChecker_Env.range);
             FStar_TypeChecker_Env.curmodule =
               (env.FStar_TypeChecker_Env.curmodule);
             FStar_TypeChecker_Env.gamma = (env.FStar_TypeChecker_Env.gamma);
             FStar_TypeChecker_Env.gamma_sig =
               (env.FStar_TypeChecker_Env.gamma_sig);
             FStar_TypeChecker_Env.gamma_cache =
               (env.FStar_TypeChecker_Env.gamma_cache);
             FStar_TypeChecker_Env.modules =
               (env.FStar_TypeChecker_Env.modules);
             FStar_TypeChecker_Env.expected_typ =
               (env.FStar_TypeChecker_Env.expected_typ);
             FStar_TypeChecker_Env.sigtab =
               (env.FStar_TypeChecker_Env.sigtab);
             FStar_TypeChecker_Env.attrtab =
               (env.FStar_TypeChecker_Env.attrtab);
             FStar_TypeChecker_Env.instantiate_imp =
               (env.FStar_TypeChecker_Env.instantiate_imp);
             FStar_TypeChecker_Env.effects =
               (env.FStar_TypeChecker_Env.effects);
             FStar_TypeChecker_Env.generalize =
               (env.FStar_TypeChecker_Env.generalize);
             FStar_TypeChecker_Env.letrecs = [];
             FStar_TypeChecker_Env.top_level = false;
             FStar_TypeChecker_Env.check_uvars =
               (env.FStar_TypeChecker_Env.check_uvars);
             FStar_TypeChecker_Env.use_eq_strict =
               (env.FStar_TypeChecker_Env.use_eq_strict);
             FStar_TypeChecker_Env.is_iface =
               (env.FStar_TypeChecker_Env.is_iface);
             FStar_TypeChecker_Env.admit = (env.FStar_TypeChecker_Env.admit);
             FStar_TypeChecker_Env.lax_universes =
               (env.FStar_TypeChecker_Env.lax_universes);
             FStar_TypeChecker_Env.phase1 =
               (env.FStar_TypeChecker_Env.phase1);
             FStar_TypeChecker_Env.failhard =
               (env.FStar_TypeChecker_Env.failhard);
             FStar_TypeChecker_Env.flychecking =
               (env.FStar_TypeChecker_Env.flychecking);
             FStar_TypeChecker_Env.uvar_subtyping =
               (env.FStar_TypeChecker_Env.uvar_subtyping);
             FStar_TypeChecker_Env.intactics =
               (env.FStar_TypeChecker_Env.intactics);
             FStar_TypeChecker_Env.nocoerce =
               (env.FStar_TypeChecker_Env.nocoerce);
             FStar_TypeChecker_Env.tc_term =
               (env.FStar_TypeChecker_Env.tc_term);
             FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
               (env.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
             FStar_TypeChecker_Env.universe_of =
               (env.FStar_TypeChecker_Env.universe_of);
             FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term =
               (env.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
             FStar_TypeChecker_Env.teq_nosmt_force =
               (env.FStar_TypeChecker_Env.teq_nosmt_force);
             FStar_TypeChecker_Env.subtype_nosmt_force =
               (env.FStar_TypeChecker_Env.subtype_nosmt_force);
             FStar_TypeChecker_Env.qtbl_name_and_index =
               (env.FStar_TypeChecker_Env.qtbl_name_and_index);
             FStar_TypeChecker_Env.normalized_eff_names =
               (env.FStar_TypeChecker_Env.normalized_eff_names);
             FStar_TypeChecker_Env.fv_delta_depths =
               (env.FStar_TypeChecker_Env.fv_delta_depths);
             FStar_TypeChecker_Env.proof_ns =
               (env.FStar_TypeChecker_Env.proof_ns);
             FStar_TypeChecker_Env.synth_hook =
               (env.FStar_TypeChecker_Env.synth_hook);
             FStar_TypeChecker_Env.try_solve_implicits_hook =
               (env.FStar_TypeChecker_Env.try_solve_implicits_hook);
             FStar_TypeChecker_Env.splice =
               (env.FStar_TypeChecker_Env.splice);
             FStar_TypeChecker_Env.mpreprocess =
               (env.FStar_TypeChecker_Env.mpreprocess);
             FStar_TypeChecker_Env.postprocess =
               (env.FStar_TypeChecker_Env.postprocess);
             FStar_TypeChecker_Env.identifier_info =
               (env.FStar_TypeChecker_Env.identifier_info);
             FStar_TypeChecker_Env.tc_hooks =
               (env.FStar_TypeChecker_Env.tc_hooks);
             FStar_TypeChecker_Env.dsenv = (env.FStar_TypeChecker_Env.dsenv);
             FStar_TypeChecker_Env.nbe = (env.FStar_TypeChecker_Env.nbe);
             FStar_TypeChecker_Env.strict_args_tab =
               (env.FStar_TypeChecker_Env.strict_args_tab);
             FStar_TypeChecker_Env.erasable_types_tab =
               (env.FStar_TypeChecker_Env.erasable_types_tab);
             FStar_TypeChecker_Env.enable_defer_to_tac =
               (env.FStar_TypeChecker_Env.enable_defer_to_tac);
             FStar_TypeChecker_Env.unif_allow_ref_guards =
               (env.FStar_TypeChecker_Env.unif_allow_ref_guards);
             FStar_TypeChecker_Env.erase_erasable_args =
               (env.FStar_TypeChecker_Env.erase_erasable_args);
             FStar_TypeChecker_Env.core_check =
               (env.FStar_TypeChecker_Env.core_check);
             FStar_TypeChecker_Env.missing_decl =
               (env.FStar_TypeChecker_Env.missing_decl)
           } in
         let uu___1 =
           try
             (fun uu___2 -> match () with | () -> tc_tot_or_gtot_term env1 e)
               ()
           with
           | FStar_Errors.Error (e1, msg, r, ctx) when
               r = FStar_Compiler_Range_Type.dummyRange ->
               let uu___3 =
                 let uu___4 =
                   let uu___5 = FStar_TypeChecker_Env.get_range env1 in
                   (e1, msg, uu___5, ctx) in
                 FStar_Errors.Error uu___4 in
               FStar_Compiler_Effect.raise uu___3 in
         match uu___1 with
         | (t, c, g) ->
             if must_tot
             then
               let c1 =
                 FStar_TypeChecker_Normalize.maybe_ghost_to_pure_lcomp env1 c in
               let uu___2 = FStar_TypeChecker_Common.is_total_lcomp c1 in
               (if uu___2
                then (t, (c1.FStar_TypeChecker_Common.res_typ), g)
                else
                  (let uu___4 =
                     let uu___5 =
                       let uu___6 =
                         FStar_Class_Show.show
                           FStar_Syntax_Print.showable_term e in
                       FStar_Compiler_Util.format1
                         "Implicit argument: Expected a total term; got a ghost term: %s"
                         uu___6 in
                     (FStar_Errors_Codes.Fatal_UnexpectedImplictArgument,
                       uu___5) in
                   let uu___5 = FStar_TypeChecker_Env.get_range env1 in
                   FStar_Errors.raise_error uu___4 uu___5))
             else (t, (c.FStar_TypeChecker_Common.res_typ), g))
let level_of_type_fail :
  'uuuuu .
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.term -> Prims.string -> 'uuuuu
  =
  fun env ->
    fun e ->
      fun t ->
        let uu___ =
          let uu___1 =
            let uu___2 =
              let uu___3 =
                let uu___4 =
                  FStar_Class_Show.show FStar_Syntax_Print.showable_term e in
                FStar_Compiler_Util.format2
                  "Expected a type; got %s of type %s" uu___4 t in
              FStar_Errors_Msg.text uu___3 in
            [uu___2] in
          (FStar_Errors_Codes.Fatal_UnexpectedTermType, uu___1) in
        let uu___1 = FStar_TypeChecker_Env.get_range env in
        FStar_Errors.raise_error_doc uu___ uu___1
let (level_of_type :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.universe)
  =
  fun env ->
    fun e ->
      fun t ->
        let rec aux retry t1 =
          let uu___ =
            let uu___1 = FStar_Syntax_Util.unrefine t1 in
            uu___1.FStar_Syntax_Syntax.n in
          match uu___ with
          | FStar_Syntax_Syntax.Tm_type u -> u
          | uu___1 ->
              if retry
              then
                let t2 =
                  FStar_TypeChecker_Normalize.normalize
                    [FStar_TypeChecker_Env.UnfoldUntil
                       FStar_Syntax_Syntax.delta_constant] env t1 in
                aux false t2
              else
                (let uu___3 = FStar_Syntax_Util.type_u () in
                 match uu___3 with
                 | (t_u, u) ->
                     let env1 =
                       {
                         FStar_TypeChecker_Env.solver =
                           (env.FStar_TypeChecker_Env.solver);
                         FStar_TypeChecker_Env.range =
                           (env.FStar_TypeChecker_Env.range);
                         FStar_TypeChecker_Env.curmodule =
                           (env.FStar_TypeChecker_Env.curmodule);
                         FStar_TypeChecker_Env.gamma =
                           (env.FStar_TypeChecker_Env.gamma);
                         FStar_TypeChecker_Env.gamma_sig =
                           (env.FStar_TypeChecker_Env.gamma_sig);
                         FStar_TypeChecker_Env.gamma_cache =
                           (env.FStar_TypeChecker_Env.gamma_cache);
                         FStar_TypeChecker_Env.modules =
                           (env.FStar_TypeChecker_Env.modules);
                         FStar_TypeChecker_Env.expected_typ =
                           (env.FStar_TypeChecker_Env.expected_typ);
                         FStar_TypeChecker_Env.sigtab =
                           (env.FStar_TypeChecker_Env.sigtab);
                         FStar_TypeChecker_Env.attrtab =
                           (env.FStar_TypeChecker_Env.attrtab);
                         FStar_TypeChecker_Env.instantiate_imp =
                           (env.FStar_TypeChecker_Env.instantiate_imp);
                         FStar_TypeChecker_Env.effects =
                           (env.FStar_TypeChecker_Env.effects);
                         FStar_TypeChecker_Env.generalize =
                           (env.FStar_TypeChecker_Env.generalize);
                         FStar_TypeChecker_Env.letrecs =
                           (env.FStar_TypeChecker_Env.letrecs);
                         FStar_TypeChecker_Env.top_level =
                           (env.FStar_TypeChecker_Env.top_level);
                         FStar_TypeChecker_Env.check_uvars =
                           (env.FStar_TypeChecker_Env.check_uvars);
                         FStar_TypeChecker_Env.use_eq_strict =
                           (env.FStar_TypeChecker_Env.use_eq_strict);
                         FStar_TypeChecker_Env.is_iface =
                           (env.FStar_TypeChecker_Env.is_iface);
                         FStar_TypeChecker_Env.admit = true;
                         FStar_TypeChecker_Env.lax_universes =
                           (env.FStar_TypeChecker_Env.lax_universes);
                         FStar_TypeChecker_Env.phase1 =
                           (env.FStar_TypeChecker_Env.phase1);
                         FStar_TypeChecker_Env.failhard =
                           (env.FStar_TypeChecker_Env.failhard);
                         FStar_TypeChecker_Env.flychecking =
                           (env.FStar_TypeChecker_Env.flychecking);
                         FStar_TypeChecker_Env.uvar_subtyping =
                           (env.FStar_TypeChecker_Env.uvar_subtyping);
                         FStar_TypeChecker_Env.intactics =
                           (env.FStar_TypeChecker_Env.intactics);
                         FStar_TypeChecker_Env.nocoerce =
                           (env.FStar_TypeChecker_Env.nocoerce);
                         FStar_TypeChecker_Env.tc_term =
                           (env.FStar_TypeChecker_Env.tc_term);
                         FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                           (env.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                         FStar_TypeChecker_Env.universe_of =
                           (env.FStar_TypeChecker_Env.universe_of);
                         FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                           =
                           (env.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                         FStar_TypeChecker_Env.teq_nosmt_force =
                           (env.FStar_TypeChecker_Env.teq_nosmt_force);
                         FStar_TypeChecker_Env.subtype_nosmt_force =
                           (env.FStar_TypeChecker_Env.subtype_nosmt_force);
                         FStar_TypeChecker_Env.qtbl_name_and_index =
                           (env.FStar_TypeChecker_Env.qtbl_name_and_index);
                         FStar_TypeChecker_Env.normalized_eff_names =
                           (env.FStar_TypeChecker_Env.normalized_eff_names);
                         FStar_TypeChecker_Env.fv_delta_depths =
                           (env.FStar_TypeChecker_Env.fv_delta_depths);
                         FStar_TypeChecker_Env.proof_ns =
                           (env.FStar_TypeChecker_Env.proof_ns);
                         FStar_TypeChecker_Env.synth_hook =
                           (env.FStar_TypeChecker_Env.synth_hook);
                         FStar_TypeChecker_Env.try_solve_implicits_hook =
                           (env.FStar_TypeChecker_Env.try_solve_implicits_hook);
                         FStar_TypeChecker_Env.splice =
                           (env.FStar_TypeChecker_Env.splice);
                         FStar_TypeChecker_Env.mpreprocess =
                           (env.FStar_TypeChecker_Env.mpreprocess);
                         FStar_TypeChecker_Env.postprocess =
                           (env.FStar_TypeChecker_Env.postprocess);
                         FStar_TypeChecker_Env.identifier_info =
                           (env.FStar_TypeChecker_Env.identifier_info);
                         FStar_TypeChecker_Env.tc_hooks =
                           (env.FStar_TypeChecker_Env.tc_hooks);
                         FStar_TypeChecker_Env.dsenv =
                           (env.FStar_TypeChecker_Env.dsenv);
                         FStar_TypeChecker_Env.nbe =
                           (env.FStar_TypeChecker_Env.nbe);
                         FStar_TypeChecker_Env.strict_args_tab =
                           (env.FStar_TypeChecker_Env.strict_args_tab);
                         FStar_TypeChecker_Env.erasable_types_tab =
                           (env.FStar_TypeChecker_Env.erasable_types_tab);
                         FStar_TypeChecker_Env.enable_defer_to_tac =
                           (env.FStar_TypeChecker_Env.enable_defer_to_tac);
                         FStar_TypeChecker_Env.unif_allow_ref_guards =
                           (env.FStar_TypeChecker_Env.unif_allow_ref_guards);
                         FStar_TypeChecker_Env.erase_erasable_args =
                           (env.FStar_TypeChecker_Env.erase_erasable_args);
                         FStar_TypeChecker_Env.core_check =
                           (env.FStar_TypeChecker_Env.core_check);
                         FStar_TypeChecker_Env.missing_decl =
                           (env.FStar_TypeChecker_Env.missing_decl)
                       } in
                     let g = FStar_TypeChecker_Rel.teq env1 t1 t_u in
                     ((match g.FStar_TypeChecker_Common.guard_f with
                       | FStar_TypeChecker_Common.NonTrivial f ->
                           let uu___5 =
                             FStar_Class_Show.show
                               FStar_Syntax_Print.showable_term t1 in
                           level_of_type_fail env1 e uu___5
                       | uu___5 ->
                           FStar_TypeChecker_Rel.force_trivial_guard env1 g);
                      u)) in
        aux true t
let rec (apply_well_typed :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.typ ->
      FStar_Syntax_Syntax.args ->
        FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option)
  =
  fun env ->
    fun t_hd ->
      fun args ->
        if (FStar_Compiler_List.length args) = Prims.int_zero
        then FStar_Pervasives_Native.Some t_hd
        else
          (let uu___1 =
             let uu___2 = FStar_TypeChecker_Normalize.unfold_whnf env t_hd in
             uu___2.FStar_Syntax_Syntax.n in
           match uu___1 with
           | FStar_Syntax_Syntax.Tm_arrow
               { FStar_Syntax_Syntax.bs1 = bs;
                 FStar_Syntax_Syntax.comp = c;_}
               ->
               let n_args = FStar_Compiler_List.length args in
               let n_bs = FStar_Compiler_List.length bs in
               let uu___2 =
                 if n_args < n_bs
                 then
                   let uu___3 = FStar_Compiler_Util.first_N n_args bs in
                   match uu___3 with
                   | (bs1, rest) ->
                       let t =
                         FStar_Syntax_Syntax.mk
                           (FStar_Syntax_Syntax.Tm_arrow
                              {
                                FStar_Syntax_Syntax.bs1 = rest;
                                FStar_Syntax_Syntax.comp = c
                              }) t_hd.FStar_Syntax_Syntax.pos in
                       let uu___4 =
                         let uu___5 = FStar_Syntax_Syntax.mk_Total t in
                         FStar_Syntax_Subst.open_comp bs1 uu___5 in
                       (match uu___4 with
                        | (bs2, c1) ->
                            (bs2, args, (FStar_Syntax_Util.comp_result c1),
                              []))
                 else
                   (let uu___4 = FStar_Syntax_Subst.open_comp bs c in
                    match uu___4 with
                    | (bs1, c1) ->
                        let uu___5 = FStar_Compiler_List.splitAt n_bs args in
                        (match uu___5 with
                         | (args1, remaining_args) ->
                             (bs1, args1, (FStar_Syntax_Util.comp_result c1),
                               remaining_args))) in
               (match uu___2 with
                | (bs1, args1, t, remaining_args) ->
                    let subst =
                      FStar_Compiler_List.map2
                        (fun b ->
                           fun a ->
                             FStar_Syntax_Syntax.NT
                               ((b.FStar_Syntax_Syntax.binder_bv),
                                 (FStar_Pervasives_Native.fst a))) bs1 args1 in
                    let t1 = FStar_Syntax_Subst.subst subst t in
                    apply_well_typed env t1 remaining_args)
           | FStar_Syntax_Syntax.Tm_refine
               { FStar_Syntax_Syntax.b = x;
                 FStar_Syntax_Syntax.phi = uu___2;_}
               -> apply_well_typed env x.FStar_Syntax_Syntax.sort args
           | FStar_Syntax_Syntax.Tm_ascribed
               { FStar_Syntax_Syntax.tm = t;
                 FStar_Syntax_Syntax.asc = uu___2;
                 FStar_Syntax_Syntax.eff_opt = uu___3;_}
               -> apply_well_typed env t args
           | uu___2 -> FStar_Pervasives_Native.None)
let rec (universe_of_aux :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
      FStar_Syntax_Syntax.term)
  =
  fun env ->
    fun e ->
      let uu___ =
        let uu___1 = FStar_Syntax_Subst.compress e in
        uu___1.FStar_Syntax_Syntax.n in
      match uu___ with
      | FStar_Syntax_Syntax.Tm_bvar uu___1 ->
          let uu___2 =
            let uu___3 =
              FStar_Class_Show.show FStar_Syntax_Print.showable_term e in
            Prims.strcat "TcTerm.universe_of:Impossible (bvar/unknown/lazy) "
              uu___3 in
          FStar_Compiler_Effect.failwith uu___2
      | FStar_Syntax_Syntax.Tm_unknown ->
          let uu___1 =
            let uu___2 =
              FStar_Class_Show.show FStar_Syntax_Print.showable_term e in
            Prims.strcat "TcTerm.universe_of:Impossible (bvar/unknown/lazy) "
              uu___2 in
          FStar_Compiler_Effect.failwith uu___1
      | FStar_Syntax_Syntax.Tm_delayed uu___1 ->
          let uu___2 =
            let uu___3 =
              FStar_Class_Show.show FStar_Syntax_Print.showable_term e in
            Prims.strcat "TcTerm.universe_of:Impossible (bvar/unknown/lazy) "
              uu___3 in
          FStar_Compiler_Effect.failwith uu___2
      | FStar_Syntax_Syntax.Tm_let uu___1 ->
          let e1 = FStar_TypeChecker_Normalize.normalize [] env e in
          universe_of_aux env e1
      | FStar_Syntax_Syntax.Tm_abs
          { FStar_Syntax_Syntax.bs = bs; FStar_Syntax_Syntax.body = t;
            FStar_Syntax_Syntax.rc_opt = uu___1;_}
          -> level_of_type_fail env e "arrow type"
      | FStar_Syntax_Syntax.Tm_uvar (u, s) ->
          let uu___1 = FStar_Syntax_Util.ctx_uvar_typ u in
          FStar_Syntax_Subst.subst' s uu___1
      | FStar_Syntax_Syntax.Tm_meta
          { FStar_Syntax_Syntax.tm2 = t; FStar_Syntax_Syntax.meta = uu___1;_}
          -> universe_of_aux env t
      | FStar_Syntax_Syntax.Tm_name n ->
          let uu___1 = FStar_TypeChecker_Env.lookup_bv env n in
          (match uu___1 with | (t, _rng) -> t)
      | FStar_Syntax_Syntax.Tm_fvar fv ->
          let uu___1 =
            FStar_TypeChecker_Env.lookup_lid env
              (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
          (match uu___1 with | ((uu___2, t), uu___3) -> t)
      | FStar_Syntax_Syntax.Tm_lazy i ->
          let uu___1 = FStar_Syntax_Util.unfold_lazy i in
          universe_of_aux env uu___1
      | FStar_Syntax_Syntax.Tm_ascribed
          { FStar_Syntax_Syntax.tm = uu___1;
            FStar_Syntax_Syntax.asc =
              (FStar_Pervasives.Inl t, uu___2, uu___3);
            FStar_Syntax_Syntax.eff_opt = uu___4;_}
          -> t
      | FStar_Syntax_Syntax.Tm_ascribed
          { FStar_Syntax_Syntax.tm = uu___1;
            FStar_Syntax_Syntax.asc =
              (FStar_Pervasives.Inr c, uu___2, uu___3);
            FStar_Syntax_Syntax.eff_opt = uu___4;_}
          -> FStar_Syntax_Util.comp_result c
      | FStar_Syntax_Syntax.Tm_type u ->
          FStar_Syntax_Syntax.mk
            (FStar_Syntax_Syntax.Tm_type (FStar_Syntax_Syntax.U_succ u))
            e.FStar_Syntax_Syntax.pos
      | FStar_Syntax_Syntax.Tm_quoted uu___1 -> FStar_Syntax_Util.ktype0
      | FStar_Syntax_Syntax.Tm_constant sc ->
          tc_constant env e.FStar_Syntax_Syntax.pos sc
      | FStar_Syntax_Syntax.Tm_uinst
          ({ FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar fv;
             FStar_Syntax_Syntax.pos = uu___1;
             FStar_Syntax_Syntax.vars = uu___2;
             FStar_Syntax_Syntax.hash_code = uu___3;_},
           us)
          ->
          let uu___4 =
            FStar_TypeChecker_Env.lookup_lid env
              (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v in
          (match uu___4 with
           | ((us', t), uu___5) ->
               (if
                  (FStar_Compiler_List.length us) <>
                    (FStar_Compiler_List.length us')
                then
                  (let uu___7 = FStar_TypeChecker_Env.get_range env in
                   FStar_Errors.raise_error
                     (FStar_Errors_Codes.Fatal_UnexpectedNumberOfUniverse,
                       "Unexpected number of universe instantiations") uu___7)
                else ();
                FStar_Compiler_List.iter2
                  (fun ul ->
                     fun ur ->
                       match (ul, ur) with
                       | (FStar_Syntax_Syntax.U_unif u'', uu___8) ->
                           FStar_Syntax_Unionfind.univ_change u'' ur
                       | (FStar_Syntax_Syntax.U_name n1,
                          FStar_Syntax_Syntax.U_name n2) when
                           FStar_Ident.ident_equals n1 n2 -> ()
                       | uu___8 ->
                           let uu___9 =
                             let uu___10 =
                               let uu___11 =
                                 FStar_Class_Show.show
                                   FStar_Syntax_Print.showable_fv fv in
                               let uu___12 =
                                 FStar_Class_Show.show
                                   FStar_Syntax_Print.showable_univ ul in
                               let uu___13 =
                                 FStar_Class_Show.show
                                   FStar_Syntax_Print.showable_univ ur in
                               FStar_Compiler_Util.format3
                                 "Incompatible universe application for %s, expected %s got %s\n"
                                 uu___11 uu___12 uu___13 in
                             (FStar_Errors_Codes.Fatal_IncompatibleUniverse,
                               uu___10) in
                           let uu___10 = FStar_TypeChecker_Env.get_range env in
                           FStar_Errors.raise_error uu___9 uu___10) us' us;
                t))
      | FStar_Syntax_Syntax.Tm_uinst uu___1 ->
          FStar_Compiler_Effect.failwith
            "Impossible: Tm_uinst's head must be an fvar"
      | FStar_Syntax_Syntax.Tm_refine
          { FStar_Syntax_Syntax.b = x; FStar_Syntax_Syntax.phi = uu___1;_} ->
          universe_of_aux env x.FStar_Syntax_Syntax.sort
      | FStar_Syntax_Syntax.Tm_arrow
          { FStar_Syntax_Syntax.bs1 = bs; FStar_Syntax_Syntax.comp = c;_} ->
          let uu___1 = FStar_Syntax_Subst.open_comp bs c in
          (match uu___1 with
           | (bs1, c1) ->
               let env1 = FStar_TypeChecker_Env.push_binders env bs1 in
               let us =
                 FStar_Compiler_List.map
                   (fun uu___2 ->
                      match uu___2 with
                      | { FStar_Syntax_Syntax.binder_bv = b;
                          FStar_Syntax_Syntax.binder_qual = uu___3;
                          FStar_Syntax_Syntax.binder_positivity = uu___4;
                          FStar_Syntax_Syntax.binder_attrs = uu___5;_} ->
                          let uu___6 =
                            universe_of_aux env1 b.FStar_Syntax_Syntax.sort in
                          level_of_type env1 b.FStar_Syntax_Syntax.sort
                            uu___6) bs1 in
               let u_res =
                 let res = FStar_Syntax_Util.comp_result c1 in
                 let uu___2 = universe_of_aux env1 res in
                 level_of_type env1 res uu___2 in
               let u_c =
                 FStar_TypeChecker_Util.universe_of_comp env1 u_res c1 in
               let u =
                 FStar_TypeChecker_Normalize.normalize_universe env1
                   (FStar_Syntax_Syntax.U_max (u_c :: us)) in
               FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_type u)
                 e.FStar_Syntax_Syntax.pos)
      | FStar_Syntax_Syntax.Tm_app
          { FStar_Syntax_Syntax.hd = hd; FStar_Syntax_Syntax.args = args;_}
          ->
          let rec type_of_head retry env1 hd1 args1 =
            let hd2 = FStar_Syntax_Subst.compress hd1 in
            match hd2.FStar_Syntax_Syntax.n with
            | FStar_Syntax_Syntax.Tm_unknown ->
                FStar_Compiler_Effect.failwith
                  "Impossible: universe_of_aux: Tm_app: unexpected head type"
            | FStar_Syntax_Syntax.Tm_bvar uu___1 ->
                FStar_Compiler_Effect.failwith
                  "Impossible: universe_of_aux: Tm_app: unexpected head type"
            | FStar_Syntax_Syntax.Tm_delayed uu___1 ->
                FStar_Compiler_Effect.failwith
                  "Impossible: universe_of_aux: Tm_app: unexpected head type"
            | FStar_Syntax_Syntax.Tm_fvar uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_name uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_uvar uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_uinst uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_ascribed uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_refine uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_constant uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_arrow uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_meta uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_type uu___1 ->
                let uu___2 = universe_of_aux env1 hd2 in (uu___2, args1)
            | FStar_Syntax_Syntax.Tm_match
                { FStar_Syntax_Syntax.scrutinee = uu___1;
                  FStar_Syntax_Syntax.ret_opt = uu___2;
                  FStar_Syntax_Syntax.brs = b::uu___3;
                  FStar_Syntax_Syntax.rc_opt1 = uu___4;_}
                ->
                let uu___5 = FStar_Syntax_Subst.open_branch b in
                (match uu___5 with
                 | (pat, uu___6, tm) ->
                     let bvs = FStar_Syntax_Syntax.pat_bvs pat in
                     let uu___7 = FStar_Syntax_Util.head_and_args tm in
                     (match uu___7 with
                      | (hd3, args') ->
                          let uu___8 =
                            FStar_TypeChecker_Env.push_bvs env1 bvs in
                          type_of_head retry uu___8 hd3
                            (FStar_Compiler_List.op_At args' args1)))
            | uu___1 when retry ->
                let e1 =
                  FStar_TypeChecker_Normalize.normalize
                    [FStar_TypeChecker_Env.Beta;
                    FStar_TypeChecker_Env.DoNotUnfoldPureLets] env1 e in
                let uu___2 = FStar_Syntax_Util.head_and_args e1 in
                (match uu___2 with
                 | (hd3, args2) -> type_of_head false env1 hd3 args2)
            | uu___1 ->
                let uu___2 = FStar_TypeChecker_Env.clear_expected_typ env1 in
                (match uu___2 with
                 | (env2, uu___3) ->
                     let env3 =
                       {
                         FStar_TypeChecker_Env.solver =
                           (env2.FStar_TypeChecker_Env.solver);
                         FStar_TypeChecker_Env.range =
                           (env2.FStar_TypeChecker_Env.range);
                         FStar_TypeChecker_Env.curmodule =
                           (env2.FStar_TypeChecker_Env.curmodule);
                         FStar_TypeChecker_Env.gamma =
                           (env2.FStar_TypeChecker_Env.gamma);
                         FStar_TypeChecker_Env.gamma_sig =
                           (env2.FStar_TypeChecker_Env.gamma_sig);
                         FStar_TypeChecker_Env.gamma_cache =
                           (env2.FStar_TypeChecker_Env.gamma_cache);
                         FStar_TypeChecker_Env.modules =
                           (env2.FStar_TypeChecker_Env.modules);
                         FStar_TypeChecker_Env.expected_typ =
                           (env2.FStar_TypeChecker_Env.expected_typ);
                         FStar_TypeChecker_Env.sigtab =
                           (env2.FStar_TypeChecker_Env.sigtab);
                         FStar_TypeChecker_Env.attrtab =
                           (env2.FStar_TypeChecker_Env.attrtab);
                         FStar_TypeChecker_Env.instantiate_imp =
                           (env2.FStar_TypeChecker_Env.instantiate_imp);
                         FStar_TypeChecker_Env.effects =
                           (env2.FStar_TypeChecker_Env.effects);
                         FStar_TypeChecker_Env.generalize =
                           (env2.FStar_TypeChecker_Env.generalize);
                         FStar_TypeChecker_Env.letrecs =
                           (env2.FStar_TypeChecker_Env.letrecs);
                         FStar_TypeChecker_Env.top_level = false;
                         FStar_TypeChecker_Env.check_uvars =
                           (env2.FStar_TypeChecker_Env.check_uvars);
                         FStar_TypeChecker_Env.use_eq_strict =
                           (env2.FStar_TypeChecker_Env.use_eq_strict);
                         FStar_TypeChecker_Env.is_iface =
                           (env2.FStar_TypeChecker_Env.is_iface);
                         FStar_TypeChecker_Env.admit = true;
                         FStar_TypeChecker_Env.lax_universes =
                           (env2.FStar_TypeChecker_Env.lax_universes);
                         FStar_TypeChecker_Env.phase1 =
                           (env2.FStar_TypeChecker_Env.phase1);
                         FStar_TypeChecker_Env.failhard =
                           (env2.FStar_TypeChecker_Env.failhard);
                         FStar_TypeChecker_Env.flychecking =
                           (env2.FStar_TypeChecker_Env.flychecking);
                         FStar_TypeChecker_Env.uvar_subtyping =
                           (env2.FStar_TypeChecker_Env.uvar_subtyping);
                         FStar_TypeChecker_Env.intactics =
                           (env2.FStar_TypeChecker_Env.intactics);
                         FStar_TypeChecker_Env.nocoerce =
                           (env2.FStar_TypeChecker_Env.nocoerce);
                         FStar_TypeChecker_Env.tc_term =
                           (env2.FStar_TypeChecker_Env.tc_term);
                         FStar_TypeChecker_Env.typeof_tot_or_gtot_term =
                           (env2.FStar_TypeChecker_Env.typeof_tot_or_gtot_term);
                         FStar_TypeChecker_Env.universe_of =
                           (env2.FStar_TypeChecker_Env.universe_of);
                         FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term
                           =
                           (env2.FStar_TypeChecker_Env.typeof_well_typed_tot_or_gtot_term);
                         FStar_TypeChecker_Env.teq_nosmt_force =
                           (env2.FStar_TypeChecker_Env.teq_nosmt_force);
                         FStar_TypeChecker_Env.subtype_nosmt_force =
                           (env2.FStar_TypeChecker_Env.subtype_nosmt_force);
                         FStar_TypeChecker_Env.qtbl_name_and_index =
                           (env2.FStar_TypeChecker_Env.qtbl_name_and_index);
                         FStar_TypeChecker_Env.normalized_eff_names =
                           (env2.FStar_TypeChecker_Env.normalized_eff_names);
                         FStar_TypeChecker_Env.fv_delta_depths =
                           (env2.FStar_TypeChecker_Env.fv_delta_depths);
                         FStar_TypeChecker_Env.proof_ns =
                           (env2.FStar_TypeChecker_Env.proof_ns);
                         FStar_TypeChecker_Env.synth_hook =
                           (env2.FStar_TypeChecker_Env.synth_hook);
                         FStar_TypeChecker_Env.try_solve_implicits_hook =
                           (env2.FStar_TypeChecker_Env.try_solve_implicits_hook);
                         FStar_TypeChecker_Env.splice =
                           (env2.FStar_TypeChecker_Env.splice);
                         FStar_TypeChecker_Env.mpreprocess =
                           (env2.FStar_TypeChecker_Env.mpreprocess);
                         FStar_TypeChecker_Env.postprocess =
                           (env2.FStar_TypeChecker_Env.postprocess);
                         FStar_TypeChecker_Env.identifier_info =
                           (env2.FStar_TypeChecker_Env.identifier_info);
                         FStar_TypeChecker_Env.tc_hooks =
                           (env2.FStar_TypeChecker_Env.tc_hooks);
                         FStar_TypeChecker_Env.dsenv =
                           (env2.FStar_TypeChecker_Env.dsenv);
                         FStar_TypeChecker_Env.nbe =
                           (env2.FStar_TypeChecker_Env.nbe);
                         FStar_TypeChecker_Env.strict_args_tab =
                           (env2.FStar_TypeChecker_Env.strict_args_tab);
                         FStar_TypeChecker_Env.erasable_types_tab =
                           (env2.FStar_TypeChecker_Env.erasable_types_tab);
                         FStar_TypeChecker_Env.enable_defer_to_tac =
                           (env2.FStar_TypeChecker_Env.enable_defer_to_tac);
                         FStar_TypeChecker_Env.unif_allow_ref_guards =
                           (env2.FStar_TypeChecker_Env.unif_allow_ref_guards);
                         FStar_TypeChecker_Env.erase_erasable_args =
                           (env2.FStar_TypeChecker_Env.erase_erasable_args);
                         FStar_TypeChecker_Env.core_check =
                           (env2.FStar_TypeChecker_Env.core_check);
                         FStar_TypeChecker_Env.missing_decl =
                           (env2.FStar_TypeChecker_Env.missing_decl)
                       } in
                     ((let uu___5 =
                         FStar_Compiler_Effect.op_Bang dbg_UniverseOf in
                       if uu___5
                       then
                         let uu___6 =
                           let uu___7 = FStar_TypeChecker_Env.get_range env3 in
                           FStar_Compiler_Range_Ops.string_of_range uu___7 in
                         let uu___7 =
                           FStar_Class_Show.show
                             FStar_Syntax_Print.showable_term hd2 in
                         FStar_Compiler_Util.print2
                           "%s: About to type-check %s\n" uu___6 uu___7
                       else ());
                      (let uu___5 = tc_term env3 hd2 in
                       match uu___5 with
                       | (uu___6,
                          { FStar_TypeChecker_Common.eff_name = uu___7;
                            FStar_TypeChecker_Common.res_typ = t;
                            FStar_TypeChecker_Common.cflags = uu___8;
                            FStar_TypeChecker_Common.comp_thunk = uu___9;_},
                          g) ->
                           ((let uu___11 =
                               FStar_TypeChecker_Rel.solve_deferred_constraints
                                 env3 g in
                             ());
                            (t, args1))))) in
          let uu___1 = type_of_head true env hd args in
          (match uu___1 with
           | (t, args1) ->
               let uu___2 = apply_well_typed env t args1 in
               (match uu___2 with
                | FStar_Pervasives_Native.Some t1 -> t1
                | FStar_Pervasives_Native.None ->
                    let uu___3 =
                      FStar_Class_Show.show FStar_Syntax_Print.showable_term
                        t in
                    level_of_type_fail env e uu___3))
      | FStar_Syntax_Syntax.Tm_match
          { FStar_Syntax_Syntax.scrutinee = uu___1;
            FStar_Syntax_Syntax.ret_opt = uu___2;
            FStar_Syntax_Syntax.brs = b::uu___3;
            FStar_Syntax_Syntax.rc_opt1 = uu___4;_}
          ->
          let uu___5 = FStar_Syntax_Subst.open_branch b in
          (match uu___5 with
           | (pat, uu___6, tm) ->
               let bvs = FStar_Syntax_Syntax.pat_bvs pat in
               let uu___7 = FStar_TypeChecker_Env.push_bvs env bvs in
               universe_of_aux uu___7 tm)
      | FStar_Syntax_Syntax.Tm_match
          { FStar_Syntax_Syntax.scrutinee = uu___1;
            FStar_Syntax_Syntax.ret_opt = uu___2;
            FStar_Syntax_Syntax.brs = [];
            FStar_Syntax_Syntax.rc_opt1 = uu___3;_}
          -> level_of_type_fail env e "empty match cases"
let (universe_of :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.universe)
  =
  fun env ->
    fun e ->
      FStar_Errors.with_ctx "While attempting to compute a universe level"
        (fun uu___ ->
           (let uu___2 = FStar_Compiler_Debug.high () in
            if uu___2
            then
              let uu___3 =
                FStar_Class_Show.show FStar_Syntax_Print.showable_term e in
              FStar_Compiler_Util.print1
                "Calling universe_of_aux with %s {\n" uu___3
            else ());
           FStar_Defensive.def_check_scoped
             FStar_TypeChecker_Env.hasBinders_env
             FStar_Class_Binders.hasNames_term FStar_Syntax_Print.pretty_term
             e.FStar_Syntax_Syntax.pos "universe_of entry" env e;
           (let r = universe_of_aux env e in
            (let uu___4 = FStar_Compiler_Debug.high () in
             if uu___4
             then
               let uu___5 =
                 FStar_Class_Show.show FStar_Syntax_Print.showable_term r in
               FStar_Compiler_Util.print1
                 "Got result from universe_of_aux = %s }\n" uu___5
             else ());
            level_of_type env e r))
let (tc_tparams :
  FStar_TypeChecker_Env.env_t ->
    FStar_Syntax_Syntax.binders ->
      (FStar_Syntax_Syntax.binders * FStar_TypeChecker_Env.env *
        FStar_Syntax_Syntax.universes))
  =
  fun env0 ->
    fun tps ->
      let uu___ = tc_binders env0 tps in
      match uu___ with
      | (tps1, env, g, us) ->
          (FStar_TypeChecker_Rel.force_trivial_guard env0 g; (tps1, env, us))
let rec (__typeof_tot_or_gtot_term_fastpath :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      Prims.bool -> FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option)
  =
  fun env ->
    fun t ->
      fun must_tot ->
        let mk_tm_type u =
          FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_type u)
            t.FStar_Syntax_Syntax.pos in
        let effect_ok k =
          (Prims.op_Negation must_tot) ||
            (FStar_TypeChecker_Normalize.non_info_norm env k) in
        let t1 = FStar_Syntax_Subst.compress t in
        match t1.FStar_Syntax_Syntax.n with
        | FStar_Syntax_Syntax.Tm_delayed uu___ ->
            let uu___1 =
              let uu___2 =
                FStar_Class_Show.show FStar_Syntax_Print.showable_term t1 in
              Prims.strcat "Impossible: " uu___2 in
            FStar_Compiler_Effect.failwith uu___1
        | FStar_Syntax_Syntax.Tm_bvar uu___ ->
            let uu___1 =
              let uu___2 =
                FStar_Class_Show.show FStar_Syntax_Print.showable_term t1 in
              Prims.strcat "Impossible: " uu___2 in
            FStar_Compiler_Effect.failwith uu___1
        | FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_reify uu___) ->
            FStar_Pervasives_Native.None
        | FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_reflect uu___)
            -> FStar_Pervasives_Native.None
        | FStar_Syntax_Syntax.Tm_name uu___ ->
            let uu___1 = universe_of_aux env t1 in
            FStar_Pervasives_Native.Some uu___1
        | FStar_Syntax_Syntax.Tm_fvar uu___ ->
            let uu___1 = universe_of_aux env t1 in
            FStar_Pervasives_Native.Some uu___1
        | FStar_Syntax_Syntax.Tm_uinst uu___ ->
            let uu___1 = universe_of_aux env t1 in
            FStar_Pervasives_Native.Some uu___1
        | FStar_Syntax_Syntax.Tm_constant uu___ ->
            let uu___1 = universe_of_aux env t1 in
            FStar_Pervasives_Native.Some uu___1
        | FStar_Syntax_Syntax.Tm_type uu___ ->
            let uu___1 = universe_of_aux env t1 in
            FStar_Pervasives_Native.Some uu___1
        | FStar_Syntax_Syntax.Tm_arrow uu___ ->
            let uu___1 = universe_of_aux env t1 in
            FStar_Pervasives_Native.Some uu___1
        | FStar_Syntax_Syntax.Tm_lazy i ->
            let uu___ = FStar_Syntax_Util.unfold_lazy i in
            __typeof_tot_or_gtot_term_fastpath env uu___ must_tot
        | FStar_Syntax_Syntax.Tm_abs
            { FStar_Syntax_Syntax.bs = bs; FStar_Syntax_Syntax.body = body;
              FStar_Syntax_Syntax.rc_opt = FStar_Pervasives_Native.Some
                { FStar_Syntax_Syntax.residual_effect = eff;
                  FStar_Syntax_Syntax.residual_typ = tbody;
                  FStar_Syntax_Syntax.residual_flags = uu___;_};_}
            ->
            let mk_comp =
              let uu___1 =
                FStar_Ident.lid_equals eff FStar_Parser_Const.effect_Tot_lid in
              if uu___1
              then FStar_Pervasives_Native.Some FStar_Syntax_Syntax.mk_Total
              else
                (let uu___3 =
                   FStar_Ident.lid_equals eff
                     FStar_Parser_Const.effect_GTot_lid in
                 if uu___3
                 then
                   FStar_Pervasives_Native.Some FStar_Syntax_Syntax.mk_GTotal
                 else FStar_Pervasives_Native.None) in
            FStar_Compiler_Util.bind_opt mk_comp
              (fun f ->
                 let tbody1 =
                   match tbody with
                   | FStar_Pervasives_Native.Some uu___1 -> tbody
                   | FStar_Pervasives_Native.None ->
                       let uu___1 = FStar_Syntax_Subst.open_term bs body in
                       (match uu___1 with
                        | (bs1, body1) ->
                            let uu___2 =
                              let uu___3 =
                                FStar_TypeChecker_Env.push_binders env bs1 in
                              __typeof_tot_or_gtot_term_fastpath uu___3 body1
                                false in
                            FStar_Compiler_Util.map_opt uu___2
                              (FStar_Syntax_Subst.close bs1)) in
                 FStar_Compiler_Util.bind_opt tbody1
                   (fun tbody2 ->
                      let uu___1 = FStar_Syntax_Subst.open_term bs tbody2 in
                      match uu___1 with
                      | (bs1, tbody3) ->
                          let u =
                            let uu___2 =
                              FStar_TypeChecker_Env.push_binders env bs1 in
                            universe_of uu___2 tbody3 in
                          let uu___2 =
                            let uu___3 = f tbody3 in
                            FStar_Syntax_Util.arrow bs1 uu___3 in
                          FStar_Pervasives_Native.Some uu___2))
        | FStar_Syntax_Syntax.Tm_abs uu___ -> FStar_Pervasives_Native.None
        | FStar_Syntax_Syntax.Tm_refine
            { FStar_Syntax_Syntax.b = x; FStar_Syntax_Syntax.phi = uu___;_}
            ->
            __typeof_tot_or_gtot_term_fastpath env x.FStar_Syntax_Syntax.sort
              must_tot
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_range_of);
                  FStar_Syntax_Syntax.pos = uu___;
                  FStar_Syntax_Syntax.vars = uu___1;
                  FStar_Syntax_Syntax.hash_code = uu___2;_};
              FStar_Syntax_Syntax.args = a::hd::rest;_}
            ->
            let rest1 = hd :: rest in
            let uu___3 = FStar_Syntax_Util.head_and_args t1 in
            (match uu___3 with
             | (unary_op, uu___4) ->
                 let head =
                   let uu___5 =
                     FStar_Compiler_Range_Ops.union_ranges
                       unary_op.FStar_Syntax_Syntax.pos
                       (FStar_Pervasives_Native.fst a).FStar_Syntax_Syntax.pos in
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = unary_op;
                          FStar_Syntax_Syntax.args = [a]
                        }) uu___5 in
                 let t2 =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = head;
                          FStar_Syntax_Syntax.args = rest1
                        }) t1.FStar_Syntax_Syntax.pos in
                 __typeof_tot_or_gtot_term_fastpath env t2 must_tot)
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_set_range_of);
                  FStar_Syntax_Syntax.pos = uu___;
                  FStar_Syntax_Syntax.vars = uu___1;
                  FStar_Syntax_Syntax.hash_code = uu___2;_};
              FStar_Syntax_Syntax.args = a1::a2::hd::rest;_}
            ->
            let rest1 = hd :: rest in
            let uu___3 = FStar_Syntax_Util.head_and_args t1 in
            (match uu___3 with
             | (unary_op, uu___4) ->
                 let head =
                   let uu___5 =
                     FStar_Compiler_Range_Ops.union_ranges
                       unary_op.FStar_Syntax_Syntax.pos
                       (FStar_Pervasives_Native.fst a1).FStar_Syntax_Syntax.pos in
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = unary_op;
                          FStar_Syntax_Syntax.args = [a1; a2]
                        }) uu___5 in
                 let t2 =
                   FStar_Syntax_Syntax.mk
                     (FStar_Syntax_Syntax.Tm_app
                        {
                          FStar_Syntax_Syntax.hd = head;
                          FStar_Syntax_Syntax.args = rest1
                        }) t1.FStar_Syntax_Syntax.pos in
                 __typeof_tot_or_gtot_term_fastpath env t2 must_tot)
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_range_of);
                  FStar_Syntax_Syntax.pos = uu___;
                  FStar_Syntax_Syntax.vars = uu___1;
                  FStar_Syntax_Syntax.hash_code = uu___2;_};
              FStar_Syntax_Syntax.args = uu___3::[];_}
            -> FStar_Pervasives_Native.Some FStar_Syntax_Syntax.t_range
        | FStar_Syntax_Syntax.Tm_app
            {
              FStar_Syntax_Syntax.hd =
                {
                  FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                    (FStar_Const.Const_set_range_of);
                  FStar_Syntax_Syntax.pos = uu___;
                  FStar_Syntax_Syntax.vars = uu___1;
                  FStar_Syntax_Syntax.hash_code = uu___2;_};
              FStar_Syntax_Syntax.args = (t2, uu___3)::uu___4::[];_}
            -> __typeof_tot_or_gtot_term_fastpath env t2 must_tot
        | FStar_Syntax_Syntax.Tm_app
            { FStar_Syntax_Syntax.hd = hd; FStar_Syntax_Syntax.args = args;_}
            ->
            let t_hd = __typeof_tot_or_gtot_term_fastpath env hd must_tot in
            FStar_Compiler_Util.bind_opt t_hd
              (fun t_hd1 ->
                 let uu___ = apply_well_typed env t_hd1 args in
                 FStar_Compiler_Util.bind_opt uu___
                   (fun t2 ->
                      let uu___1 =
                        (effect_ok t2) ||
                          (FStar_Compiler_List.for_all
                             (fun uu___2 ->
                                match uu___2 with
                                | (a, uu___3) ->
                                    let uu___4 =
                                      __typeof_tot_or_gtot_term_fastpath env
                                        a must_tot in
                                    FStar_Compiler_Util.is_some uu___4) args) in
                      if uu___1
                      then FStar_Pervasives_Native.Some t2
                      else FStar_Pervasives_Native.None))
        | FStar_Syntax_Syntax.Tm_ascribed
            { FStar_Syntax_Syntax.tm = t2;
              FStar_Syntax_Syntax.asc =
                (FStar_Pervasives.Inl k, uu___, uu___1);
              FStar_Syntax_Syntax.eff_opt = uu___2;_}
            ->
            let uu___3 = effect_ok k in
            if uu___3
            then FStar_Pervasives_Native.Some k
            else __typeof_tot_or_gtot_term_fastpath env t2 must_tot
        | FStar_Syntax_Syntax.Tm_ascribed
            { FStar_Syntax_Syntax.tm = uu___;
              FStar_Syntax_Syntax.asc =
                (FStar_Pervasives.Inr c, uu___1, uu___2);
              FStar_Syntax_Syntax.eff_opt = uu___3;_}
            ->
            let k = FStar_Syntax_Util.comp_result c in
            let uu___4 =
              ((Prims.op_Negation must_tot) ||
                 (let uu___5 =
                    FStar_TypeChecker_Env.norm_eff_name env
                      (FStar_Syntax_Util.comp_effect_name c) in
                  FStar_Ident.lid_equals FStar_Parser_Const.effect_PURE_lid
                    uu___5))
                || (FStar_TypeChecker_Normalize.non_info_norm env k) in
            if uu___4
            then FStar_Pervasives_Native.Some k
            else FStar_Pervasives_Native.None
        | FStar_Syntax_Syntax.Tm_uvar (u, s) ->
            if Prims.op_Negation must_tot
            then
              let uu___ =
                let uu___1 = FStar_Syntax_Util.ctx_uvar_typ u in
                FStar_Syntax_Subst.subst' s uu___1 in
              FStar_Pervasives_Native.Some uu___
            else FStar_Pervasives_Native.None
        | FStar_Syntax_Syntax.Tm_quoted (tm, qi) ->
            if Prims.op_Negation must_tot
            then FStar_Pervasives_Native.Some FStar_Syntax_Syntax.t_term
            else FStar_Pervasives_Native.None
        | FStar_Syntax_Syntax.Tm_meta
            { FStar_Syntax_Syntax.tm2 = t2;
              FStar_Syntax_Syntax.meta = uu___;_}
            -> __typeof_tot_or_gtot_term_fastpath env t2 must_tot
        | FStar_Syntax_Syntax.Tm_match
            { FStar_Syntax_Syntax.scrutinee = uu___;
              FStar_Syntax_Syntax.ret_opt = uu___1;
              FStar_Syntax_Syntax.brs = uu___2;
              FStar_Syntax_Syntax.rc_opt1 = FStar_Pervasives_Native.Some rc;_}
            -> rc.FStar_Syntax_Syntax.residual_typ
        | FStar_Syntax_Syntax.Tm_let
            { FStar_Syntax_Syntax.lbs = (false, lb::[]);
              FStar_Syntax_Syntax.body1 = body;_}
            ->
            let x = FStar_Compiler_Util.left lb.FStar_Syntax_Syntax.lbname in
            let uu___ =
              let uu___1 =
                let uu___2 = FStar_Syntax_Syntax.mk_binder x in [uu___2] in
              FStar_Syntax_Subst.open_term uu___1 body in
            (match uu___ with
             | (xb, body1) ->
                 let xbinder = FStar_Compiler_List.hd xb in
                 let x1 = xbinder.FStar_Syntax_Syntax.binder_bv in
                 let env_x = FStar_TypeChecker_Env.push_bv env x1 in
                 let t2 =
                   __typeof_tot_or_gtot_term_fastpath env_x body1 must_tot in
                 FStar_Compiler_Util.bind_opt t2
                   (fun t3 ->
                      let t4 = FStar_Syntax_Subst.close xb t3 in
                      FStar_Pervasives_Native.Some t4))
        | FStar_Syntax_Syntax.Tm_match uu___ -> FStar_Pervasives_Native.None
        | FStar_Syntax_Syntax.Tm_let uu___ -> FStar_Pervasives_Native.None
        | FStar_Syntax_Syntax.Tm_unknown ->
            let uu___ =
              let uu___1 =
                let uu___2 = FStar_Syntax_Print.tag_of_term t1 in
                Prims.strcat uu___2 ")" in
              Prims.strcat "Impossible! (" uu___1 in
            FStar_Compiler_Effect.failwith uu___
        | uu___ ->
            let uu___1 =
              let uu___2 =
                let uu___3 = FStar_Syntax_Print.tag_of_term t1 in
                Prims.strcat uu___3 ")" in
              Prims.strcat "Impossible! (" uu___2 in
            FStar_Compiler_Effect.failwith uu___1
let (typeof_tot_or_gtot_term_fastpath :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_TypeChecker_Env.must_tot ->
        FStar_Syntax_Syntax.typ FStar_Pervasives_Native.option)
  =
  fun env ->
    fun t ->
      fun must_tot ->
        FStar_Defensive.def_check_scoped FStar_TypeChecker_Env.hasBinders_env
          FStar_Class_Binders.hasNames_term FStar_Syntax_Print.pretty_term
          t.FStar_Syntax_Syntax.pos "fastpath" env t;
        FStar_Errors.with_ctx "In a call to typeof_tot_or_gtot_term_fastpath"
          (fun uu___1 -> __typeof_tot_or_gtot_term_fastpath env t must_tot)
let rec (effectof_tot_or_gtot_term_fastpath :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_Ident.lident FStar_Pervasives_Native.option)
  =
  fun env ->
    fun t ->
      let uu___ =
        let uu___1 = FStar_Syntax_Subst.compress t in
        uu___1.FStar_Syntax_Syntax.n in
      match uu___ with
      | FStar_Syntax_Syntax.Tm_delayed uu___1 ->
          FStar_Compiler_Effect.failwith "Impossible!"
      | FStar_Syntax_Syntax.Tm_bvar uu___1 ->
          FStar_Compiler_Effect.failwith "Impossible!"
      | FStar_Syntax_Syntax.Tm_name uu___1 ->
          FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
      | FStar_Syntax_Syntax.Tm_lazy uu___1 ->
          FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
      | FStar_Syntax_Syntax.Tm_fvar uu___1 ->
          FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
      | FStar_Syntax_Syntax.Tm_uinst uu___1 ->
          FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
      | FStar_Syntax_Syntax.Tm_constant uu___1 ->
          FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
      | FStar_Syntax_Syntax.Tm_type uu___1 ->
          FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
      | FStar_Syntax_Syntax.Tm_abs uu___1 ->
          FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
      | FStar_Syntax_Syntax.Tm_arrow uu___1 ->
          FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
      | FStar_Syntax_Syntax.Tm_refine uu___1 ->
          FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
      | FStar_Syntax_Syntax.Tm_app
          { FStar_Syntax_Syntax.hd = hd; FStar_Syntax_Syntax.args = args;_}
          ->
          let join_effects eff1 eff2 =
            let uu___1 =
              let uu___2 = FStar_TypeChecker_Env.norm_eff_name env eff1 in
              let uu___3 = FStar_TypeChecker_Env.norm_eff_name env eff2 in
              (uu___2, uu___3) in
            match uu___1 with
            | (eff11, eff21) ->
                let uu___2 =
                  (FStar_Parser_Const.effect_PURE_lid,
                    FStar_Parser_Const.effect_GHOST_lid) in
                (match uu___2 with
                 | (pure, ghost) ->
                     let uu___3 =
                       (FStar_Ident.lid_equals eff11 pure) &&
                         (FStar_Ident.lid_equals eff21 pure) in
                     if uu___3
                     then FStar_Pervasives_Native.Some pure
                     else
                       (let uu___5 =
                          ((FStar_Ident.lid_equals eff11 ghost) ||
                             (FStar_Ident.lid_equals eff11 pure))
                            &&
                            ((FStar_Ident.lid_equals eff21 ghost) ||
                               (FStar_Ident.lid_equals eff21 pure)) in
                        if uu___5
                        then FStar_Pervasives_Native.Some ghost
                        else FStar_Pervasives_Native.None)) in
          let uu___1 = effectof_tot_or_gtot_term_fastpath env hd in
          FStar_Compiler_Util.bind_opt uu___1
            (fun eff_hd ->
               let uu___2 =
                 FStar_Compiler_List.fold_left
                   (fun eff_opt ->
                      fun arg ->
                        FStar_Compiler_Util.bind_opt eff_opt
                          (fun eff ->
                             let uu___3 =
                               effectof_tot_or_gtot_term_fastpath env
                                 (FStar_Pervasives_Native.fst arg) in
                             FStar_Compiler_Util.bind_opt uu___3
                               (join_effects eff)))
                   (FStar_Pervasives_Native.Some eff_hd) args in
               FStar_Compiler_Util.bind_opt uu___2
                 (fun eff_hd_and_args ->
                    let uu___3 = typeof_tot_or_gtot_term_fastpath env hd true in
                    FStar_Compiler_Util.bind_opt uu___3
                      (fun t_hd ->
                         let rec maybe_arrow t1 =
                           let t2 =
                             FStar_TypeChecker_Normalize.unfold_whnf env t1 in
                           match t2.FStar_Syntax_Syntax.n with
                           | FStar_Syntax_Syntax.Tm_arrow uu___4 -> t2
                           | FStar_Syntax_Syntax.Tm_refine
                               { FStar_Syntax_Syntax.b = x;
                                 FStar_Syntax_Syntax.phi = uu___4;_}
                               -> maybe_arrow x.FStar_Syntax_Syntax.sort
                           | FStar_Syntax_Syntax.Tm_ascribed
                               { FStar_Syntax_Syntax.tm = t3;
                                 FStar_Syntax_Syntax.asc = uu___4;
                                 FStar_Syntax_Syntax.eff_opt = uu___5;_}
                               -> maybe_arrow t3
                           | uu___4 -> t2 in
                         let uu___4 =
                           let uu___5 = maybe_arrow t_hd in
                           uu___5.FStar_Syntax_Syntax.n in
                         match uu___4 with
                         | FStar_Syntax_Syntax.Tm_arrow
                             { FStar_Syntax_Syntax.bs1 = bs;
                               FStar_Syntax_Syntax.comp = c;_}
                             ->
                             let eff_app =
                               if
                                 (FStar_Compiler_List.length args) <
                                   (FStar_Compiler_List.length bs)
                               then FStar_Parser_Const.effect_PURE_lid
                               else FStar_Syntax_Util.comp_effect_name c in
                             join_effects eff_hd_and_args eff_app
                         | uu___5 -> FStar_Pervasives_Native.None)))
      | FStar_Syntax_Syntax.Tm_ascribed
          { FStar_Syntax_Syntax.tm = t1;
            FStar_Syntax_Syntax.asc =
              (FStar_Pervasives.Inl uu___1, uu___2, uu___3);
            FStar_Syntax_Syntax.eff_opt = uu___4;_}
          -> effectof_tot_or_gtot_term_fastpath env t1
      | FStar_Syntax_Syntax.Tm_ascribed
          { FStar_Syntax_Syntax.tm = uu___1;
            FStar_Syntax_Syntax.asc =
              (FStar_Pervasives.Inr c, uu___2, uu___3);
            FStar_Syntax_Syntax.eff_opt = uu___4;_}
          ->
          let c_eff =
            FStar_TypeChecker_Env.norm_eff_name env
              (FStar_Syntax_Util.comp_effect_name c) in
          let uu___5 =
            (FStar_Ident.lid_equals c_eff FStar_Parser_Const.effect_PURE_lid)
              ||
              (FStar_Ident.lid_equals c_eff
                 FStar_Parser_Const.effect_GHOST_lid) in
          if uu___5
          then FStar_Pervasives_Native.Some c_eff
          else FStar_Pervasives_Native.None
      | FStar_Syntax_Syntax.Tm_uvar uu___1 -> FStar_Pervasives_Native.None
      | FStar_Syntax_Syntax.Tm_quoted uu___1 -> FStar_Pervasives_Native.None
      | FStar_Syntax_Syntax.Tm_meta
          { FStar_Syntax_Syntax.tm2 = t1;
            FStar_Syntax_Syntax.meta = uu___1;_}
          -> effectof_tot_or_gtot_term_fastpath env t1
      | FStar_Syntax_Syntax.Tm_match uu___1 -> FStar_Pervasives_Native.None
      | FStar_Syntax_Syntax.Tm_let uu___1 -> FStar_Pervasives_Native.None
      | FStar_Syntax_Syntax.Tm_unknown -> FStar_Pervasives_Native.None
      | FStar_Syntax_Syntax.Tm_uinst uu___1 -> FStar_Pervasives_Native.None
      | uu___1 -> FStar_Pervasives_Native.None