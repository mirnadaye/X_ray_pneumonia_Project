─п
▀╡
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
╛
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.1-0-g85c8b2a817f8Ст

Е
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:З*!
shared_nameconv2d_23/kernel
~
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*'
_output_shapes
:З*
dtype0
u
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:З*
shared_nameconv2d_23/bias
n
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes	
:З*
dtype0
Е
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:З<*!
shared_nameconv2d_24/kernel
~
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*'
_output_shapes
:З<*
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
:<*
dtype0
Д
conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:<#*!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:<#*
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:#*
dtype0
|
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ь	А* 
shared_namedense_23/kernel
u
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel* 
_output_shapes
:
ь	А*
dtype0
s
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_23/bias
l
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes	
:А*
dtype0
{
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А* 
shared_namedense_24/kernel
t
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes
:	А*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
У
Adam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:З*(
shared_nameAdam/conv2d_23/kernel/m
М
+Adam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/m*'
_output_shapes
:З*
dtype0
Г
Adam/conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:З*&
shared_nameAdam/conv2d_23/bias/m
|
)Adam/conv2d_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/m*
_output_shapes	
:З*
dtype0
У
Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:З<*(
shared_nameAdam/conv2d_24/kernel/m
М
+Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/m*'
_output_shapes
:З<*
dtype0
В
Adam/conv2d_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/conv2d_24/bias/m
{
)Adam/conv2d_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/m*
_output_shapes
:<*
dtype0
Т
Adam/conv2d_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<#*(
shared_nameAdam/conv2d_25/kernel/m
Л
+Adam/conv2d_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/m*&
_output_shapes
:<#*
dtype0
В
Adam/conv2d_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*&
shared_nameAdam/conv2d_25/bias/m
{
)Adam/conv2d_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/m*
_output_shapes
:#*
dtype0
К
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ь	А*'
shared_nameAdam/dense_23/kernel/m
Г
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m* 
_output_shapes
:
ь	А*
dtype0
Б
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_23/bias/m
z
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes	
:А*
dtype0
Й
Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_24/kernel/m
В
*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m*
_output_shapes
:	А*
dtype0
А
Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_24/bias/m
y
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes
:*
dtype0
У
Adam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:З*(
shared_nameAdam/conv2d_23/kernel/v
М
+Adam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/v*'
_output_shapes
:З*
dtype0
Г
Adam/conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:З*&
shared_nameAdam/conv2d_23/bias/v
|
)Adam/conv2d_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/v*
_output_shapes	
:З*
dtype0
У
Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:З<*(
shared_nameAdam/conv2d_24/kernel/v
М
+Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/v*'
_output_shapes
:З<*
dtype0
В
Adam/conv2d_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/conv2d_24/bias/v
{
)Adam/conv2d_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/v*
_output_shapes
:<*
dtype0
Т
Adam/conv2d_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<#*(
shared_nameAdam/conv2d_25/kernel/v
Л
+Adam/conv2d_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/v*&
_output_shapes
:<#*
dtype0
В
Adam/conv2d_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*&
shared_nameAdam/conv2d_25/bias/v
{
)Adam/conv2d_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/v*
_output_shapes
:#*
dtype0
К
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ь	А*'
shared_nameAdam/dense_23/kernel/v
Г
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v* 
_output_shapes
:
ь	А*
dtype0
Б
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_23/bias/v
z
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes	
:А*
dtype0
Й
Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_24/kernel/v
В
*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v*
_output_shapes
:	А*
dtype0
А
Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_24/bias/v
y
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ж@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*с?
value╫?B╘? B═?
ш
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
 regularization_losses
!trainable_variables
"	variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
R
*regularization_losses
+trainable_variables
,	variables
-	keras_api
R
.regularization_losses
/trainable_variables
0	variables
1	keras_api
h

2kernel
3bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
h

8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
И
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemАmБmВmГ$mД%mЕ2mЖ3mЗ8mИ9mЙvКvЛvМvН$vО%vП2vР3vС8vТ9vУ
 
F
0
1
2
3
$4
%5
26
37
88
99
F
0
1
2
3
$4
%5
26
37
88
99
н
regularization_losses
Clayer_regularization_losses
trainable_variables
Dmetrics
Elayer_metrics
	variables

Flayers
Gnon_trainable_variables
 
\Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н
regularization_losses
Hlayer_regularization_losses
trainable_variables
Imetrics
Jlayer_metrics
	variables

Klayers
Lnon_trainable_variables
 
 
 
н
regularization_losses
Mlayer_regularization_losses
trainable_variables
Nmetrics
Olayer_metrics
	variables

Players
Qnon_trainable_variables
\Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н
regularization_losses
Rlayer_regularization_losses
trainable_variables
Smetrics
Tlayer_metrics
	variables

Ulayers
Vnon_trainable_variables
 
 
 
н
 regularization_losses
Wlayer_regularization_losses
!trainable_variables
Xmetrics
Ylayer_metrics
"	variables

Zlayers
[non_trainable_variables
\Z
VARIABLE_VALUEconv2d_25/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_25/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
н
&regularization_losses
\layer_regularization_losses
'trainable_variables
]metrics
^layer_metrics
(	variables

_layers
`non_trainable_variables
 
 
 
н
*regularization_losses
alayer_regularization_losses
+trainable_variables
bmetrics
clayer_metrics
,	variables

dlayers
enon_trainable_variables
 
 
 
н
.regularization_losses
flayer_regularization_losses
/trainable_variables
gmetrics
hlayer_metrics
0	variables

ilayers
jnon_trainable_variables
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

20
31
н
4regularization_losses
klayer_regularization_losses
5trainable_variables
lmetrics
mlayer_metrics
6	variables

nlayers
onon_trainable_variables
[Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_24/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
н
:regularization_losses
player_regularization_losses
;trainable_variables
qmetrics
rlayer_metrics
<	variables

slayers
tnon_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

u0
v1
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	wtotal
	xcount
y	variables
z	keras_api
D
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

w0
x1

y	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

{0
|1

~	variables
}
VARIABLE_VALUEAdam/conv2d_23/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_23/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_24/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_24/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_25/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_25/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_24/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_24/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_23/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_23/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_24/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_24/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_25/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_25/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_24/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_24/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ц
serving_default_conv2d_23_inputPlaceholder*1
_output_shapes
:         ЦЦ*
dtype0*&
shape:         ЦЦ
Ў
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_23_inputconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasconv2d_25/kernelconv2d_25/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_66226
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
│
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_23/kernel/m/Read/ReadVariableOp)Adam/conv2d_23/bias/m/Read/ReadVariableOp+Adam/conv2d_24/kernel/m/Read/ReadVariableOp)Adam/conv2d_24/bias/m/Read/ReadVariableOp+Adam/conv2d_25/kernel/m/Read/ReadVariableOp)Adam/conv2d_25/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp+Adam/conv2d_23/kernel/v/Read/ReadVariableOp)Adam/conv2d_23/bias/v/Read/ReadVariableOp+Adam/conv2d_24/kernel/v/Read/ReadVariableOp)Adam/conv2d_24/bias/v/Read/ReadVariableOp+Adam/conv2d_25/kernel/v/Read/ReadVariableOp)Adam/conv2d_25/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_66755
в
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasconv2d_25/kernelconv2d_25/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_23/kernel/mAdam/conv2d_23/bias/mAdam/conv2d_24/kernel/mAdam/conv2d_24/bias/mAdam/conv2d_25/kernel/mAdam/conv2d_25/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/dense_24/kernel/mAdam/dense_24/bias/mAdam/conv2d_23/kernel/vAdam/conv2d_23/bias/vAdam/conv2d_24/kernel/vAdam/conv2d_24/bias/vAdam/conv2d_25/kernel/vAdam/conv2d_25/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/vAdam/dense_24/kernel/vAdam/dense_24/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_66882╫╣	
з
E
)__inference_flatten_7_layer_call_fn_66519

inputs
identity╞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ь	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_658522
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ь	2

Identity"
identityIdentity:output:0*.
_input_shapes
:         #:W S
/
_output_shapes
:         #
 
_user_specified_nameinputs
╝
`
D__inference_flatten_7_layer_call_and_return_conditional_losses_66514

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ь  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ь	2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ь	2

Identity"
identityIdentity:output:0*.
_input_shapes
:         #:W S
/
_output_shapes
:         #
 
_user_specified_nameinputs
■
Т
D__inference_conv2d_24_layer_call_and_return_conditional_losses_66467

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв2conv2d_24/kernel/Regularizer/Square/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:З<*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ,,<2
Relu╨
2conv2d_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:З<*
dtype024
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_24/kernel/Regularizer/SquareSquare:conv2d_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З<2%
#conv2d_24/kernel/Regularizer/Squareб
"conv2d_24/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_24/kernel/Regularizer/Const┬
 conv2d_24/kernel/Regularizer/SumSum'conv2d_24/kernel/Regularizer/Square:y:0+conv2d_24/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/SumН
"conv2d_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_24/kernel/Regularizer/mul/x─
 conv2d_24/kernel/Regularizer/mulMul+conv2d_24/kernel/Regularizer/mul/x:output:0)conv2d_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/mul╘
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_24/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:         ,,<2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         00З::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2conv2d_24/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:         00З
 
_user_specified_nameinputs
·
∙
,__inference_sequential_7_layer_call_fn_66387

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_660622
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЦЦ
 
_user_specified_nameinputs
Й
~
)__inference_conv2d_23_layer_call_fn_66444

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         РРЗ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_657612
StatefulPartitionedCallЩ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:         РРЗ2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЦЦ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЦЦ
 
_user_specified_nameinputs
ў
Р
C__inference_dense_23_layer_call_and_return_conditional_losses_65877

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв1dense_23/kernel/Regularizer/Square/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
Relu╟
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp╕
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ь	А2$
"dense_23/kernel/Regularizer/SquareЧ
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const╛
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/SumЛ
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!dense_23/kernel/Regularizer/mul/x└
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul╠
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ь	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:         ь	
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_65734

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
 
~
)__inference_conv2d_25_layer_call_fn_66508

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         #*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_658292
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         #2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         <::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
пQ
┬
G__inference_sequential_7_layer_call_and_return_conditional_losses_66002
conv2d_23_input
conv2d_23_65948
conv2d_23_65950
conv2d_24_65954
conv2d_24_65956
conv2d_25_65960
conv2d_25_65962
dense_23_65967
dense_23_65969
dense_24_65972
dense_24_65974
identityИв!conv2d_23/StatefulPartitionedCallв2conv2d_23/kernel/Regularizer/Square/ReadVariableOpв!conv2d_24/StatefulPartitionedCallв2conv2d_24/kernel/Regularizer/Square/ReadVariableOpв!conv2d_25/StatefulPartitionedCallв2conv2d_25/kernel/Regularizer/Square/ReadVariableOpв dense_23/StatefulPartitionedCallв1dense_23/kernel/Regularizer/Square/ReadVariableOpв dense_24/StatefulPartitionedCallн
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCallconv2d_23_inputconv2d_23_65948conv2d_23_65950*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         РРЗ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_657612#
!conv2d_23/StatefulPartitionedCallЫ
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_657102"
 max_pooling2d_23/PartitionedCall─
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_24_65954conv2d_24_65956*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_657952#
!conv2d_24/StatefulPartitionedCallЪ
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_657222"
 max_pooling2d_24/PartitionedCall─
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_65960conv2d_25_65962*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         #*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_658292#
!conv2d_25/StatefulPartitionedCallЪ
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         #* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_657342"
 max_pooling2d_25/PartitionedCall¤
flatten_7/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ь	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_658522
flatten_7/PartitionedCall▒
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_23_65967dense_23_65969*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_658772"
 dense_23/StatefulPartitionedCall╖
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_65972dense_24_65974*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_659042"
 dense_24/StatefulPartitionedCall┴
2conv2d_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_23_65948*'
_output_shapes
:З*
dtype024
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_23/kernel/Regularizer/SquareSquare:conv2d_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З2%
#conv2d_23/kernel/Regularizer/Squareб
"conv2d_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_23/kernel/Regularizer/Const┬
 conv2d_23/kernel/Regularizer/SumSum'conv2d_23/kernel/Regularizer/Square:y:0+conv2d_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/SumН
"conv2d_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_23/kernel/Regularizer/mul/x─
 conv2d_23/kernel/Regularizer/mulMul+conv2d_23/kernel/Regularizer/mul/x:output:0)conv2d_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/mul┴
2conv2d_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_24_65954*'
_output_shapes
:З<*
dtype024
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_24/kernel/Regularizer/SquareSquare:conv2d_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З<2%
#conv2d_24/kernel/Regularizer/Squareб
"conv2d_24/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_24/kernel/Regularizer/Const┬
 conv2d_24/kernel/Regularizer/SumSum'conv2d_24/kernel/Regularizer/Square:y:0+conv2d_24/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/SumН
"conv2d_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_24/kernel/Regularizer/mul/x─
 conv2d_24/kernel/Regularizer/mulMul+conv2d_24/kernel/Regularizer/mul/x:output:0)conv2d_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/mul└
2conv2d_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_25_65960*&
_output_shapes
:<#*
dtype024
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp┴
#conv2d_25/kernel/Regularizer/SquareSquare:conv2d_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<#2%
#conv2d_25/kernel/Regularizer/Squareб
"conv2d_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_25/kernel/Regularizer/Const┬
 conv2d_25/kernel/Regularizer/SumSum'conv2d_25/kernel/Regularizer/Square:y:0+conv2d_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/SumН
"conv2d_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_25/kernel/Regularizer/mul/x─
 conv2d_25/kernel/Regularizer/mulMul+conv2d_25/kernel/Regularizer/mul/x:output:0)conv2d_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/mul╖
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_23_65967* 
_output_shapes
:
ь	А*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp╕
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ь	А2$
"dense_23/kernel/Regularizer/SquareЧ
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const╛
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/SumЛ
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!dense_23/kernel/Regularizer/mul/x└
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mulВ
IdentityIdentity)dense_24/StatefulPartitionedCall:output:0"^conv2d_23/StatefulPartitionedCall3^conv2d_23/kernel/Regularizer/Square/ReadVariableOp"^conv2d_24/StatefulPartitionedCall3^conv2d_24/kernel/Regularizer/Square/ReadVariableOp"^conv2d_25/StatefulPartitionedCall3^conv2d_25/kernel/Regularizer/Square/ReadVariableOp!^dense_23/StatefulPartitionedCall2^dense_23/kernel/Regularizer/Square/ReadVariableOp!^dense_24/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2h
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2h
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2h
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:b ^
1
_output_shapes
:         ЦЦ
)
_user_specified_nameconv2d_23_input
Зc
█
G__inference_sequential_7_layer_call_and_return_conditional_losses_66294

inputs,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource,
(conv2d_24_conv2d_readvariableop_resource-
)conv2d_24_biasadd_readvariableop_resource,
(conv2d_25_conv2d_readvariableop_resource-
)conv2d_25_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource
identityИв conv2d_23/BiasAdd/ReadVariableOpвconv2d_23/Conv2D/ReadVariableOpв2conv2d_23/kernel/Regularizer/Square/ReadVariableOpв conv2d_24/BiasAdd/ReadVariableOpвconv2d_24/Conv2D/ReadVariableOpв2conv2d_24/kernel/Regularizer/Square/ReadVariableOpв conv2d_25/BiasAdd/ReadVariableOpвconv2d_25/Conv2D/ReadVariableOpв2conv2d_25/kernel/Regularizer/Square/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOpв1dense_23/kernel/Regularizer/Square/ReadVariableOpвdense_24/BiasAdd/ReadVariableOpвdense_24/MatMul/ReadVariableOp┤
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:З*
dtype02!
conv2d_23/Conv2D/ReadVariableOp┼
conv2d_23/Conv2DConv2Dinputs'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ*
paddingVALID*
strides
2
conv2d_23/Conv2Dл
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp│
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ2
conv2d_23/BiasAddБ
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*2
_output_shapes 
:         РРЗ2
conv2d_23/Relu╦
max_pooling2d_23/MaxPoolMaxPoolconv2d_23/Relu:activations:0*0
_output_shapes
:         00З*
ksize
*
paddingVALID*
strides
2
max_pooling2d_23/MaxPool┤
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
:З<*
dtype02!
conv2d_24/Conv2D/ReadVariableOp▌
conv2d_24/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<*
paddingVALID*
strides
2
conv2d_24/Conv2Dк
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp░
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<2
conv2d_24/BiasAdd~
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:         ,,<2
conv2d_24/Relu╩
max_pooling2d_24/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:         <*
ksize
*
paddingVALID*
strides
2
max_pooling2d_24/MaxPool│
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:<#*
dtype02!
conv2d_25/Conv2D/ReadVariableOp▌
conv2d_25/Conv2DConv2D!max_pooling2d_24/MaxPool:output:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #*
paddingVALID*
strides
2
conv2d_25/Conv2Dк
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp░
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #2
conv2d_25/BiasAdd~
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:         #2
conv2d_25/Relu╩
max_pooling2d_25/MaxPoolMaxPoolconv2d_25/Relu:activations:0*/
_output_shapes
:         #*
ksize
*
paddingVALID*
strides
2
max_pooling2d_25/MaxPools
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ь  2
flatten_7/Constб
flatten_7/ReshapeReshape!max_pooling2d_25/MaxPool:output:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         ь	2
flatten_7/Reshapeк
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMulflatten_7/Reshape:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_23/MatMulи
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
dense_23/BiasAdd/ReadVariableOpж
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_23/BiasAddt
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_23/Reluй
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02 
dense_24/MatMul/ReadVariableOpг
dense_24/MatMulMatMuldense_23/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_24/MatMulз
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_24/BiasAdd/ReadVariableOpе
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_24/BiasAdd|
dense_24/SigmoidSigmoiddense_24/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_24/Sigmoid┌
2conv2d_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:З*
dtype024
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_23/kernel/Regularizer/SquareSquare:conv2d_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З2%
#conv2d_23/kernel/Regularizer/Squareб
"conv2d_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_23/kernel/Regularizer/Const┬
 conv2d_23/kernel/Regularizer/SumSum'conv2d_23/kernel/Regularizer/Square:y:0+conv2d_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/SumН
"conv2d_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_23/kernel/Regularizer/mul/x─
 conv2d_23/kernel/Regularizer/mulMul+conv2d_23/kernel/Regularizer/mul/x:output:0)conv2d_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/mul┌
2conv2d_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
:З<*
dtype024
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_24/kernel/Regularizer/SquareSquare:conv2d_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З<2%
#conv2d_24/kernel/Regularizer/Squareб
"conv2d_24/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_24/kernel/Regularizer/Const┬
 conv2d_24/kernel/Regularizer/SumSum'conv2d_24/kernel/Regularizer/Square:y:0+conv2d_24/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/SumН
"conv2d_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_24/kernel/Regularizer/mul/x─
 conv2d_24/kernel/Regularizer/mulMul+conv2d_24/kernel/Regularizer/mul/x:output:0)conv2d_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/mul┘
2conv2d_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:<#*
dtype024
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp┴
#conv2d_25/kernel/Regularizer/SquareSquare:conv2d_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<#2%
#conv2d_25/kernel/Regularizer/Squareб
"conv2d_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_25/kernel/Regularizer/Const┬
 conv2d_25/kernel/Regularizer/SumSum'conv2d_25/kernel/Regularizer/Square:y:0+conv2d_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/SumН
"conv2d_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_25/kernel/Regularizer/mul/x─
 conv2d_25/kernel/Regularizer/mulMul+conv2d_25/kernel/Regularizer/mul/x:output:0)conv2d_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/mul╨
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp╕
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ь	А2$
"dense_23/kernel/Regularizer/SquareЧ
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const╛
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/SumЛ
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!dense_23/kernel/Regularizer/mul/x└
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mulР
IdentityIdentitydense_24/Sigmoid:y:0!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp3^conv2d_23/kernel/Regularizer/Square/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp3^conv2d_24/kernel/Regularizer/Square/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp3^conv2d_25/kernel/Regularizer/Square/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2h
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2h
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2h
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ЦЦ
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_65710

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Н
Т
D__inference_conv2d_23_layer_call_and_return_conditional_losses_66435

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв2conv2d_23/kernel/Regularizer/Square/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:З*
dtype02
Conv2D/ReadVariableOpз
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02
BiasAdd/ReadVariableOpЛ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         РРЗ2
Relu╨
2conv2d_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:З*
dtype024
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_23/kernel/Regularizer/SquareSquare:conv2d_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З2%
#conv2d_23/kernel/Regularizer/Squareб
"conv2d_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_23/kernel/Regularizer/Const┬
 conv2d_23/kernel/Regularizer/SumSum'conv2d_23/kernel/Regularizer/Square:y:0+conv2d_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/SumН
"conv2d_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_23/kernel/Regularizer/mul/x─
 conv2d_23/kernel/Regularizer/mulMul+conv2d_23/kernel/Regularizer/mul/x:output:0)conv2d_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/mul╫
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_23/kernel/Regularizer/Square/ReadVariableOp*
T0*2
_output_shapes 
:         РРЗ2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЦЦ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2conv2d_23/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:         ЦЦ
 
_user_specified_nameinputs
Х	
В
,__inference_sequential_7_layer_call_fn_66085
conv2d_23_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallconv2d_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_660622
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:         ЦЦ
)
_user_specified_nameconv2d_23_input
Б
~
)__inference_conv2d_24_layer_call_fn_66476

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_657952
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         ,,<2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         00З::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         00З
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_24_layer_call_fn_65728

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_657222
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▌
д
__inference_loss_fn_1_66593?
;conv2d_24_kernel_regularizer_square_readvariableop_resource
identityИв2conv2d_24/kernel/Regularizer/Square/ReadVariableOpэ
2conv2d_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_24_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:З<*
dtype024
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_24/kernel/Regularizer/SquareSquare:conv2d_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З<2%
#conv2d_24/kernel/Regularizer/Squareб
"conv2d_24/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_24/kernel/Regularizer/Const┬
 conv2d_24/kernel/Regularizer/SumSum'conv2d_24/kernel/Regularizer/Square:y:0+conv2d_24/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/SumН
"conv2d_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_24/kernel/Regularizer/mul/x─
 conv2d_24/kernel/Regularizer/mulMul+conv2d_24/kernel/Regularizer/mul/x:output:0)conv2d_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/mulЬ
IdentityIdentity$conv2d_24/kernel/Regularizer/mul:z:03^conv2d_24/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2conv2d_24/kernel/Regularizer/Square/ReadVariableOp
Б
g
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_65722

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
∙
Т
D__inference_conv2d_25_layer_call_and_return_conditional_losses_66499

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв2conv2d_25/kernel/Regularizer/Square/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<#*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         #2
Relu╧
2conv2d_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<#*
dtype024
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp┴
#conv2d_25/kernel/Regularizer/SquareSquare:conv2d_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<#2%
#conv2d_25/kernel/Regularizer/Squareб
"conv2d_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_25/kernel/Regularizer/Const┬
 conv2d_25/kernel/Regularizer/SumSum'conv2d_25/kernel/Regularizer/Square:y:0+conv2d_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/SumН
"conv2d_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_25/kernel/Regularizer/mul/x─
 conv2d_25/kernel/Regularizer/mulMul+conv2d_25/kernel/Regularizer/mul/x:output:0)conv2d_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/mul╘
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_25/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:         #2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         <::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2conv2d_25/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
х
∙
#__inference_signature_wrapper_66226
conv2d_23_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallconv2d_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_657042
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:         ЦЦ
)
_user_specified_nameconv2d_23_input
░
L
0__inference_max_pooling2d_23_layer_call_fn_65716

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_657102
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Є	
▄
C__inference_dense_24_layer_call_and_return_conditional_losses_66562

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ФQ
╣
G__inference_sequential_7_layer_call_and_return_conditional_losses_66062

inputs
conv2d_23_66008
conv2d_23_66010
conv2d_24_66014
conv2d_24_66016
conv2d_25_66020
conv2d_25_66022
dense_23_66027
dense_23_66029
dense_24_66032
dense_24_66034
identityИв!conv2d_23/StatefulPartitionedCallв2conv2d_23/kernel/Regularizer/Square/ReadVariableOpв!conv2d_24/StatefulPartitionedCallв2conv2d_24/kernel/Regularizer/Square/ReadVariableOpв!conv2d_25/StatefulPartitionedCallв2conv2d_25/kernel/Regularizer/Square/ReadVariableOpв dense_23/StatefulPartitionedCallв1dense_23/kernel/Regularizer/Square/ReadVariableOpв dense_24/StatefulPartitionedCallд
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_23_66008conv2d_23_66010*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         РРЗ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_657612#
!conv2d_23/StatefulPartitionedCallЫ
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_657102"
 max_pooling2d_23/PartitionedCall─
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_24_66014conv2d_24_66016*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_657952#
!conv2d_24/StatefulPartitionedCallЪ
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_657222"
 max_pooling2d_24/PartitionedCall─
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_66020conv2d_25_66022*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         #*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_658292#
!conv2d_25/StatefulPartitionedCallЪ
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         #* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_657342"
 max_pooling2d_25/PartitionedCall¤
flatten_7/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ь	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_658522
flatten_7/PartitionedCall▒
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_23_66027dense_23_66029*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_658772"
 dense_23/StatefulPartitionedCall╖
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_66032dense_24_66034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_659042"
 dense_24/StatefulPartitionedCall┴
2conv2d_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_23_66008*'
_output_shapes
:З*
dtype024
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_23/kernel/Regularizer/SquareSquare:conv2d_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З2%
#conv2d_23/kernel/Regularizer/Squareб
"conv2d_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_23/kernel/Regularizer/Const┬
 conv2d_23/kernel/Regularizer/SumSum'conv2d_23/kernel/Regularizer/Square:y:0+conv2d_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/SumН
"conv2d_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_23/kernel/Regularizer/mul/x─
 conv2d_23/kernel/Regularizer/mulMul+conv2d_23/kernel/Regularizer/mul/x:output:0)conv2d_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/mul┴
2conv2d_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_24_66014*'
_output_shapes
:З<*
dtype024
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_24/kernel/Regularizer/SquareSquare:conv2d_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З<2%
#conv2d_24/kernel/Regularizer/Squareб
"conv2d_24/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_24/kernel/Regularizer/Const┬
 conv2d_24/kernel/Regularizer/SumSum'conv2d_24/kernel/Regularizer/Square:y:0+conv2d_24/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/SumН
"conv2d_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_24/kernel/Regularizer/mul/x─
 conv2d_24/kernel/Regularizer/mulMul+conv2d_24/kernel/Regularizer/mul/x:output:0)conv2d_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/mul└
2conv2d_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_25_66020*&
_output_shapes
:<#*
dtype024
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp┴
#conv2d_25/kernel/Regularizer/SquareSquare:conv2d_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<#2%
#conv2d_25/kernel/Regularizer/Squareб
"conv2d_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_25/kernel/Regularizer/Const┬
 conv2d_25/kernel/Regularizer/SumSum'conv2d_25/kernel/Regularizer/Square:y:0+conv2d_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/SumН
"conv2d_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_25/kernel/Regularizer/mul/x─
 conv2d_25/kernel/Regularizer/mulMul+conv2d_25/kernel/Regularizer/mul/x:output:0)conv2d_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/mul╖
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_23_66027* 
_output_shapes
:
ь	А*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp╕
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ь	А2$
"dense_23/kernel/Regularizer/SquareЧ
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const╛
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/SumЛ
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!dense_23/kernel/Regularizer/mul/x└
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mulВ
IdentityIdentity)dense_24/StatefulPartitionedCall:output:0"^conv2d_23/StatefulPartitionedCall3^conv2d_23/kernel/Regularizer/Square/ReadVariableOp"^conv2d_24/StatefulPartitionedCall3^conv2d_24/kernel/Regularizer/Square/ReadVariableOp"^conv2d_25/StatefulPartitionedCall3^conv2d_25/kernel/Regularizer/Square/ReadVariableOp!^dense_23/StatefulPartitionedCall2^dense_23/kernel/Regularizer/Square/ReadVariableOp!^dense_24/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2h
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2h
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2h
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:Y U
1
_output_shapes
:         ЦЦ
 
_user_specified_nameinputs
ЇH
ю
 __inference__wrapped_model_65704
conv2d_23_input9
5sequential_7_conv2d_23_conv2d_readvariableop_resource:
6sequential_7_conv2d_23_biasadd_readvariableop_resource9
5sequential_7_conv2d_24_conv2d_readvariableop_resource:
6sequential_7_conv2d_24_biasadd_readvariableop_resource9
5sequential_7_conv2d_25_conv2d_readvariableop_resource:
6sequential_7_conv2d_25_biasadd_readvariableop_resource8
4sequential_7_dense_23_matmul_readvariableop_resource9
5sequential_7_dense_23_biasadd_readvariableop_resource8
4sequential_7_dense_24_matmul_readvariableop_resource9
5sequential_7_dense_24_biasadd_readvariableop_resource
identityИв-sequential_7/conv2d_23/BiasAdd/ReadVariableOpв,sequential_7/conv2d_23/Conv2D/ReadVariableOpв-sequential_7/conv2d_24/BiasAdd/ReadVariableOpв,sequential_7/conv2d_24/Conv2D/ReadVariableOpв-sequential_7/conv2d_25/BiasAdd/ReadVariableOpв,sequential_7/conv2d_25/Conv2D/ReadVariableOpв,sequential_7/dense_23/BiasAdd/ReadVariableOpв+sequential_7/dense_23/MatMul/ReadVariableOpв,sequential_7/dense_24/BiasAdd/ReadVariableOpв+sequential_7/dense_24/MatMul/ReadVariableOp█
,sequential_7/conv2d_23/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:З*
dtype02.
,sequential_7/conv2d_23/Conv2D/ReadVariableOpї
sequential_7/conv2d_23/Conv2DConv2Dconv2d_23_input4sequential_7/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ*
paddingVALID*
strides
2
sequential_7/conv2d_23/Conv2D╥
-sequential_7/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02/
-sequential_7/conv2d_23/BiasAdd/ReadVariableOpч
sequential_7/conv2d_23/BiasAddBiasAdd&sequential_7/conv2d_23/Conv2D:output:05sequential_7/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ2 
sequential_7/conv2d_23/BiasAddи
sequential_7/conv2d_23/ReluRelu'sequential_7/conv2d_23/BiasAdd:output:0*
T0*2
_output_shapes 
:         РРЗ2
sequential_7/conv2d_23/ReluЄ
%sequential_7/max_pooling2d_23/MaxPoolMaxPool)sequential_7/conv2d_23/Relu:activations:0*0
_output_shapes
:         00З*
ksize
*
paddingVALID*
strides
2'
%sequential_7/max_pooling2d_23/MaxPool█
,sequential_7/conv2d_24/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
:З<*
dtype02.
,sequential_7/conv2d_24/Conv2D/ReadVariableOpС
sequential_7/conv2d_24/Conv2DConv2D.sequential_7/max_pooling2d_23/MaxPool:output:04sequential_7/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<*
paddingVALID*
strides
2
sequential_7/conv2d_24/Conv2D╤
-sequential_7/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02/
-sequential_7/conv2d_24/BiasAdd/ReadVariableOpф
sequential_7/conv2d_24/BiasAddBiasAdd&sequential_7/conv2d_24/Conv2D:output:05sequential_7/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<2 
sequential_7/conv2d_24/BiasAddе
sequential_7/conv2d_24/ReluRelu'sequential_7/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:         ,,<2
sequential_7/conv2d_24/Reluё
%sequential_7/max_pooling2d_24/MaxPoolMaxPool)sequential_7/conv2d_24/Relu:activations:0*/
_output_shapes
:         <*
ksize
*
paddingVALID*
strides
2'
%sequential_7/max_pooling2d_24/MaxPool┌
,sequential_7/conv2d_25/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:<#*
dtype02.
,sequential_7/conv2d_25/Conv2D/ReadVariableOpС
sequential_7/conv2d_25/Conv2DConv2D.sequential_7/max_pooling2d_24/MaxPool:output:04sequential_7/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #*
paddingVALID*
strides
2
sequential_7/conv2d_25/Conv2D╤
-sequential_7/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype02/
-sequential_7/conv2d_25/BiasAdd/ReadVariableOpф
sequential_7/conv2d_25/BiasAddBiasAdd&sequential_7/conv2d_25/Conv2D:output:05sequential_7/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #2 
sequential_7/conv2d_25/BiasAddе
sequential_7/conv2d_25/ReluRelu'sequential_7/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:         #2
sequential_7/conv2d_25/Reluё
%sequential_7/max_pooling2d_25/MaxPoolMaxPool)sequential_7/conv2d_25/Relu:activations:0*/
_output_shapes
:         #*
ksize
*
paddingVALID*
strides
2'
%sequential_7/max_pooling2d_25/MaxPoolН
sequential_7/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ь  2
sequential_7/flatten_7/Const╒
sequential_7/flatten_7/ReshapeReshape.sequential_7/max_pooling2d_25/MaxPool:output:0%sequential_7/flatten_7/Const:output:0*
T0*(
_output_shapes
:         ь	2 
sequential_7/flatten_7/Reshape╤
+sequential_7/dense_23/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_23_matmul_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype02-
+sequential_7/dense_23/MatMul/ReadVariableOp╫
sequential_7/dense_23/MatMulMatMul'sequential_7/flatten_7/Reshape:output:03sequential_7/dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential_7/dense_23/MatMul╧
,sequential_7/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02.
,sequential_7/dense_23/BiasAdd/ReadVariableOp┌
sequential_7/dense_23/BiasAddBiasAdd&sequential_7/dense_23/MatMul:product:04sequential_7/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
sequential_7/dense_23/BiasAddЫ
sequential_7/dense_23/ReluRelu&sequential_7/dense_23/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
sequential_7/dense_23/Relu╨
+sequential_7/dense_24/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_24_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02-
+sequential_7/dense_24/MatMul/ReadVariableOp╫
sequential_7/dense_24/MatMulMatMul(sequential_7/dense_23/Relu:activations:03sequential_7/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_7/dense_24/MatMul╬
,sequential_7/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_7/dense_24/BiasAdd/ReadVariableOp┘
sequential_7/dense_24/BiasAddBiasAdd&sequential_7/dense_24/MatMul:product:04sequential_7/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_7/dense_24/BiasAddг
sequential_7/dense_24/SigmoidSigmoid&sequential_7/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential_7/dense_24/Sigmoid╠
IdentityIdentity!sequential_7/dense_24/Sigmoid:y:0.^sequential_7/conv2d_23/BiasAdd/ReadVariableOp-^sequential_7/conv2d_23/Conv2D/ReadVariableOp.^sequential_7/conv2d_24/BiasAdd/ReadVariableOp-^sequential_7/conv2d_24/Conv2D/ReadVariableOp.^sequential_7/conv2d_25/BiasAdd/ReadVariableOp-^sequential_7/conv2d_25/Conv2D/ReadVariableOp-^sequential_7/dense_23/BiasAdd/ReadVariableOp,^sequential_7/dense_23/MatMul/ReadVariableOp-^sequential_7/dense_24/BiasAdd/ReadVariableOp,^sequential_7/dense_24/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::2^
-sequential_7/conv2d_23/BiasAdd/ReadVariableOp-sequential_7/conv2d_23/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_23/Conv2D/ReadVariableOp,sequential_7/conv2d_23/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_24/BiasAdd/ReadVariableOp-sequential_7/conv2d_24/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_24/Conv2D/ReadVariableOp,sequential_7/conv2d_24/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_25/BiasAdd/ReadVariableOp-sequential_7/conv2d_25/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_25/Conv2D/ReadVariableOp,sequential_7/conv2d_25/Conv2D/ReadVariableOp2\
,sequential_7/dense_23/BiasAdd/ReadVariableOp,sequential_7/dense_23/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_23/MatMul/ReadVariableOp+sequential_7/dense_23/MatMul/ReadVariableOp2\
,sequential_7/dense_24/BiasAdd/ReadVariableOp,sequential_7/dense_24/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_24/MatMul/ReadVariableOp+sequential_7/dense_24/MatMul/ReadVariableOp:b ^
1
_output_shapes
:         ЦЦ
)
_user_specified_nameconv2d_23_input
чд
Х
!__inference__traced_restore_66882
file_prefix%
!assignvariableop_conv2d_23_kernel%
!assignvariableop_1_conv2d_23_bias'
#assignvariableop_2_conv2d_24_kernel%
!assignvariableop_3_conv2d_24_bias'
#assignvariableop_4_conv2d_25_kernel%
!assignvariableop_5_conv2d_25_bias&
"assignvariableop_6_dense_23_kernel$
 assignvariableop_7_dense_23_bias&
"assignvariableop_8_dense_24_kernel$
 assignvariableop_9_dense_24_bias!
assignvariableop_10_adam_iter#
assignvariableop_11_adam_beta_1#
assignvariableop_12_adam_beta_2"
assignvariableop_13_adam_decay*
&assignvariableop_14_adam_learning_rate
assignvariableop_15_total
assignvariableop_16_count
assignvariableop_17_total_1
assignvariableop_18_count_1/
+assignvariableop_19_adam_conv2d_23_kernel_m-
)assignvariableop_20_adam_conv2d_23_bias_m/
+assignvariableop_21_adam_conv2d_24_kernel_m-
)assignvariableop_22_adam_conv2d_24_bias_m/
+assignvariableop_23_adam_conv2d_25_kernel_m-
)assignvariableop_24_adam_conv2d_25_bias_m.
*assignvariableop_25_adam_dense_23_kernel_m,
(assignvariableop_26_adam_dense_23_bias_m.
*assignvariableop_27_adam_dense_24_kernel_m,
(assignvariableop_28_adam_dense_24_bias_m/
+assignvariableop_29_adam_conv2d_23_kernel_v-
)assignvariableop_30_adam_conv2d_23_bias_v/
+assignvariableop_31_adam_conv2d_24_kernel_v-
)assignvariableop_32_adam_conv2d_24_bias_v/
+assignvariableop_33_adam_conv2d_25_kernel_v-
)assignvariableop_34_adam_conv2d_25_bias_v.
*assignvariableop_35_adam_dense_23_kernel_v,
(assignvariableop_36_adam_dense_23_bias_v.
*assignvariableop_37_adam_dense_24_kernel_v,
(assignvariableop_38_adam_dense_24_bias_v
identity_40ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ж
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names▐
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЎ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╢
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_23_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ж
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_23_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2и
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_24_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3ж
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_24_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4и
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_25_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5ж
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_25_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6з
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_23_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7е
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_23_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8з
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_24_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9е
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_24_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10е
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11з
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12з
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ж
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14о
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15б
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16б
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17г
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18г
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19│
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_23_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20▒
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_23_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21│
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_24_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22▒
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_24_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23│
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_25_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24▒
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_25_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25▓
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_23_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26░
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_23_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27▓
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_24_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28░
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_24_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29│
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_23_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30▒
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_23_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31│
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_24_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32▒
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_24_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33│
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_25_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34▒
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_25_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35▓
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_23_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36░
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_23_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37▓
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_24_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38░
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_24_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╕
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39л
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_40"#
identity_40Identity_40:output:0*│
_input_shapesб
Ю: :::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
∙
Т
D__inference_conv2d_25_layer_call_and_return_conditional_losses_65829

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв2conv2d_25/kernel/Regularizer/Square/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<#*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         #2
Relu╧
2conv2d_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<#*
dtype024
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp┴
#conv2d_25/kernel/Regularizer/SquareSquare:conv2d_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<#2%
#conv2d_25/kernel/Regularizer/Squareб
"conv2d_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_25/kernel/Regularizer/Const┬
 conv2d_25/kernel/Regularizer/SumSum'conv2d_25/kernel/Regularizer/Square:y:0+conv2d_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/SumН
"conv2d_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_25/kernel/Regularizer/mul/x─
 conv2d_25/kernel/Regularizer/mulMul+conv2d_25/kernel/Regularizer/mul/x:output:0)conv2d_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/mul╘
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_25/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:         #2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         <::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2conv2d_25/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
с
}
(__inference_dense_23_layer_call_fn_66551

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_658772
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ь	::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ь	
 
_user_specified_nameinputs
ФQ
╣
G__inference_sequential_7_layer_call_and_return_conditional_losses_66144

inputs
conv2d_23_66090
conv2d_23_66092
conv2d_24_66096
conv2d_24_66098
conv2d_25_66102
conv2d_25_66104
dense_23_66109
dense_23_66111
dense_24_66114
dense_24_66116
identityИв!conv2d_23/StatefulPartitionedCallв2conv2d_23/kernel/Regularizer/Square/ReadVariableOpв!conv2d_24/StatefulPartitionedCallв2conv2d_24/kernel/Regularizer/Square/ReadVariableOpв!conv2d_25/StatefulPartitionedCallв2conv2d_25/kernel/Regularizer/Square/ReadVariableOpв dense_23/StatefulPartitionedCallв1dense_23/kernel/Regularizer/Square/ReadVariableOpв dense_24/StatefulPartitionedCallд
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_23_66090conv2d_23_66092*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         РРЗ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_657612#
!conv2d_23/StatefulPartitionedCallЫ
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_657102"
 max_pooling2d_23/PartitionedCall─
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_24_66096conv2d_24_66098*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_657952#
!conv2d_24/StatefulPartitionedCallЪ
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_657222"
 max_pooling2d_24/PartitionedCall─
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_66102conv2d_25_66104*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         #*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_658292#
!conv2d_25/StatefulPartitionedCallЪ
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         #* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_657342"
 max_pooling2d_25/PartitionedCall¤
flatten_7/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ь	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_658522
flatten_7/PartitionedCall▒
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_23_66109dense_23_66111*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_658772"
 dense_23/StatefulPartitionedCall╖
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_66114dense_24_66116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_659042"
 dense_24/StatefulPartitionedCall┴
2conv2d_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_23_66090*'
_output_shapes
:З*
dtype024
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_23/kernel/Regularizer/SquareSquare:conv2d_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З2%
#conv2d_23/kernel/Regularizer/Squareб
"conv2d_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_23/kernel/Regularizer/Const┬
 conv2d_23/kernel/Regularizer/SumSum'conv2d_23/kernel/Regularizer/Square:y:0+conv2d_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/SumН
"conv2d_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_23/kernel/Regularizer/mul/x─
 conv2d_23/kernel/Regularizer/mulMul+conv2d_23/kernel/Regularizer/mul/x:output:0)conv2d_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/mul┴
2conv2d_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_24_66096*'
_output_shapes
:З<*
dtype024
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_24/kernel/Regularizer/SquareSquare:conv2d_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З<2%
#conv2d_24/kernel/Regularizer/Squareб
"conv2d_24/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_24/kernel/Regularizer/Const┬
 conv2d_24/kernel/Regularizer/SumSum'conv2d_24/kernel/Regularizer/Square:y:0+conv2d_24/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/SumН
"conv2d_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_24/kernel/Regularizer/mul/x─
 conv2d_24/kernel/Regularizer/mulMul+conv2d_24/kernel/Regularizer/mul/x:output:0)conv2d_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/mul└
2conv2d_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_25_66102*&
_output_shapes
:<#*
dtype024
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp┴
#conv2d_25/kernel/Regularizer/SquareSquare:conv2d_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<#2%
#conv2d_25/kernel/Regularizer/Squareб
"conv2d_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_25/kernel/Regularizer/Const┬
 conv2d_25/kernel/Regularizer/SumSum'conv2d_25/kernel/Regularizer/Square:y:0+conv2d_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/SumН
"conv2d_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_25/kernel/Regularizer/mul/x─
 conv2d_25/kernel/Regularizer/mulMul+conv2d_25/kernel/Regularizer/mul/x:output:0)conv2d_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/mul╖
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_23_66109* 
_output_shapes
:
ь	А*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp╕
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ь	А2$
"dense_23/kernel/Regularizer/SquareЧ
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const╛
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/SumЛ
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!dense_23/kernel/Regularizer/mul/x└
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mulВ
IdentityIdentity)dense_24/StatefulPartitionedCall:output:0"^conv2d_23/StatefulPartitionedCall3^conv2d_23/kernel/Regularizer/Square/ReadVariableOp"^conv2d_24/StatefulPartitionedCall3^conv2d_24/kernel/Regularizer/Square/ReadVariableOp"^conv2d_25/StatefulPartitionedCall3^conv2d_25/kernel/Regularizer/Square/ReadVariableOp!^dense_23/StatefulPartitionedCall2^dense_23/kernel/Regularizer/Square/ReadVariableOp!^dense_24/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2h
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2h
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2h
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:Y U
1
_output_shapes
:         ЦЦ
 
_user_specified_nameinputs
░
L
0__inference_max_pooling2d_25_layer_call_fn_65740

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_657342
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Х	
В
,__inference_sequential_7_layer_call_fn_66167
conv2d_23_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallconv2d_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_661442
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:         ЦЦ
)
_user_specified_nameconv2d_23_input
▀
}
(__inference_dense_24_layer_call_fn_66571

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_659042
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╝
`
D__inference_flatten_7_layer_call_and_return_conditional_losses_65852

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ь  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ь	2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ь	2

Identity"
identityIdentity:output:0*.
_input_shapes
:         #:W S
/
_output_shapes
:         #
 
_user_specified_nameinputs
Н
Т
D__inference_conv2d_23_layer_call_and_return_conditional_losses_65761

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв2conv2d_23/kernel/Regularizer/Square/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:З*
dtype02
Conv2D/ReadVariableOpз
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02
BiasAdd/ReadVariableOpЛ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ2	
BiasAddc
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:         РРЗ2
Relu╨
2conv2d_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:З*
dtype024
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_23/kernel/Regularizer/SquareSquare:conv2d_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З2%
#conv2d_23/kernel/Regularizer/Squareб
"conv2d_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_23/kernel/Regularizer/Const┬
 conv2d_23/kernel/Regularizer/SumSum'conv2d_23/kernel/Regularizer/Square:y:0+conv2d_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/SumН
"conv2d_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_23/kernel/Regularizer/mul/x─
 conv2d_23/kernel/Regularizer/mulMul+conv2d_23/kernel/Regularizer/mul/x:output:0)conv2d_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/mul╫
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_23/kernel/Regularizer/Square/ReadVariableOp*
T0*2
_output_shapes 
:         РРЗ2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЦЦ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2conv2d_23/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:         ЦЦ
 
_user_specified_nameinputs
█
д
__inference_loss_fn_2_66604?
;conv2d_25_kernel_regularizer_square_readvariableop_resource
identityИв2conv2d_25/kernel/Regularizer/Square/ReadVariableOpь
2conv2d_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_25_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:<#*
dtype024
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp┴
#conv2d_25/kernel/Regularizer/SquareSquare:conv2d_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<#2%
#conv2d_25/kernel/Regularizer/Squareб
"conv2d_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_25/kernel/Regularizer/Const┬
 conv2d_25/kernel/Regularizer/SumSum'conv2d_25/kernel/Regularizer/Square:y:0+conv2d_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/SumН
"conv2d_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_25/kernel/Regularizer/mul/x─
 conv2d_25/kernel/Regularizer/mulMul+conv2d_25/kernel/Regularizer/mul/x:output:0)conv2d_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/mulЬ
IdentityIdentity$conv2d_25/kernel/Regularizer/mul:z:03^conv2d_25/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2conv2d_25/kernel/Regularizer/Square/ReadVariableOp
■
Т
D__inference_conv2d_24_layer_call_and_return_conditional_losses_65795

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв2conv2d_24/kernel/Regularizer/Square/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:З<*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         ,,<2
Relu╨
2conv2d_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:З<*
dtype024
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_24/kernel/Regularizer/SquareSquare:conv2d_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З<2%
#conv2d_24/kernel/Regularizer/Squareб
"conv2d_24/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_24/kernel/Regularizer/Const┬
 conv2d_24/kernel/Regularizer/SumSum'conv2d_24/kernel/Regularizer/Square:y:0+conv2d_24/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/SumН
"conv2d_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_24/kernel/Regularizer/mul/x─
 conv2d_24/kernel/Regularizer/mulMul+conv2d_24/kernel/Regularizer/mul/x:output:0)conv2d_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/mul╘
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_24/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:         ,,<2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         00З::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2conv2d_24/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:         00З
 
_user_specified_nameinputs
Зc
█
G__inference_sequential_7_layer_call_and_return_conditional_losses_66362

inputs,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource,
(conv2d_24_conv2d_readvariableop_resource-
)conv2d_24_biasadd_readvariableop_resource,
(conv2d_25_conv2d_readvariableop_resource-
)conv2d_25_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource
identityИв conv2d_23/BiasAdd/ReadVariableOpвconv2d_23/Conv2D/ReadVariableOpв2conv2d_23/kernel/Regularizer/Square/ReadVariableOpв conv2d_24/BiasAdd/ReadVariableOpвconv2d_24/Conv2D/ReadVariableOpв2conv2d_24/kernel/Regularizer/Square/ReadVariableOpв conv2d_25/BiasAdd/ReadVariableOpвconv2d_25/Conv2D/ReadVariableOpв2conv2d_25/kernel/Regularizer/Square/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOpв1dense_23/kernel/Regularizer/Square/ReadVariableOpвdense_24/BiasAdd/ReadVariableOpвdense_24/MatMul/ReadVariableOp┤
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:З*
dtype02!
conv2d_23/Conv2D/ReadVariableOp┼
conv2d_23/Conv2DConv2Dinputs'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ*
paddingVALID*
strides
2
conv2d_23/Conv2Dл
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp│
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:         РРЗ2
conv2d_23/BiasAddБ
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*2
_output_shapes 
:         РРЗ2
conv2d_23/Relu╦
max_pooling2d_23/MaxPoolMaxPoolconv2d_23/Relu:activations:0*0
_output_shapes
:         00З*
ksize
*
paddingVALID*
strides
2
max_pooling2d_23/MaxPool┤
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
:З<*
dtype02!
conv2d_24/Conv2D/ReadVariableOp▌
conv2d_24/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<*
paddingVALID*
strides
2
conv2d_24/Conv2Dк
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp░
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ,,<2
conv2d_24/BiasAdd~
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:         ,,<2
conv2d_24/Relu╩
max_pooling2d_24/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:         <*
ksize
*
paddingVALID*
strides
2
max_pooling2d_24/MaxPool│
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:<#*
dtype02!
conv2d_25/Conv2D/ReadVariableOp▌
conv2d_25/Conv2DConv2D!max_pooling2d_24/MaxPool:output:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #*
paddingVALID*
strides
2
conv2d_25/Conv2Dк
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp░
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         #2
conv2d_25/BiasAdd~
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:         #2
conv2d_25/Relu╩
max_pooling2d_25/MaxPoolMaxPoolconv2d_25/Relu:activations:0*/
_output_shapes
:         #*
ksize
*
paddingVALID*
strides
2
max_pooling2d_25/MaxPools
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ь  2
flatten_7/Constб
flatten_7/ReshapeReshape!max_pooling2d_25/MaxPool:output:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         ь	2
flatten_7/Reshapeк
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMulflatten_7/Reshape:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_23/MatMulи
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
dense_23/BiasAdd/ReadVariableOpж
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_23/BiasAddt
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_23/Reluй
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02 
dense_24/MatMul/ReadVariableOpг
dense_24/MatMulMatMuldense_23/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_24/MatMulз
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_24/BiasAdd/ReadVariableOpе
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_24/BiasAdd|
dense_24/SigmoidSigmoiddense_24/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_24/Sigmoid┌
2conv2d_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*'
_output_shapes
:З*
dtype024
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_23/kernel/Regularizer/SquareSquare:conv2d_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З2%
#conv2d_23/kernel/Regularizer/Squareб
"conv2d_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_23/kernel/Regularizer/Const┬
 conv2d_23/kernel/Regularizer/SumSum'conv2d_23/kernel/Regularizer/Square:y:0+conv2d_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/SumН
"conv2d_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_23/kernel/Regularizer/mul/x─
 conv2d_23/kernel/Regularizer/mulMul+conv2d_23/kernel/Regularizer/mul/x:output:0)conv2d_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/mul┌
2conv2d_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*'
_output_shapes
:З<*
dtype024
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_24/kernel/Regularizer/SquareSquare:conv2d_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З<2%
#conv2d_24/kernel/Regularizer/Squareб
"conv2d_24/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_24/kernel/Regularizer/Const┬
 conv2d_24/kernel/Regularizer/SumSum'conv2d_24/kernel/Regularizer/Square:y:0+conv2d_24/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/SumН
"conv2d_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_24/kernel/Regularizer/mul/x─
 conv2d_24/kernel/Regularizer/mulMul+conv2d_24/kernel/Regularizer/mul/x:output:0)conv2d_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/mul┘
2conv2d_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:<#*
dtype024
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp┴
#conv2d_25/kernel/Regularizer/SquareSquare:conv2d_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<#2%
#conv2d_25/kernel/Regularizer/Squareб
"conv2d_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_25/kernel/Regularizer/Const┬
 conv2d_25/kernel/Regularizer/SumSum'conv2d_25/kernel/Regularizer/Square:y:0+conv2d_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/SumН
"conv2d_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_25/kernel/Regularizer/mul/x─
 conv2d_25/kernel/Regularizer/mulMul+conv2d_25/kernel/Regularizer/mul/x:output:0)conv2d_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/mul╨
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp╕
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ь	А2$
"dense_23/kernel/Regularizer/SquareЧ
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const╛
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/SumЛ
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!dense_23/kernel/Regularizer/mul/x└
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mulР
IdentityIdentitydense_24/Sigmoid:y:0!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp3^conv2d_23/kernel/Regularizer/Square/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp3^conv2d_24/kernel/Regularizer/Square/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp3^conv2d_25/kernel/Regularizer/Square/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2h
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2h
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2h
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ЦЦ
 
_user_specified_nameinputs
·
∙
,__inference_sequential_7_layer_call_fn_66412

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_661442
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЦЦ
 
_user_specified_nameinputs
п
в
__inference_loss_fn_3_66615>
:dense_23_kernel_regularizer_square_readvariableop_resource
identityИв1dense_23/kernel/Regularizer/Square/ReadVariableOpу
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_23_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp╕
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ь	А2$
"dense_23/kernel/Regularizer/SquareЧ
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const╛
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/SumЛ
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!dense_23/kernel/Regularizer/mul/x└
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mulЪ
IdentityIdentity#dense_23/kernel/Regularizer/mul:z:02^dense_23/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp
пQ
┬
G__inference_sequential_7_layer_call_and_return_conditional_losses_65945
conv2d_23_input
conv2d_23_65772
conv2d_23_65774
conv2d_24_65806
conv2d_24_65808
conv2d_25_65840
conv2d_25_65842
dense_23_65888
dense_23_65890
dense_24_65915
dense_24_65917
identityИв!conv2d_23/StatefulPartitionedCallв2conv2d_23/kernel/Regularizer/Square/ReadVariableOpв!conv2d_24/StatefulPartitionedCallв2conv2d_24/kernel/Regularizer/Square/ReadVariableOpв!conv2d_25/StatefulPartitionedCallв2conv2d_25/kernel/Regularizer/Square/ReadVariableOpв dense_23/StatefulPartitionedCallв1dense_23/kernel/Regularizer/Square/ReadVariableOpв dense_24/StatefulPartitionedCallн
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCallconv2d_23_inputconv2d_23_65772conv2d_23_65774*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:         РРЗ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_657612#
!conv2d_23/StatefulPartitionedCallЫ
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         00З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_657102"
 max_pooling2d_23/PartitionedCall─
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_24_65806conv2d_24_65808*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ,,<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_657952#
!conv2d_24/StatefulPartitionedCallЪ
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_657222"
 max_pooling2d_24/PartitionedCall─
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_65840conv2d_25_65842*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         #*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_658292#
!conv2d_25/StatefulPartitionedCallЪ
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         #* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_657342"
 max_pooling2d_25/PartitionedCall¤
flatten_7/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ь	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_658522
flatten_7/PartitionedCall▒
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_23_65888dense_23_65890*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_658772"
 dense_23/StatefulPartitionedCall╖
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_65915dense_24_65917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_659042"
 dense_24/StatefulPartitionedCall┴
2conv2d_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_23_65772*'
_output_shapes
:З*
dtype024
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_23/kernel/Regularizer/SquareSquare:conv2d_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З2%
#conv2d_23/kernel/Regularizer/Squareб
"conv2d_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_23/kernel/Regularizer/Const┬
 conv2d_23/kernel/Regularizer/SumSum'conv2d_23/kernel/Regularizer/Square:y:0+conv2d_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/SumН
"conv2d_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_23/kernel/Regularizer/mul/x─
 conv2d_23/kernel/Regularizer/mulMul+conv2d_23/kernel/Regularizer/mul/x:output:0)conv2d_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/mul┴
2conv2d_24/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_24_65806*'
_output_shapes
:З<*
dtype024
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_24/kernel/Regularizer/SquareSquare:conv2d_24/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З<2%
#conv2d_24/kernel/Regularizer/Squareб
"conv2d_24/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_24/kernel/Regularizer/Const┬
 conv2d_24/kernel/Regularizer/SumSum'conv2d_24/kernel/Regularizer/Square:y:0+conv2d_24/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/SumН
"conv2d_24/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_24/kernel/Regularizer/mul/x─
 conv2d_24/kernel/Regularizer/mulMul+conv2d_24/kernel/Regularizer/mul/x:output:0)conv2d_24/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_24/kernel/Regularizer/mul└
2conv2d_25/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_25_65840*&
_output_shapes
:<#*
dtype024
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp┴
#conv2d_25/kernel/Regularizer/SquareSquare:conv2d_25/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:<#2%
#conv2d_25/kernel/Regularizer/Squareб
"conv2d_25/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_25/kernel/Regularizer/Const┬
 conv2d_25/kernel/Regularizer/SumSum'conv2d_25/kernel/Regularizer/Square:y:0+conv2d_25/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/SumН
"conv2d_25/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_25/kernel/Regularizer/mul/x─
 conv2d_25/kernel/Regularizer/mulMul+conv2d_25/kernel/Regularizer/mul/x:output:0)conv2d_25/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_25/kernel/Regularizer/mul╖
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_23_65888* 
_output_shapes
:
ь	А*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp╕
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ь	А2$
"dense_23/kernel/Regularizer/SquareЧ
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const╛
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/SumЛ
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!dense_23/kernel/Regularizer/mul/x└
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mulВ
IdentityIdentity)dense_24/StatefulPartitionedCall:output:0"^conv2d_23/StatefulPartitionedCall3^conv2d_23/kernel/Regularizer/Square/ReadVariableOp"^conv2d_24/StatefulPartitionedCall3^conv2d_24/kernel/Regularizer/Square/ReadVariableOp"^conv2d_25/StatefulPartitionedCall3^conv2d_25/kernel/Regularizer/Square/ReadVariableOp!^dense_23/StatefulPartitionedCall2^dense_23/kernel/Regularizer/Square/ReadVariableOp!^dense_24/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:         ЦЦ::::::::::2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2h
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2h
2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2conv2d_24/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2h
2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2conv2d_25/kernel/Regularizer/Square/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:b ^
1
_output_shapes
:         ЦЦ
)
_user_specified_nameconv2d_23_input
ў
Р
C__inference_dense_23_layer_call_and_return_conditional_losses_66542

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв1dense_23/kernel/Regularizer/Square/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
Relu╟
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ь	А*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp╕
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ь	А2$
"dense_23/kernel/Regularizer/SquareЧ
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const╛
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/SumЛ
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2#
!dense_23/kernel/Regularizer/mul/x└
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul╠
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ь	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:         ь	
 
_user_specified_nameinputs
═S
З
__inference__traced_save_66755
file_prefix/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop/
+savev2_conv2d_25_kernel_read_readvariableop-
)savev2_conv2d_25_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_23_kernel_m_read_readvariableop4
0savev2_adam_conv2d_23_bias_m_read_readvariableop6
2savev2_adam_conv2d_24_kernel_m_read_readvariableop4
0savev2_adam_conv2d_24_bias_m_read_readvariableop6
2savev2_adam_conv2d_25_kernel_m_read_readvariableop4
0savev2_adam_conv2d_25_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableop6
2savev2_adam_conv2d_23_kernel_v_read_readvariableop4
0savev2_adam_conv2d_23_bias_v_read_readvariableop6
2savev2_adam_conv2d_24_kernel_v_read_readvariableop4
0savev2_adam_conv2d_24_bias_v_read_readvariableop6
2savev2_adam_conv2d_25_kernel_v_read_readvariableop4
0savev2_adam_conv2d_25_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameА
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╪
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesс
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop+savev2_conv2d_25_kernel_read_readvariableop)savev2_conv2d_25_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_23_kernel_m_read_readvariableop0savev2_adam_conv2d_23_bias_m_read_readvariableop2savev2_adam_conv2d_24_kernel_m_read_readvariableop0savev2_adam_conv2d_24_bias_m_read_readvariableop2savev2_adam_conv2d_25_kernel_m_read_readvariableop0savev2_adam_conv2d_25_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop2savev2_adam_conv2d_23_kernel_v_read_readvariableop0savev2_adam_conv2d_23_bias_v_read_readvariableop2savev2_adam_conv2d_24_kernel_v_read_readvariableop0savev2_adam_conv2d_24_bias_v_read_readvariableop2savev2_adam_conv2d_25_kernel_v_read_readvariableop0savev2_adam_conv2d_25_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*°
_input_shapesц
у: :З:З:З<:<:<#:#:
ь	А:А:	А:: : : : : : : : : :З:З:З<:<:<#:#:
ь	А:А:	А::З:З:З<:<:<#:#:
ь	А:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:З:!

_output_shapes	
:З:-)
'
_output_shapes
:З<: 

_output_shapes
:<:,(
&
_output_shapes
:<#: 

_output_shapes
:#:&"
 
_output_shapes
:
ь	А:!

_output_shapes	
:А:%	!

_output_shapes
:	А: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:З:!

_output_shapes	
:З:-)
'
_output_shapes
:З<: 

_output_shapes
:<:,(
&
_output_shapes
:<#: 

_output_shapes
:#:&"
 
_output_shapes
:
ь	А:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::-)
'
_output_shapes
:З:!

_output_shapes	
:З:- )
'
_output_shapes
:З<: !

_output_shapes
:<:,"(
&
_output_shapes
:<#: #

_output_shapes
:#:&$"
 
_output_shapes
:
ь	А:!%

_output_shapes	
:А:%&!

_output_shapes
:	А: '

_output_shapes
::(

_output_shapes
: 
Є	
▄
C__inference_dense_24_layer_call_and_return_conditional_losses_65904

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▌
д
__inference_loss_fn_0_66582?
;conv2d_23_kernel_regularizer_square_readvariableop_resource
identityИв2conv2d_23/kernel/Regularizer/Square/ReadVariableOpэ
2conv2d_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_23_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:З*
dtype024
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp┬
#conv2d_23/kernel/Regularizer/SquareSquare:conv2d_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:З2%
#conv2d_23/kernel/Regularizer/Squareб
"conv2d_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_23/kernel/Regularizer/Const┬
 conv2d_23/kernel/Regularizer/SumSum'conv2d_23/kernel/Regularizer/Square:y:0+conv2d_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/SumН
"conv2d_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2$
"conv2d_23/kernel/Regularizer/mul/x─
 conv2d_23/kernel/Regularizer/mulMul+conv2d_23/kernel/Regularizer/mul/x:output:0)conv2d_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_23/kernel/Regularizer/mulЬ
IdentityIdentity$conv2d_23/kernel/Regularizer/mul:z:03^conv2d_23/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv2d_23/kernel/Regularizer/Square/ReadVariableOp2conv2d_23/kernel/Regularizer/Square/ReadVariableOp"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┼
serving_default▒
U
conv2d_23_inputB
!serving_default_conv2d_23_input:0         ЦЦ<
dense_240
StatefulPartitionedCall:0         tensorflow/serving/predict:╥╖
бP
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+Ф&call_and_return_all_conditional_losses
Х_default_save_signature
Ц__call__"▄L
_tf_keras_sequential╜L{"class_name": "Sequential", "name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 150, 150, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_23_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 150, 150, 3]}, "dtype": "float32", "filters": 135, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 60, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_24", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_25", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 150, 150, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 150, 150, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_23_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 150, 150, 3]}, "dtype": "float32", "filters": 135, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 60, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_24", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_25", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
╡

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+Ч&call_and_return_all_conditional_losses
Ш__call__"О

_tf_keras_layerЇ	{"class_name": "Conv2D", "name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 150, 150, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_23", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 150, 150, 3]}, "dtype": "float32", "filters": 135, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 150, 150, 3]}}
Г
regularization_losses
trainable_variables
	variables
	keras_api
+Щ&call_and_return_all_conditional_losses
Ъ__call__"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
▒


kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+Ы&call_and_return_all_conditional_losses
Ь__call__"К	
_tf_keras_layerЁ{"class_name": "Conv2D", "name": "conv2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 60, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 135}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48, 48, 135]}}
Г
 regularization_losses
!trainable_variables
"	variables
#	keras_api
+Э&call_and_return_all_conditional_losses
Ю__call__"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_24", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
п


$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
+Я&call_and_return_all_conditional_losses
а__call__"И	
_tf_keras_layerю{"class_name": "Conv2D", "name": "conv2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 35, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 60}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 60]}}
Г
*regularization_losses
+trainable_variables
,	variables
-	keras_api
+б&call_and_return_all_conditional_losses
в__call__"Є
_tf_keras_layer╪{"class_name": "MaxPooling2D", "name": "max_pooling2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_25", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ш
.regularization_losses
/trainable_variables
0	variables
1	keras_api
+г&call_and_return_all_conditional_losses
д__call__"╫
_tf_keras_layer╜{"class_name": "Flatten", "name": "flatten_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
▒

2kernel
3bias
4regularization_losses
5trainable_variables
6	variables
7	keras_api
+е&call_and_return_all_conditional_losses
ж__call__"К
_tf_keras_layerЁ{"class_name": "Dense", "name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1260}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1260]}}
°

8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
+з&call_and_return_all_conditional_losses
и__call__"╤
_tf_keras_layer╖{"class_name": "Dense", "name": "dense_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
Ы
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemАmБmВmГ$mД%mЕ2mЖ3mЗ8mИ9mЙvКvЛvМvН$vО%vП2vР3vС8vТ9vУ"
	optimizer
@
й0
к1
л2
м3"
trackable_list_wrapper
f
0
1
2
3
$4
%5
26
37
88
99"
trackable_list_wrapper
f
0
1
2
3
$4
%5
26
37
88
99"
trackable_list_wrapper
╬
regularization_losses
Clayer_regularization_losses
trainable_variables
Dmetrics
Elayer_metrics
	variables

Flayers
Gnon_trainable_variables
Ц__call__
Х_default_save_signature
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
-
нserving_default"
signature_map
+:)З2conv2d_23/kernel
:З2conv2d_23/bias
(
й0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
regularization_losses
Hlayer_regularization_losses
trainable_variables
Imetrics
Jlayer_metrics
	variables

Klayers
Lnon_trainable_variables
Ш__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
regularization_losses
Mlayer_regularization_losses
trainable_variables
Nmetrics
Olayer_metrics
	variables

Players
Qnon_trainable_variables
Ъ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
+:)З<2conv2d_24/kernel
:<2conv2d_24/bias
(
к0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
regularization_losses
Rlayer_regularization_losses
trainable_variables
Smetrics
Tlayer_metrics
	variables

Ulayers
Vnon_trainable_variables
Ь__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
 regularization_losses
Wlayer_regularization_losses
!trainable_variables
Xmetrics
Ylayer_metrics
"	variables

Zlayers
[non_trainable_variables
Ю__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
*:(<#2conv2d_25/kernel
:#2conv2d_25/bias
(
л0"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
░
&regularization_losses
\layer_regularization_losses
'trainable_variables
]metrics
^layer_metrics
(	variables

_layers
`non_trainable_variables
а__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
*regularization_losses
alayer_regularization_losses
+trainable_variables
bmetrics
clayer_metrics
,	variables

dlayers
enon_trainable_variables
в__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
.regularization_losses
flayer_regularization_losses
/trainable_variables
gmetrics
hlayer_metrics
0	variables

ilayers
jnon_trainable_variables
д__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
#:!
ь	А2dense_23/kernel
:А2dense_23/bias
(
м0"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
░
4regularization_losses
klayer_regularization_losses
5trainable_variables
lmetrics
mlayer_metrics
6	variables

nlayers
onon_trainable_variables
ж__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
": 	А2dense_24/kernel
:2dense_24/bias
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
░
:regularization_losses
player_regularization_losses
;trainable_variables
qmetrics
rlayer_metrics
<	variables

slayers
tnon_trainable_variables
и__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_dict_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
(
й0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
к0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
л0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
м0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╗
	wtotal
	xcount
y	variables
z	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Ё
	{total
	|count
}
_fn_kwargs
~	variables
	keras_api"й
_tf_keras_metricО{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
.
w0
x1"
trackable_list_wrapper
-
y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
{0
|1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
0:.З2Adam/conv2d_23/kernel/m
": З2Adam/conv2d_23/bias/m
0:.З<2Adam/conv2d_24/kernel/m
!:<2Adam/conv2d_24/bias/m
/:-<#2Adam/conv2d_25/kernel/m
!:#2Adam/conv2d_25/bias/m
(:&
ь	А2Adam/dense_23/kernel/m
!:А2Adam/dense_23/bias/m
':%	А2Adam/dense_24/kernel/m
 :2Adam/dense_24/bias/m
0:.З2Adam/conv2d_23/kernel/v
": З2Adam/conv2d_23/bias/v
0:.З<2Adam/conv2d_24/kernel/v
!:<2Adam/conv2d_24/bias/v
/:-<#2Adam/conv2d_25/kernel/v
!:#2Adam/conv2d_25/bias/v
(:&
ь	А2Adam/dense_23/kernel/v
!:А2Adam/dense_23/bias/v
':%	А2Adam/dense_24/kernel/v
 :2Adam/dense_24/bias/v
ъ2ч
G__inference_sequential_7_layer_call_and_return_conditional_losses_66002
G__inference_sequential_7_layer_call_and_return_conditional_losses_66362
G__inference_sequential_7_layer_call_and_return_conditional_losses_65945
G__inference_sequential_7_layer_call_and_return_conditional_losses_66294└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ё2э
 __inference__wrapped_model_65704╚
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *8в5
3К0
conv2d_23_input         ЦЦ
■2√
,__inference_sequential_7_layer_call_fn_66167
,__inference_sequential_7_layer_call_fn_66387
,__inference_sequential_7_layer_call_fn_66412
,__inference_sequential_7_layer_call_fn_66085└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ю2ы
D__inference_conv2d_23_layer_call_and_return_conditional_losses_66435в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_conv2d_23_layer_call_fn_66444в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_65710р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_max_pooling2d_23_layer_call_fn_65716р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
ю2ы
D__inference_conv2d_24_layer_call_and_return_conditional_losses_66467в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_conv2d_24_layer_call_fn_66476в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_65722р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_max_pooling2d_24_layer_call_fn_65728р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
ю2ы
D__inference_conv2d_25_layer_call_and_return_conditional_losses_66499в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_conv2d_25_layer_call_fn_66508в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│2░
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_65734р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Ш2Х
0__inference_max_pooling2d_25_layer_call_fn_65740р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
ю2ы
D__inference_flatten_7_layer_call_and_return_conditional_losses_66514в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_flatten_7_layer_call_fn_66519в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_23_layer_call_and_return_conditional_losses_66542в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_dense_23_layer_call_fn_66551в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_24_layer_call_and_return_conditional_losses_66562в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥2╧
(__inference_dense_24_layer_call_fn_66571в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
▓2п
__inference_loss_fn_0_66582П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
▓2п
__inference_loss_fn_1_66593П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
▓2п
__inference_loss_fn_2_66604П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
▓2п
__inference_loss_fn_3_66615П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
╥B╧
#__inference_signature_wrapper_66226conv2d_23_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 к
 __inference__wrapped_model_65704Е
$%2389Bв?
8в5
3К0
conv2d_23_input         ЦЦ
к "3к0
.
dense_24"К
dense_24         ╣
D__inference_conv2d_23_layer_call_and_return_conditional_losses_66435q9в6
/в,
*К'
inputs         ЦЦ
к "0в-
&К#
0         РРЗ
Ъ С
)__inference_conv2d_23_layer_call_fn_66444d9в6
/в,
*К'
inputs         ЦЦ
к "#К          РРЗ╡
D__inference_conv2d_24_layer_call_and_return_conditional_losses_66467m8в5
.в+
)К&
inputs         00З
к "-в*
#К 
0         ,,<
Ъ Н
)__inference_conv2d_24_layer_call_fn_66476`8в5
.в+
)К&
inputs         00З
к " К         ,,<┤
D__inference_conv2d_25_layer_call_and_return_conditional_losses_66499l$%7в4
-в*
(К%
inputs         <
к "-в*
#К 
0         #
Ъ М
)__inference_conv2d_25_layer_call_fn_66508_$%7в4
-в*
(К%
inputs         <
к " К         #е
C__inference_dense_23_layer_call_and_return_conditional_losses_66542^230в-
&в#
!К
inputs         ь	
к "&в#
К
0         А
Ъ }
(__inference_dense_23_layer_call_fn_66551Q230в-
&в#
!К
inputs         ь	
к "К         Ад
C__inference_dense_24_layer_call_and_return_conditional_losses_66562]890в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ |
(__inference_dense_24_layer_call_fn_66571P890в-
&в#
!К
inputs         А
к "К         й
D__inference_flatten_7_layer_call_and_return_conditional_losses_66514a7в4
-в*
(К%
inputs         #
к "&в#
К
0         ь	
Ъ Б
)__inference_flatten_7_layer_call_fn_66519T7в4
-в*
(К%
inputs         #
к "К         ь	:
__inference_loss_fn_0_66582в

в 
к "К :
__inference_loss_fn_1_66593в

в 
к "К :
__inference_loss_fn_2_66604$в

в 
к "К :
__inference_loss_fn_3_666152в

в 
к "К ю
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_65710ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_23_layer_call_fn_65716СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_65722ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_24_layer_call_fn_65728СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_65734ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_25_layer_call_fn_65740СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╩
G__inference_sequential_7_layer_call_and_return_conditional_losses_65945
$%2389JвG
@в=
3К0
conv2d_23_input         ЦЦ
p

 
к "%в"
К
0         
Ъ ╩
G__inference_sequential_7_layer_call_and_return_conditional_losses_66002
$%2389JвG
@в=
3К0
conv2d_23_input         ЦЦ
p 

 
к "%в"
К
0         
Ъ ┴
G__inference_sequential_7_layer_call_and_return_conditional_losses_66294v
$%2389Aв>
7в4
*К'
inputs         ЦЦ
p

 
к "%в"
К
0         
Ъ ┴
G__inference_sequential_7_layer_call_and_return_conditional_losses_66362v
$%2389Aв>
7в4
*К'
inputs         ЦЦ
p 

 
к "%в"
К
0         
Ъ в
,__inference_sequential_7_layer_call_fn_66085r
$%2389JвG
@в=
3К0
conv2d_23_input         ЦЦ
p

 
к "К         в
,__inference_sequential_7_layer_call_fn_66167r
$%2389JвG
@в=
3К0
conv2d_23_input         ЦЦ
p 

 
к "К         Щ
,__inference_sequential_7_layer_call_fn_66387i
$%2389Aв>
7в4
*К'
inputs         ЦЦ
p

 
к "К         Щ
,__inference_sequential_7_layer_call_fn_66412i
$%2389Aв>
7в4
*К'
inputs         ЦЦ
p 

 
к "К         └
#__inference_signature_wrapper_66226Ш
$%2389UвR
в 
KкH
F
conv2d_23_input3К0
conv2d_23_input         ЦЦ"3к0
.
dense_24"К
dense_24         