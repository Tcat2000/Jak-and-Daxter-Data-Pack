$data modify storage math:temp_data lerp4.xa set value $(x1)
$data modify storage math:temp_data lerp4.ya set value $(y1)
$data modify storage math:temp_data lerp4.za set value $(z1)

$data modify storage math:temp_data lerp4.xb set value $(x2)
$data modify storage math:temp_data lerp4.yb set value $(y2)
$data modify storage math:temp_data lerp4.zb set value $(z2)

$data modify storage math:temp_data lerp4.xc set value $(x3)
$data modify storage math:temp_data lerp4.yc set value $(y3)
$data modify storage math:temp_data lerp4.zc set value $(z3)

$data modify storage math:temp_data lerp4.xd set value $(x4)
$data modify storage math:temp_data lerp4.yd set value $(y3)
$data modify storage math:temp_data lerp4.zd set value $(z4)

$data modify storage math:temp_data lerp4.per set value $(per)
data modify storage math:temp_data lerp4.output set value "math:temp_data"

data modify storage math:temp_data lerp4.x1 set from storage math:temp_data lerp4.xa
data modify storage math:temp_data lerp4.y1 set from storage math:temp_data lerp4.ya
data modify storage math:temp_data lerp4.z1 set from storage math:temp_data lerp4.za
data modify storage math:temp_data lerp4.x2 set from storage math:temp_data lerp4.xb
data modify storage math:temp_data lerp4.y2 set from storage math:temp_data lerp4.yb
data modify storage math:temp_data lerp4.z2 set from storage math:temp_data lerp4.zb
data modify storage math:temp_data lerp4.id set value e
function math:lerp with storage math:temp_data lerp4

data modify storage math:temp_data lerp4.x1 set from storage math:temp_data lerp4.xb
data modify storage math:temp_data lerp4.y1 set from storage math:temp_data lerp4.yb
data modify storage math:temp_data lerp4.z1 set from storage math:temp_data lerp4.zb
data modify storage math:temp_data lerp4.x2 set from storage math:temp_data lerp4.xc
data modify storage math:temp_data lerp4.y2 set from storage math:temp_data lerp4.yc
data modify storage math:temp_data lerp4.z2 set from storage math:temp_data lerp4.zc
data modify storage math:temp_data lerp4.id set value f
function math:lerp with storage math:temp_data lerp4

data modify storage math:temp_data lerp4.x1 set from storage math:temp_data lerp4.xc
data modify storage math:temp_data lerp4.y1 set from storage math:temp_data lerp4.yc
data modify storage math:temp_data lerp4.z1 set from storage math:temp_data lerp4.zc
data modify storage math:temp_data lerp4.x2 set from storage math:temp_data lerp4.xd
data modify storage math:temp_data lerp4.y2 set from storage math:temp_data lerp4.yd
data modify storage math:temp_data lerp4.z2 set from storage math:temp_data lerp4.zd
data modify storage math:temp_data lerp4.id set value g
function math:lerp with storage math:temp_data lerp4

data modify storage math:temp_data lerp4.x1 set from storage math:temp_data lerp4.xe
data modify storage math:temp_data lerp4.y1 set from storage math:temp_data lerp4.ye
data modify storage math:temp_data lerp4.z1 set from storage math:temp_data lerp4.ze
data modify storage math:temp_data lerp4.x2 set from storage math:temp_data lerp4.xf
data modify storage math:temp_data lerp4.y2 set from storage math:temp_data lerp4.yf
data modify storage math:temp_data lerp4.z2 set from storage math:temp_data lerp4.zf
data modify storage math:temp_data lerp4.id set value h
function math:lerp with storage math:temp_data lerp4

data modify storage math:temp_data lerp4.x1 set from storage math:temp_data lerp4.xf
data modify storage math:temp_data lerp4.y1 set from storage math:temp_data lerp4.yf
data modify storage math:temp_data lerp4.z1 set from storage math:temp_data lerp4.zf
data modify storage math:temp_data lerp4.x2 set from storage math:temp_data lerp4.xg
data modify storage math:temp_data lerp4.y2 set from storage math:temp_data lerp4.yg
data modify storage math:temp_data lerp4.z2 set from storage math:temp_data lerp4.zg
data modify storage math:temp_data lerp4.id set value i
function math:lerp with storage math:temp_data lerp4

data modify storage math:temp_data lerp4.x1 set from storage math:temp_data lerp4.xh
data modify storage math:temp_data lerp4.y1 set from storage math:temp_data lerp4.yh
data modify storage math:temp_data lerp4.z1 set from storage math:temp_data lerp4.zh
data modify storage math:temp_data lerp4.x2 set from storage math:temp_data lerp4.xi
data modify storage math:temp_data lerp4.y2 set from storage math:temp_data lerp4.yi
data modify storage math:temp_data lerp4.z2 set from storage math:temp_data lerp4.zi
data modify storage math:temp_data lerp4.output set value "$(output)"
data modify storage math:temp_data lerp4.path set value "$(path)"
$data modify storage math:temp_data lerp4.id set value "$(id)"
function math:lerp with storage math:temp_data lerp4
