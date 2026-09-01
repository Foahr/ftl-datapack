execute at @e[type=marker, tag=child, scores={isBreach=20}] run place template ftl:groundbreach ~-3 ~-1 ~-3
execute at @e[type=marker, tag=child, scores={isBreach=0}] run place template ftl:floor ~-3 ~-1 ~-3
# spawn breach ground at all markers (with isunit) with isBreach=20
# spawn fixed ground at all markers (with isunit) with isBreach=0