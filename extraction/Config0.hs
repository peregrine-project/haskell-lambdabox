module Config0 where

import qualified Prelude
import qualified Datatypes
import qualified Kernames
import qualified Bytestring

data Coq_remapped_inductive =
   Coq_build_remapped_inductive Bytestring.String__Coq_t (([])
                                                         Bytestring.String__Coq_t) 
 (Prelude.Maybe Bytestring.String__Coq_t)

re_ind_name :: Coq_remapped_inductive -> Bytestring.String__Coq_t
re_ind_name r =
  case r of {
   Coq_build_remapped_inductive re_ind_name0 _ _ -> re_ind_name0}

re_ind_ctors :: Coq_remapped_inductive -> ([]) Bytestring.String__Coq_t
re_ind_ctors r =
  case r of {
   Coq_build_remapped_inductive _ re_ind_ctors0 _ -> re_ind_ctors0}

re_ind_match :: Coq_remapped_inductive -> Prelude.Maybe
                Bytestring.String__Coq_t
re_ind_match r =
  case r of {
   Coq_build_remapped_inductive _ _ re_ind_match0 -> re_ind_match0}

type Coq_external_remapping = Prelude.Maybe Bytestring.String__Coq_t

type Coq_arity = Prelude.Maybe Datatypes.Coq_nat

data Coq_remapping =
   RemapInductive Kernames.Coq_inductive Coq_external_remapping Coq_remapped_inductive
 | RemapConstant Kernames.Coq_kername Coq_external_remapping Coq_arity 
 Prelude.Bool Bytestring.String__Coq_t
 | RemapInlineConstant Kernames.Coq_kername Coq_external_remapping Coq_arity 
 Prelude.Bool Bytestring.String__Coq_t

type Coq_custom_attribute = (,) Kernames.Coq_kername Bytestring.String__Coq_t

type Coq_inlinings = ([]) Kernames.Coq_kername

type Coq_remappings = ([]) Coq_remapping

type Coq_custom_attributes = ([]) Coq_custom_attribute

data Coq_erasure_phases =
   Build_erasure_phases Prelude.Bool Prelude.Bool Prelude.Bool Prelude.Bool 
 Prelude.Bool

implement_box :: Coq_erasure_phases -> Prelude.Bool
implement_box e =
  case e of {
   Build_erasure_phases implement_box0 _ _ _ _ -> implement_box0}

implement_lazy :: Coq_erasure_phases -> Prelude.Bool
implement_lazy e =
  case e of {
   Build_erasure_phases _ implement_lazy0 _ _ _ -> implement_lazy0}

cofix_to_laxy :: Coq_erasure_phases -> Prelude.Bool
cofix_to_laxy e =
  case e of {
   Build_erasure_phases _ _ cofix_to_laxy0 _ _ -> cofix_to_laxy0}

betared :: Coq_erasure_phases -> Prelude.Bool
betared e =
  case e of {
   Build_erasure_phases _ _ _ betared0 _ -> betared0}

unboxing :: Coq_erasure_phases -> Prelude.Bool
unboxing e =
  case e of {
   Build_erasure_phases _ _ _ _ unboxing0 -> unboxing0}

