(*
   Copyright 2023 Microsoft Research

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   Authors: G. Martinez, N. Swamy
*)

module FStar.Sealed.Inhabited

(* This module provides an instance of FStar.Sealed.sealed
   specialized for inhabited types.

   The main type `sealed w` is the singleton type of a sealed values
   that is provably equal to `seal w`.
*)
let sealed (#[@@@strictly_positive] a:Type u#a)
            (witness:a)
  : Type u#0
  = FStar.Sealed.sealed a

(* A trivial predicate, just for writing an SMT pattern on sealed_singleton *)
let is_sealed (#a:Type u#a)
              (#witness:a)
              (x:sealed witness)
  : prop
  = True

(* Sealing a value `x:a` at the type `sealed w` *)
let seal (#a:Type u#a) (#w:a) (x:a)
  : s:sealed w { is_sealed s }
  = FStar.Sealed.seal x

(* A lemma with an SMT pattern for automatically proving that a 
   `seal x == seal w`*)
let sealed_singleton (a:Type u#a) (w:a) (x:a)
  : Lemma (seal #a #w x == seal #a #w w)
          [SMTPat (seal #a #w x)]
  = FStar.Sealed.sealed_singl (seal #a #w x) (seal #a #w w)
