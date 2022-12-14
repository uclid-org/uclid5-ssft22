(set-logic ALL)


(declare-oracle-fun oracle_isStable is_stable ((_ FloatingPoint 8 24) (_ FloatingPoint 8 24) (_ FloatingPoint 8 24) (_ FloatingPoint 8 24)) Bool)

(declare-var const_b0  (_ FloatingPoint 8 24) )
(declare-var const_b1  (_ FloatingPoint 8 24) )
(declare-var const_a00  (_ FloatingPoint 8 24) )
(synth-fun synth_k0 () (_ FloatingPoint 8 24) )
(declare-var const_a01  (_ FloatingPoint 8 24) )
(synth-fun synth_k1 () (_ FloatingPoint 8 24) )
(declare-var const_a10  (_ FloatingPoint 8 24) )
(declare-var const_a11  (_ FloatingPoint 8 24) )
(declare-var initial_2_x0  (_ FloatingPoint 8 24) )
(declare-var initial_3_x1  (_ FloatingPoint 8 24) )
(declare-var state_1_x0  (_ FloatingPoint 8 24) )
(declare-var state_1_x1  (_ FloatingPoint 8 24) )
(declare-var state_2_x0  (_ FloatingPoint 8 24) )
(declare-var state_2_x1  (_ FloatingPoint 8 24) )
(declare-var state_3_x0  (_ FloatingPoint 8 24) )
(declare-var state_3_x1  (_ FloatingPoint 8 24) )
(constraint (not (or (and  (not (and true (and (and true (and (fp.lt state_3_x0 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_3_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))) (and (fp.lt state_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))))) (= state_3_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) state_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) state_2_x1))) (= state_3_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) state_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) state_2_x1))) (= state_2_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) state_1_x1))) (= state_2_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) state_1_x1))) (= state_1_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) initial_3_x1))) (= state_1_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) initial_3_x1))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (and true (and (and true (and (fp.lt state_3_x0 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_3_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))) (and (fp.lt state_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))))) (= state_3_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) state_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) state_2_x1))) (= state_3_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) state_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) state_2_x1))) (= state_2_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) state_1_x1))) (= state_2_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) state_1_x1))) (= state_1_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) initial_3_x1))) (= state_1_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) initial_3_x1))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (oracle_isStable (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (= state_3_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) state_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) state_2_x1))) (= state_3_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) state_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) state_2_x1))) (= state_2_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) state_1_x1))) (= state_2_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) state_1_x1))) (= state_1_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) initial_3_x1))) (= state_1_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) initial_3_x1))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (and true (and (and true (and (fp.lt state_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))) (and (fp.lt state_2_x1 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_2_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))))) (= state_2_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) state_1_x1))) (= state_2_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) state_1_x1))) (= state_1_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) initial_3_x1))) (= state_1_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) initial_3_x1))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (and true (and (and true (and (fp.lt state_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))) (and (fp.lt state_2_x1 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_2_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))))) (= state_2_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) state_1_x1))) (= state_2_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) state_1_x1))) (= state_1_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) initial_3_x1))) (= state_1_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) initial_3_x1))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (oracle_isStable (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (= state_2_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) state_1_x1))) (= state_2_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) state_1_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) state_1_x1))) (= state_1_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) initial_3_x1))) (= state_1_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) initial_3_x1))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (and true (and (and true (and (fp.lt state_1_x0 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_1_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))) (and (fp.lt state_1_x1 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_1_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))))) (= state_1_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) initial_3_x1))) (= state_1_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) initial_3_x1))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (and true (and (and true (and (fp.lt state_1_x0 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_1_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))) (and (fp.lt state_1_x1 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt state_1_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))))) (= state_1_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) initial_3_x1))) (= state_1_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) initial_3_x1))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (oracle_isStable (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (= state_1_x1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)) initial_3_x1))) (= state_1_x0 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) initial_2_x0) (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) initial_3_x1))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 1.0)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 1.0))))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) )	
(and  (not (oracle_isStable (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)) (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)) (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)) (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a11 (fp.mul roundNearestTiesToEven const_b1 synth_k1)))) (and true (and (and true (and (fp.lt initial_2_x0 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_2_x0 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1))))) (and (fp.lt initial_3_x1 ((_ to_fp 8 24) roundNearestTiesToEven 0.1)) (fp.gt initial_3_x1 (fp.neg ((_ to_fp 8 24) roundNearestTiesToEven 0.1)))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a10 (fp.mul roundNearestTiesToEven const_b1 synth_k0)))) (and (= const_a00 ((_ to_fp 8 24) roundNearestTiesToEven 0.901224922471)) (and (= const_a01 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000013429)) (and (= const_a10 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000007451)) (= const_a11 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a01 (fp.mul roundNearestTiesToEven const_b0 synth_k1)))) (not (fp.isNaN (fp.sub roundNearestTiesToEven const_a00 (fp.mul roundNearestTiesToEven const_b0 synth_k0)))) (and (= const_b0 ((_ to_fp 8 24) roundNearestTiesToEven 128.000000000000)) (= const_b1 ((_ to_fp 8 24) roundNearestTiesToEven 0.000000000000))) ))))
(check-synth)
