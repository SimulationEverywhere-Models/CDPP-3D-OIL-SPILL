[top]
components : OilSpread

[OilSpread]
type : cell
dim : (100,100)
delay : transport
defaultDelayTime : 10
border : nowrapped

neighbors : OilSpread(-1,-1) OilSpread(-1,0) OilSpread(-1,1)
neighbors : OilSpread(0,-1) OilSpread(0,0) OilSpread(0,1)
neighbors : OilSpread(1,-1) OilSpread(1,0) OilSpread(1,1)
initialvalue : 0
initialCellsValue : OilSpill2Dcase1.val
localtransition : behavior

[behavior]
rule : {(0,0) + 0.098 * ((-1,0) - (0,0)) + 0.098 * ((1,0) - (0,0)) + 0.0176 * ((-1,1) - (0,0)) + 0.098 * ((0,1) - (0,0)) + 0.0176 * ((1,1) - (0,0)) + 0.0176 * ((-1,-1) - (0,0)) + 0.098 * ((0,-1) - (0,0)) + 0.0176 * ((1,-1) - (0,0))} 100 {(-1,0) > 0 or (1,0) > 0 or (-1,1) > 0 or (0,1) > 0 or (1,1) > 0 or (-1,-1) > 0 or (0,-1) > 0 or (1,-1) > 0}

rule : {(0,0)} 10 { t }