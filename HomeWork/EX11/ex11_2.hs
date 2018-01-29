-- If id is the polymorphic identify function, defined by id x = x , explain the behavior of the expressions
-- (id.f) (f.id) (id f)
-- If f is of type Int -> Bool, at what instance of its most general type a -> a is id used in each case? What type does f have if (f id) is properly typed ?

(id.f) apply id after applied f
(f.id) apply f after applied id
(id f) apply id after applied f

Most general type a -> a is id used in (id.f) (id f).

f :: Bool -> a
