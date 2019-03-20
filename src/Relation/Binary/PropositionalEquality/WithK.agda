------------------------------------------------------------------------
-- The Agda standard library
--
-- Some code related to propositional equality that relies on the K
-- rule
------------------------------------------------------------------------

{-# OPTIONS --with-K --safe #-}

module Relation.Binary.PropositionalEquality.WithK where

open import Axiom.UIP.WithK
open import Relation.Binary
open import Relation.Binary.PropositionalEquality.Core

------------------------------------------------------------------------
-- Proof irrelevance

≡-irrelevant : ∀ {a} {A : Set a} → Irrelevant {A = A} _≡_
≡-irrelevant = uip

------------------------------------------------------------------------
-- DEPRECATED NAMES
------------------------------------------------------------------------
-- Please use the new names as continuing support for the old names is
-- not guaranteed.

-- Version 1.0

≡-irrelevance = ≡-irrelevant
{-# WARNING_ON_USAGE ≡-irrelevance
"Warning: ≡-irrelevance was deprecated in v1.0.
Please use ≡-irrelevant instead."
#-}
