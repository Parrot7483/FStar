module FStar.Class.Ord

open FStar.Compiler.Effect
open FStar.Compiler.Order
include FStar.Class.Deq
open FStar.Class.Deq

class ord (a:Type) = {
  super : deq a;
  cmp : a -> a -> order;
}

instance val ord_eq (a:Type) (d : ord a) : Tot (deq a)

val (<?)  : #a:Type -> {| ord a |} -> a -> a -> bool
val (<=?) : #a:Type -> {| ord a |} -> a -> a -> bool
val (>?)  : #a:Type -> {| ord a |} -> a -> a -> bool
val (>=?) : #a:Type -> {| ord a |} -> a -> a -> bool

instance val ord_int    : ord int
instance val ord_bool   : ord bool
instance val ord_unit   : ord unit
instance val ord_string : ord string

instance val ord_option
   (_ : ord 'a)
: Tot (ord (option 'a))

instance val ord_list
   (_ : ord 'a)
: Tot (ord (list 'a))

instance val ord_either
   (_ : ord 'a)
   (_ : ord 'b)
: Tot (ord (either 'a 'b))

instance val ord_tuple2
   (_ : ord 'a)
   (_ : ord 'b)
: Tot (ord ('a & 'b))

instance val ord_tuple3
   (_ : ord 'a)
   (_ : ord 'b)
   (_ : ord 'c)
: Tot (ord ('a & 'b & 'c))

instance val ord_tuple4
   (_ : ord 'a)
   (_ : ord 'b)
   (_ : ord 'c)
   (_ : ord 'd)
: Tot (ord ('a & 'b & 'c & 'd))

instance val ord_tuple5
   (_ : ord 'a)
   (_ : ord 'b)
   (_ : ord 'c)
   (_ : ord 'd)
   (_ : ord 'e)
: Tot (ord ('a & 'b & 'c & 'd & 'e))

instance val ord_tuple6
   (_ : ord 'a)
   (_ : ord 'b)
   (_ : ord 'c)
   (_ : ord 'd)
   (_ : ord 'e)
   (_ : ord 'f)
: Tot (ord ('a & 'b & 'c & 'd & 'e & 'f))

