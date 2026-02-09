module Config0 where

import qualified Prelude
import qualified Datatypes
import qualified EProgram
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

data Coq_attributes_config =
   Build_attributes_config Coq_inlinings Coq_remappings EProgram.Coq_inductives_mapping 
 Coq_custom_attributes

inlinings_opt :: Coq_attributes_config -> Coq_inlinings
inlinings_opt a =
  case a of {
   Build_attributes_config inlinings_opt0 _ _ _ -> inlinings_opt0}

remappings_opt :: Coq_attributes_config -> Coq_remappings
remappings_opt a =
  case a of {
   Build_attributes_config _ remappings_opt0 _ _ -> remappings_opt0}

cstr_reorders_opt :: Coq_attributes_config -> EProgram.Coq_inductives_mapping
cstr_reorders_opt a =
  case a of {
   Build_attributes_config _ _ cstr_reorders_opt0 _ -> cstr_reorders_opt0}

custom_attributes_opt :: Coq_attributes_config -> Coq_custom_attributes
custom_attributes_opt a =
  case a of {
   Build_attributes_config _ _ _ custom_attributes_opt0 ->
    custom_attributes_opt0}

