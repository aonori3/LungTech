Ук
з¤
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
╝
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
 И"serve*2.6.22v2.6.1-9-gc2363d6d0258Цс
К
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
Г
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
К
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
Г
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
Л
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*$
shared_nameblock2_conv1/kernel
Д
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@А*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:А*
dtype0
М
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock2_conv2/kernel
Е
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:А*
dtype0
М
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv1/kernel
Е
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:А*
dtype0
М
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv2/kernel
Е
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:А*
dtype0
М
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv3/kernel
Е
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:А*
dtype0
М
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv1/kernel
Е
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:А*
dtype0
М
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv2/kernel
Е
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:А*
dtype0
М
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv3/kernel
Е
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:А*
dtype0
М
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv1/kernel
Е
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:А*
dtype0
М
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv2/kernel
Е
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:А*
dtype0
М
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv3/kernel
Е
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:А*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А$А*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
А$А*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:А*
dtype0
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
АА*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:А*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
АА*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:А*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	А*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
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
И
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А$А*&
shared_nameAdam/dense_4/kernel/m
Б
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m* 
_output_shapes
:
А$А*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:А*
dtype0
И
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_5/kernel/m
Б
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m* 
_output_shapes
:
АА*
dtype0

Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_5/bias/m
x
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes	
:А*
dtype0
И
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_6/kernel/m
Б
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m* 
_output_shapes
:
АА*
dtype0

Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_6/bias/m
x
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes	
:А*
dtype0
З
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_7/kernel/m
А
)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes
:	А*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
И
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
А$А*&
shared_nameAdam/dense_4/kernel/v
Б
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v* 
_output_shapes
:
А$А*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:А*
dtype0
И
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_5/kernel/v
Б
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v* 
_output_shapes
:
АА*
dtype0

Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_5/bias/v
x
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes	
:А*
dtype0
И
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_6/kernel/v
Б
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v* 
_output_shapes
:
АА*
dtype0

Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_6/bias/v
x
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes	
:А*
dtype0
З
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_7/kernel/v
А
)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes
:	А*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
лД
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*хГ
value┌ГB╓Г B╬Г
░
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
layer-19
layer-20
layer_with_weights-13
layer-21
layer-22
layer_with_weights-14
layer-23
layer-24
layer_with_weights-15
layer-25
layer-26
layer_with_weights-16
layer-27
	optimizer
regularization_losses
trainable_variables
 	variables
!	keras_api
"
signatures
 
h

#kernel
$bias
%regularization_losses
&trainable_variables
'	variables
(	keras_api
h

)kernel
*bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
R
/regularization_losses
0trainable_variables
1	variables
2	keras_api
h

3kernel
4bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
h

9kernel
:bias
;regularization_losses
<trainable_variables
=	variables
>	keras_api
R
?regularization_losses
@trainable_variables
A	variables
B	keras_api
h

Ckernel
Dbias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
h

Ikernel
Jbias
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
h

Okernel
Pbias
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
R
Uregularization_losses
Vtrainable_variables
W	variables
X	keras_api
h

Ykernel
Zbias
[regularization_losses
\trainable_variables
]	variables
^	keras_api
h

_kernel
`bias
aregularization_losses
btrainable_variables
c	variables
d	keras_api
h

ekernel
fbias
gregularization_losses
htrainable_variables
i	variables
j	keras_api
R
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
h

okernel
pbias
qregularization_losses
rtrainable_variables
s	variables
t	keras_api
h

ukernel
vbias
wregularization_losses
xtrainable_variables
y	variables
z	keras_api
i

{kernel
|bias
}regularization_losses
~trainable_variables
	variables
А	keras_api
V
Бregularization_losses
Вtrainable_variables
Г	variables
Д	keras_api
V
Еregularization_losses
Жtrainable_variables
З	variables
И	keras_api
V
Йregularization_losses
Кtrainable_variables
Л	variables
М	keras_api
n
Нkernel
	Оbias
Пregularization_losses
Рtrainable_variables
С	variables
Т	keras_api
V
Уregularization_losses
Фtrainable_variables
Х	variables
Ц	keras_api
n
Чkernel
	Шbias
Щregularization_losses
Ъtrainable_variables
Ы	variables
Ь	keras_api
V
Эregularization_losses
Юtrainable_variables
Я	variables
а	keras_api
n
бkernel
	вbias
гregularization_losses
дtrainable_variables
е	variables
ж	keras_api
V
зregularization_losses
иtrainable_variables
й	variables
к	keras_api
n
лkernel
	мbias
нregularization_losses
оtrainable_variables
п	variables
░	keras_api
ї
	▒iter
▓beta_1
│beta_2

┤decay
╡learning_rate	Нm═	Оm╬	Чm╧	Шm╨	бm╤	вm╥	лm╙	мm╘	Нv╒	Оv╓	Чv╫	Шv╪	бv┘	вv┌	лv█	мv▄
 
@
Н0
О1
Ч2
Ш3
б4
в5
л6
м7
О
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25
Н26
О27
Ч28
Ш29
б30
в31
л32
м33
▓
╢non_trainable_variables
regularization_losses
 ╖layer_regularization_losses
╕metrics
trainable_variables
╣layer_metrics
║layers
 	variables
 
_]
VARIABLE_VALUEblock1_conv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock1_conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

#0
$1
▓
╗non_trainable_variables
╝metrics
 ╜layer_regularization_losses
%regularization_losses
&trainable_variables
╛layer_metrics
┐layers
'	variables
_]
VARIABLE_VALUEblock1_conv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock1_conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

)0
*1
▓
└non_trainable_variables
┴metrics
 ┬layer_regularization_losses
+regularization_losses
,trainable_variables
├layer_metrics
─layers
-	variables
 
 
 
▓
┼non_trainable_variables
╞metrics
 ╟layer_regularization_losses
/regularization_losses
0trainable_variables
╚layer_metrics
╔layers
1	variables
_]
VARIABLE_VALUEblock2_conv1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock2_conv1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

30
41
▓
╩non_trainable_variables
╦metrics
 ╠layer_regularization_losses
5regularization_losses
6trainable_variables
═layer_metrics
╬layers
7	variables
_]
VARIABLE_VALUEblock2_conv2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock2_conv2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

90
:1
▓
╧non_trainable_variables
╨metrics
 ╤layer_regularization_losses
;regularization_losses
<trainable_variables
╥layer_metrics
╙layers
=	variables
 
 
 
▓
╘non_trainable_variables
╒metrics
 ╓layer_regularization_losses
?regularization_losses
@trainable_variables
╫layer_metrics
╪layers
A	variables
_]
VARIABLE_VALUEblock3_conv1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

C0
D1
▓
┘non_trainable_variables
┌metrics
 █layer_regularization_losses
Eregularization_losses
Ftrainable_variables
▄layer_metrics
▌layers
G	variables
_]
VARIABLE_VALUEblock3_conv2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

I0
J1
▓
▐non_trainable_variables
▀metrics
 рlayer_regularization_losses
Kregularization_losses
Ltrainable_variables
сlayer_metrics
тlayers
M	variables
_]
VARIABLE_VALUEblock3_conv3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

O0
P1
▓
уnon_trainable_variables
фmetrics
 хlayer_regularization_losses
Qregularization_losses
Rtrainable_variables
цlayer_metrics
чlayers
S	variables
 
 
 
▓
шnon_trainable_variables
щmetrics
 ъlayer_regularization_losses
Uregularization_losses
Vtrainable_variables
ыlayer_metrics
ьlayers
W	variables
_]
VARIABLE_VALUEblock4_conv1/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv1/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

Y0
Z1
▓
эnon_trainable_variables
юmetrics
 яlayer_regularization_losses
[regularization_losses
\trainable_variables
Ёlayer_metrics
ёlayers
]	variables
_]
VARIABLE_VALUEblock4_conv2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

_0
`1
▓
Єnon_trainable_variables
єmetrics
 Їlayer_regularization_losses
aregularization_losses
btrainable_variables
їlayer_metrics
Ўlayers
c	variables
_]
VARIABLE_VALUEblock4_conv3/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv3/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

e0
f1
▓
ўnon_trainable_variables
°metrics
 ∙layer_regularization_losses
gregularization_losses
htrainable_variables
·layer_metrics
√layers
i	variables
 
 
 
▓
№non_trainable_variables
¤metrics
 ■layer_regularization_losses
kregularization_losses
ltrainable_variables
 layer_metrics
Аlayers
m	variables
`^
VARIABLE_VALUEblock5_conv1/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv1/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

o0
p1
▓
Бnon_trainable_variables
Вmetrics
 Гlayer_regularization_losses
qregularization_losses
rtrainable_variables
Дlayer_metrics
Еlayers
s	variables
`^
VARIABLE_VALUEblock5_conv2/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv2/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

u0
v1
▓
Жnon_trainable_variables
Зmetrics
 Иlayer_regularization_losses
wregularization_losses
xtrainable_variables
Йlayer_metrics
Кlayers
y	variables
`^
VARIABLE_VALUEblock5_conv3/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv3/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

{0
|1
▓
Лnon_trainable_variables
Мmetrics
 Нlayer_regularization_losses
}regularization_losses
~trainable_variables
Оlayer_metrics
Пlayers
	variables
 
 
 
╡
Рnon_trainable_variables
Сmetrics
 Тlayer_regularization_losses
Бregularization_losses
Вtrainable_variables
Уlayer_metrics
Фlayers
Г	variables
 
 
 
╡
Хnon_trainable_variables
Цmetrics
 Чlayer_regularization_losses
Еregularization_losses
Жtrainable_variables
Шlayer_metrics
Щlayers
З	variables
 
 
 
╡
Ъnon_trainable_variables
Ыmetrics
 Ьlayer_regularization_losses
Йregularization_losses
Кtrainable_variables
Эlayer_metrics
Юlayers
Л	variables
[Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_4/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Н0
О1

Н0
О1
╡
Яnon_trainable_variables
аmetrics
 бlayer_regularization_losses
Пregularization_losses
Рtrainable_variables
вlayer_metrics
гlayers
С	variables
 
 
 
╡
дnon_trainable_variables
еmetrics
 жlayer_regularization_losses
Уregularization_losses
Фtrainable_variables
зlayer_metrics
иlayers
Х	variables
[Y
VARIABLE_VALUEdense_5/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_5/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Ч0
Ш1

Ч0
Ш1
╡
йnon_trainable_variables
кmetrics
 лlayer_regularization_losses
Щregularization_losses
Ъtrainable_variables
мlayer_metrics
нlayers
Ы	variables
 
 
 
╡
оnon_trainable_variables
пmetrics
 ░layer_regularization_losses
Эregularization_losses
Юtrainable_variables
▒layer_metrics
▓layers
Я	variables
[Y
VARIABLE_VALUEdense_6/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_6/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE
 

б0
в1

б0
в1
╡
│non_trainable_variables
┤metrics
 ╡layer_regularization_losses
гregularization_losses
дtrainable_variables
╢layer_metrics
╖layers
е	variables
 
 
 
╡
╕non_trainable_variables
╣metrics
 ║layer_regularization_losses
зregularization_losses
иtrainable_variables
╗layer_metrics
╝layers
й	variables
[Y
VARIABLE_VALUEdense_7/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_7/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE
 

л0
м1

л0
м1
╡
╜non_trainable_variables
╛metrics
 ┐layer_regularization_losses
нregularization_losses
оtrainable_variables
└layer_metrics
┴layers
п	variables
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
╞
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25
 

┬0
├1
 
╓
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27

#0
$1
 
 
 
 

)0
*1
 
 
 
 
 
 
 
 
 

30
41
 
 
 
 

90
:1
 
 
 
 
 
 
 
 
 

C0
D1
 
 
 
 

I0
J1
 
 
 
 

O0
P1
 
 
 
 
 
 
 
 
 

Y0
Z1
 
 
 
 

_0
`1
 
 
 
 

e0
f1
 
 
 
 
 
 
 
 
 

o0
p1
 
 
 
 

u0
v1
 
 
 
 

{0
|1
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
 
 
 
 
 
 
 
 
8

─total

┼count
╞	variables
╟	keras_api
I

╚total

╔count
╩
_fn_kwargs
╦	variables
╠	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

─0
┼1

╞	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

╚0
╔1

╦	variables
~|
VARIABLE_VALUEAdam/dense_4/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_4/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_5/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_5/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_6/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_6/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_7/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_7/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_4/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_4/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_5/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_5/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_6/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_6/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_7/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_7/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
О
serving_default_input_2Placeholder*1
_output_shapes
:         рр*
dtype0*&
shape:         рр
Ї
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2block1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_4976
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╡
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst*H
TinA
?2=	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *&
f!R
__inference__traced_save_6163
Ф
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*G
Tin@
>2<*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_restore_6350Х┴
т
F
*__inference_block1_pool_layer_call_fn_5461

inputs
identity╦
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_37162
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         pp@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         рр@:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
°
В
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5571

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
е
a
E__inference_block1_pool_layer_call_and_return_conditional_losses_5466

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
°
 
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5451

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
°
В
F__inference_block5_conv2_layer_call_and_return_conditional_losses_5731

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block4_conv3_layer_call_and_return_conditional_losses_3860

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
е
г
+__inference_block3_conv1_layer_call_fn_5540

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_37692
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         88А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
╝
a
E__inference_block1_pool_layer_call_and_return_conditional_losses_3716

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         pp@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         рр@:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
╦
F
*__inference_block5_pool_layer_call_fn_5756

inputs
identityц
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
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_36362
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
т
F
*__inference_block3_pool_layer_call_fn_5601

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_38132
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         88А:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
╜┬
╚
A__inference_model_1_layer_call_and_return_conditional_losses_5256

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	А:
&dense_4_matmul_readvariableop_resource:
А$А6
'dense_4_biasadd_readvariableop_resource:	А:
&dense_5_matmul_readvariableop_resource:
АА6
'dense_5_biasadd_readvariableop_resource:	А:
&dense_6_matmul_readvariableop_resource:
АА6
'dense_6_biasadd_readvariableop_resource:	А9
&dense_7_matmul_readvariableop_resource:	А5
'dense_7_biasadd_readvariableop_resource:
identityИв#block1_conv1/BiasAdd/ReadVariableOpв"block1_conv1/Conv2D/ReadVariableOpв#block1_conv2/BiasAdd/ReadVariableOpв"block1_conv2/Conv2D/ReadVariableOpв#block2_conv1/BiasAdd/ReadVariableOpв"block2_conv1/Conv2D/ReadVariableOpв#block2_conv2/BiasAdd/ReadVariableOpв"block2_conv2/Conv2D/ReadVariableOpв#block3_conv1/BiasAdd/ReadVariableOpв"block3_conv1/Conv2D/ReadVariableOpв#block3_conv2/BiasAdd/ReadVariableOpв"block3_conv2/Conv2D/ReadVariableOpв#block3_conv3/BiasAdd/ReadVariableOpв"block3_conv3/Conv2D/ReadVariableOpв#block4_conv1/BiasAdd/ReadVariableOpв"block4_conv1/Conv2D/ReadVariableOpв#block4_conv2/BiasAdd/ReadVariableOpв"block4_conv2/Conv2D/ReadVariableOpв#block4_conv3/BiasAdd/ReadVariableOpв"block4_conv3/Conv2D/ReadVariableOpв#block5_conv1/BiasAdd/ReadVariableOpв"block5_conv1/Conv2D/ReadVariableOpв#block5_conv2/BiasAdd/ReadVariableOpв"block5_conv2/Conv2D/ReadVariableOpв#block5_conv3/BiasAdd/ReadVariableOpв"block5_conv3/Conv2D/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOp╝
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp╠
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
block1_conv1/Conv2D│
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp╛
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2
block1_conv1/BiasAddЙ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
block1_conv1/Relu╝
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpх
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
block1_conv2/Conv2D│
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp╛
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2
block1_conv2/BiasAddЙ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
block1_conv2/Relu├
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool╜
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpс
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
block2_conv1/Conv2D┤
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp╜
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2
block2_conv1/BiasAddИ
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
block2_conv1/Relu╛
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpф
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
block2_conv2/Conv2D┤
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp╜
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2
block2_conv2/BiasAddИ
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
block2_conv2/Relu─
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool╛
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpс
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
block3_conv1/Conv2D┤
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp╜
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2
block3_conv1/BiasAddИ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88А2
block3_conv1/Relu╛
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpф
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
block3_conv2/Conv2D┤
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp╜
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2
block3_conv2/BiasAddИ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88А2
block3_conv2/Relu╛
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpф
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
block3_conv3/Conv2D┤
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp╜
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2
block3_conv3/BiasAddИ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88А2
block3_conv3/Relu─
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool╛
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpс
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block4_conv1/Conv2D┤
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp╜
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block4_conv1/BiasAddИ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block4_conv1/Relu╛
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpф
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block4_conv2/Conv2D┤
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp╜
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block4_conv2/BiasAddИ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block4_conv2/Relu╛
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpф
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block4_conv3/Conv2D┤
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp╜
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block4_conv3/BiasAddИ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block4_conv3/Relu─
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool╛
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpс
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block5_conv1/Conv2D┤
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp╜
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block5_conv1/BiasAddИ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block5_conv1/Relu╛
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpф
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block5_conv2/Conv2D┤
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp╜
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block5_conv2/BiasAddИ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block5_conv2/Relu╛
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpф
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block5_conv3/Conv2D┤
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp╜
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block5_conv3/BiasAddИ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block5_conv3/Relu─
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool┌
average_pooling2d_1/AvgPoolAvgPoolblock5_pool/MaxPool:output:0*
T0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
average_pooling2d_1/AvgPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/ConstЮ
flatten/ReshapeReshape$average_pooling2d_1/AvgPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А$2
flatten/Reshapeз
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А$А*
dtype02
dense_4/MatMul/ReadVariableOpЮ
dense_4/MatMulMatMulflatten/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_4/MatMulе
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_4/BiasAdd/ReadVariableOpв
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_4/BiasAddq
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_4/ReluГ
dropout_3/IdentityIdentitydense_4/Relu:activations:0*
T0*(
_output_shapes
:         А2
dropout_3/Identityз
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense_5/MatMul/ReadVariableOpб
dense_5/MatMulMatMuldropout_3/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_5/MatMulе
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_5/BiasAdd/ReadVariableOpв
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_5/BiasAddq
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_5/ReluГ
dropout_4/IdentityIdentitydense_5/Relu:activations:0*
T0*(
_output_shapes
:         А2
dropout_4/Identityз
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense_6/MatMul/ReadVariableOpб
dense_6/MatMulMatMuldropout_4/Identity:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_6/MatMulе
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_6/BiasAdd/ReadVariableOpв
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_6/ReluГ
dropout_5/IdentityIdentitydense_6/Relu:activations:0*
T0*(
_output_shapes
:         А2
dropout_5/Identityж
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_7/MatMul/ReadVariableOpа
dense_7/MatMulMatMuldropout_5/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_7/MatMulд
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOpб
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_7/Softmaxt
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         2

Identityб

NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
Ї
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_5837

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╦
F
*__inference_block3_pool_layer_call_fn_5596

inputs
identityц
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
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_35922
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
═
i
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_5791

inputs
identityЬ
AvgPoolAvgPoolinputs*
T0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
AvgPoolm
IdentityIdentityAvgPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Л
ї
A__inference_dense_4_layer_call_and_return_conditional_losses_5822

inputs2
matmul_readvariableop_resource:
А$А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А$А*
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
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А$
 
_user_specified_nameinputs
°
В
F__inference_block5_conv3_layer_call_and_return_conditional_losses_3917

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ж
а
+__inference_block1_conv1_layer_call_fn_5420

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_36892
StatefulPartitionedCallЕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         рр@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
°
В
F__inference_block3_conv1_layer_call_and_return_conditional_losses_3769

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
е
г
+__inference_block5_conv1_layer_call_fn_5700

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_38832
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block5_conv3_layer_call_and_return_conditional_losses_5751

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
е
г
+__inference_block3_conv2_layer_call_fn_5560

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_37862
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         88А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
В
Э	
&__inference_model_1_layer_call_fn_4697
input_2!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:
А$А

unknown_26:	А

unknown_27:
АА

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_45532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_2
╢
i
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_5786

inputs
identity╢
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
AvgPoolЗ
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
е
г
+__inference_block5_conv3_layer_call_fn_5740

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_39172
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╝
a
E__inference_block1_pool_layer_call_and_return_conditional_losses_5471

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         pp@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         рр@:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
Ї
a
C__inference_dropout_4_layer_call_and_return_conditional_losses_3989

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
─▐
╚
A__inference_model_1_layer_call_and_return_conditional_losses_5411

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@А;
,block2_conv1_biasadd_readvariableop_resource:	АG
+block2_conv2_conv2d_readvariableop_resource:АА;
,block2_conv2_biasadd_readvariableop_resource:	АG
+block3_conv1_conv2d_readvariableop_resource:АА;
,block3_conv1_biasadd_readvariableop_resource:	АG
+block3_conv2_conv2d_readvariableop_resource:АА;
,block3_conv2_biasadd_readvariableop_resource:	АG
+block3_conv3_conv2d_readvariableop_resource:АА;
,block3_conv3_biasadd_readvariableop_resource:	АG
+block4_conv1_conv2d_readvariableop_resource:АА;
,block4_conv1_biasadd_readvariableop_resource:	АG
+block4_conv2_conv2d_readvariableop_resource:АА;
,block4_conv2_biasadd_readvariableop_resource:	АG
+block4_conv3_conv2d_readvariableop_resource:АА;
,block4_conv3_biasadd_readvariableop_resource:	АG
+block5_conv1_conv2d_readvariableop_resource:АА;
,block5_conv1_biasadd_readvariableop_resource:	АG
+block5_conv2_conv2d_readvariableop_resource:АА;
,block5_conv2_biasadd_readvariableop_resource:	АG
+block5_conv3_conv2d_readvariableop_resource:АА;
,block5_conv3_biasadd_readvariableop_resource:	А:
&dense_4_matmul_readvariableop_resource:
А$А6
'dense_4_biasadd_readvariableop_resource:	А:
&dense_5_matmul_readvariableop_resource:
АА6
'dense_5_biasadd_readvariableop_resource:	А:
&dense_6_matmul_readvariableop_resource:
АА6
'dense_6_biasadd_readvariableop_resource:	А9
&dense_7_matmul_readvariableop_resource:	А5
'dense_7_biasadd_readvariableop_resource:
identityИв#block1_conv1/BiasAdd/ReadVariableOpв"block1_conv1/Conv2D/ReadVariableOpв#block1_conv2/BiasAdd/ReadVariableOpв"block1_conv2/Conv2D/ReadVariableOpв#block2_conv1/BiasAdd/ReadVariableOpв"block2_conv1/Conv2D/ReadVariableOpв#block2_conv2/BiasAdd/ReadVariableOpв"block2_conv2/Conv2D/ReadVariableOpв#block3_conv1/BiasAdd/ReadVariableOpв"block3_conv1/Conv2D/ReadVariableOpв#block3_conv2/BiasAdd/ReadVariableOpв"block3_conv2/Conv2D/ReadVariableOpв#block3_conv3/BiasAdd/ReadVariableOpв"block3_conv3/Conv2D/ReadVariableOpв#block4_conv1/BiasAdd/ReadVariableOpв"block4_conv1/Conv2D/ReadVariableOpв#block4_conv2/BiasAdd/ReadVariableOpв"block4_conv2/Conv2D/ReadVariableOpв#block4_conv3/BiasAdd/ReadVariableOpв"block4_conv3/Conv2D/ReadVariableOpв#block5_conv1/BiasAdd/ReadVariableOpв"block5_conv1/Conv2D/ReadVariableOpв#block5_conv2/BiasAdd/ReadVariableOpв"block5_conv2/Conv2D/ReadVariableOpв#block5_conv3/BiasAdd/ReadVariableOpв"block5_conv3/Conv2D/ReadVariableOpвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOpвdense_5/BiasAdd/ReadVariableOpвdense_5/MatMul/ReadVariableOpвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвdense_7/BiasAdd/ReadVariableOpвdense_7/MatMul/ReadVariableOp╝
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp╠
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
block1_conv1/Conv2D│
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp╛
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2
block1_conv1/BiasAddЙ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
block1_conv1/Relu╝
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpх
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
block1_conv2/Conv2D│
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp╛
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2
block1_conv2/BiasAddЙ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
block1_conv2/Relu├
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool╜
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpс
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
block2_conv1/Conv2D┤
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp╜
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2
block2_conv1/BiasAddИ
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
block2_conv1/Relu╛
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpф
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
block2_conv2/Conv2D┤
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp╜
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2
block2_conv2/BiasAddИ
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
block2_conv2/Relu─
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool╛
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpс
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
block3_conv1/Conv2D┤
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp╜
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2
block3_conv1/BiasAddИ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88А2
block3_conv1/Relu╛
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpф
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
block3_conv2/Conv2D┤
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp╜
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2
block3_conv2/BiasAddИ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88А2
block3_conv2/Relu╛
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpф
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
block3_conv3/Conv2D┤
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp╜
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2
block3_conv3/BiasAddИ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88А2
block3_conv3/Relu─
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool╛
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpс
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block4_conv1/Conv2D┤
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp╜
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block4_conv1/BiasAddИ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block4_conv1/Relu╛
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpф
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block4_conv2/Conv2D┤
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp╜
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block4_conv2/BiasAddИ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block4_conv2/Relu╛
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpф
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block4_conv3/Conv2D┤
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp╜
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block4_conv3/BiasAddИ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block4_conv3/Relu─
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool╛
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpс
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block5_conv1/Conv2D┤
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp╜
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block5_conv1/BiasAddИ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block5_conv1/Relu╛
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpф
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block5_conv2/Conv2D┤
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp╜
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block5_conv2/BiasAddИ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block5_conv2/Relu╛
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpф
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
block5_conv3/Conv2D┤
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp╜
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
block5_conv3/BiasAddИ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
block5_conv3/Relu─
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool┌
average_pooling2d_1/AvgPoolAvgPoolblock5_pool/MaxPool:output:0*
T0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
average_pooling2d_1/AvgPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten/ConstЮ
flatten/ReshapeReshape$average_pooling2d_1/AvgPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         А$2
flatten/Reshapeз
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А$А*
dtype02
dense_4/MatMul/ReadVariableOpЮ
dense_4/MatMulMatMulflatten/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_4/MatMulе
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_4/BiasAdd/ReadVariableOpв
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_4/BiasAddq
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_4/Reluw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_3/dropout/Constж
dropout_3/dropout/MulMuldense_4/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout_3/dropout/Mul|
dropout_3/dropout/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape╙
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype020
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_3/dropout/GreaterEqual/yч
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2 
dropout_3/dropout/GreaterEqualЮ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout_3/dropout/Castг
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout_3/dropout/Mul_1з
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense_5/MatMul/ReadVariableOpб
dense_5/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_5/MatMulе
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_5/BiasAdd/ReadVariableOpв
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_5/BiasAddq
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_5/Reluw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_4/dropout/Constж
dropout_4/dropout/MulMuldense_5/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout_4/dropout/Mul|
dropout_4/dropout/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape╙
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype020
.dropout_4/dropout/random_uniform/RandomUniformЙ
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_4/dropout/GreaterEqual/yч
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2 
dropout_4/dropout/GreaterEqualЮ
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout_4/dropout/Castг
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout_4/dropout/Mul_1з
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense_6/MatMul/ReadVariableOpб
dense_6/MatMulMatMuldropout_4/dropout/Mul_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_6/MatMulе
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_6/BiasAdd/ReadVariableOpв
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_6/Reluw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_5/dropout/Constж
dropout_5/dropout/MulMuldense_6/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout_5/dropout/Mul|
dropout_5/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape╙
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype020
.dropout_5/dropout/random_uniform/RandomUniformЙ
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_5/dropout/GreaterEqual/yч
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2 
dropout_5/dropout/GreaterEqualЮ
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout_5/dropout/Castг
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout_5/dropout/Mul_1ж
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_7/MatMul/ReadVariableOpа
dense_7/MatMulMatMuldropout_5/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_7/MatMulд
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOpб
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_7/Softmaxt
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         2

Identityб

NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
╝
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_5771

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block5_conv2_layer_call_and_return_conditional_losses_3900

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
а
a
(__inference_dropout_3_layer_call_fn_5832

inputs
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_42002
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╛
D
(__inference_dropout_3_layer_call_fn_5827

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_39652
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block4_conv1_layer_call_and_return_conditional_losses_3826

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╝
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_3927

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ї
Б
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5491

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ppА2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
т
F
*__inference_block2_pool_layer_call_fn_5521

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_37562
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         88А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ppА:X T
0
_output_shapes
:         ppА
 
_user_specified_nameinputs
█
N
2__inference_average_pooling2d_1_layer_call_fn_5776

inputs
identityю
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
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_36582
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
°
 
F__inference_block1_conv1_layer_call_and_return_conditional_losses_3689

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
е
a
E__inference_block2_pool_layer_call_and_return_conditional_losses_3570

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
°
В
F__inference_block2_conv2_layer_call_and_return_conditional_losses_3746

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ppА2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ppА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ppА
 
_user_specified_nameinputs
▓
b
C__inference_dropout_4_layer_call_and_return_conditional_losses_4167

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block3_conv2_layer_call_and_return_conditional_losses_3786

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
°
В
F__inference_block3_conv3_layer_call_and_return_conditional_losses_3803

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
х
]
A__inference_flatten_layer_call_and_return_conditional_losses_3941

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А$2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
е
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_5766

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
 
Ь	
&__inference_model_1_layer_call_fn_5122

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:
А$А

unknown_26:	А

unknown_27:
АА

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИвStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_45532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
°
В
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5631

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
х}
є
A__inference_model_1_layer_call_and_return_conditional_losses_4033

inputs+
block1_conv1_3690:@
block1_conv1_3692:@+
block1_conv2_3707:@@
block1_conv2_3709:@,
block2_conv1_3730:@А 
block2_conv1_3732:	А-
block2_conv2_3747:АА 
block2_conv2_3749:	А-
block3_conv1_3770:АА 
block3_conv1_3772:	А-
block3_conv2_3787:АА 
block3_conv2_3789:	А-
block3_conv3_3804:АА 
block3_conv3_3806:	А-
block4_conv1_3827:АА 
block4_conv1_3829:	А-
block4_conv2_3844:АА 
block4_conv2_3846:	А-
block4_conv3_3861:АА 
block4_conv3_3863:	А-
block5_conv1_3884:АА 
block5_conv1_3886:	А-
block5_conv2_3901:АА 
block5_conv2_3903:	А-
block5_conv3_3918:АА 
block5_conv3_3920:	А 
dense_4_3955:
А$А
dense_4_3957:	А 
dense_5_3979:
АА
dense_5_3981:	А 
dense_6_4003:
АА
dense_6_4005:	А
dense_7_4027:	А
dense_7_4029:
identityИв$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallм
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_3690block1_conv1_3692*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_36892&
$block1_conv1/StatefulPartitionedCall╙
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_3707block1_conv2_3709*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_37062&
$block1_conv2/StatefulPartitionedCallК
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_37162
block1_pool/PartitionedCall╔
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_3730block2_conv1_3732*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_37292&
$block2_conv1/StatefulPartitionedCall╥
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_3747block2_conv2_3749*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_37462&
$block2_conv2/StatefulPartitionedCallЛ
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_37562
block2_pool/PartitionedCall╔
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_3770block3_conv1_3772*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_37692&
$block3_conv1/StatefulPartitionedCall╥
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_3787block3_conv2_3789*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_37862&
$block3_conv2/StatefulPartitionedCall╥
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_3804block3_conv3_3806*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_38032&
$block3_conv3/StatefulPartitionedCallЛ
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_38132
block3_pool/PartitionedCall╔
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_3827block4_conv1_3829*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_38262&
$block4_conv1/StatefulPartitionedCall╥
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_3844block4_conv2_3846*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_38432&
$block4_conv2/StatefulPartitionedCall╥
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_3861block4_conv3_3863*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_38602&
$block4_conv3/StatefulPartitionedCallЛ
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_38702
block4_pool/PartitionedCall╔
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_3884block5_conv1_3886*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_38832&
$block5_conv1/StatefulPartitionedCall╥
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_3901block5_conv2_3903*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_39002&
$block5_conv2/StatefulPartitionedCall╥
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_3918block5_conv3_3920*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_39172&
$block5_conv3/StatefulPartitionedCallЛ
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_39272
block5_pool/PartitionedCallЪ
#average_pooling2d_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_39332%
#average_pooling2d_1/PartitionedCallЎ
flatten/PartitionedCallPartitionedCall,average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_39412
flatten/PartitionedCallд
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_3955dense_4_3957*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_39542!
dense_4/StatefulPartitionedCall°
dropout_3/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_39652
dropout_3/PartitionedCallж
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_5_3979dense_5_3981*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_39782!
dense_5/StatefulPartitionedCall°
dropout_4/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_39892
dropout_4/PartitionedCallж
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_6_4003dense_6_4005*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_40022!
dense_6/StatefulPartitionedCall°
dropout_5/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_40132
dropout_5/PartitionedCallе
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_7_4027dense_7_4029*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_40262!
dense_7/StatefulPartitionedCallГ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╤
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
╢
i
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_3658

inputs
identity╢
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
AvgPoolЗ
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Л
ї
A__inference_dense_4_layer_call_and_return_conditional_losses_3954

inputs2
matmul_readvariableop_resource:
А$А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А$А*
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
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А$
 
_user_specified_nameinputs
е
a
E__inference_block3_pool_layer_call_and_return_conditional_losses_3592

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╝
a
E__inference_block3_pool_layer_call_and_return_conditional_losses_5611

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         88А:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
е
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_5686

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
т
F
*__inference_block5_pool_layer_call_fn_5761

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_39272
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
е
г
+__inference_block2_conv2_layer_call_fn_5500

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_37462
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ppА2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ppА: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ppА
 
_user_specified_nameinputs
╦
F
*__inference_block4_pool_layer_call_fn_5676

inputs
identityц
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
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_36142
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Є
N
2__inference_average_pooling2d_1_layer_call_fn_5781

inputs
identity╘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_39332
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block5_conv1_layer_call_and_return_conditional_losses_3883

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
°
 
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5431

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
е
г
+__inference_block4_conv3_layer_call_fn_5660

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_38602
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
▓
b
C__inference_dropout_3_layer_call_and_return_conditional_losses_5849

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
х
]
A__inference_flatten_layer_call_and_return_conditional_losses_5802

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А$2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block4_conv3_layer_call_and_return_conditional_losses_5671

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ї
Б
F__inference_block2_conv1_layer_call_and_return_conditional_losses_3729

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ppА2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
Л
ї
A__inference_dense_5_layer_call_and_return_conditional_losses_3978

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
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
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ї
a
C__inference_dropout_5_layer_call_and_return_conditional_losses_4013

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Л
є
A__inference_dense_7_layer_call_and_return_conditional_losses_5963

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5551

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
Вс
╟
__inference__wrapped_model_3539
input_2M
3model_1_block1_conv1_conv2d_readvariableop_resource:@B
4model_1_block1_conv1_biasadd_readvariableop_resource:@M
3model_1_block1_conv2_conv2d_readvariableop_resource:@@B
4model_1_block1_conv2_biasadd_readvariableop_resource:@N
3model_1_block2_conv1_conv2d_readvariableop_resource:@АC
4model_1_block2_conv1_biasadd_readvariableop_resource:	АO
3model_1_block2_conv2_conv2d_readvariableop_resource:ААC
4model_1_block2_conv2_biasadd_readvariableop_resource:	АO
3model_1_block3_conv1_conv2d_readvariableop_resource:ААC
4model_1_block3_conv1_biasadd_readvariableop_resource:	АO
3model_1_block3_conv2_conv2d_readvariableop_resource:ААC
4model_1_block3_conv2_biasadd_readvariableop_resource:	АO
3model_1_block3_conv3_conv2d_readvariableop_resource:ААC
4model_1_block3_conv3_biasadd_readvariableop_resource:	АO
3model_1_block4_conv1_conv2d_readvariableop_resource:ААC
4model_1_block4_conv1_biasadd_readvariableop_resource:	АO
3model_1_block4_conv2_conv2d_readvariableop_resource:ААC
4model_1_block4_conv2_biasadd_readvariableop_resource:	АO
3model_1_block4_conv3_conv2d_readvariableop_resource:ААC
4model_1_block4_conv3_biasadd_readvariableop_resource:	АO
3model_1_block5_conv1_conv2d_readvariableop_resource:ААC
4model_1_block5_conv1_biasadd_readvariableop_resource:	АO
3model_1_block5_conv2_conv2d_readvariableop_resource:ААC
4model_1_block5_conv2_biasadd_readvariableop_resource:	АO
3model_1_block5_conv3_conv2d_readvariableop_resource:ААC
4model_1_block5_conv3_biasadd_readvariableop_resource:	АB
.model_1_dense_4_matmul_readvariableop_resource:
А$А>
/model_1_dense_4_biasadd_readvariableop_resource:	АB
.model_1_dense_5_matmul_readvariableop_resource:
АА>
/model_1_dense_5_biasadd_readvariableop_resource:	АB
.model_1_dense_6_matmul_readvariableop_resource:
АА>
/model_1_dense_6_biasadd_readvariableop_resource:	АA
.model_1_dense_7_matmul_readvariableop_resource:	А=
/model_1_dense_7_biasadd_readvariableop_resource:
identityИв+model_1/block1_conv1/BiasAdd/ReadVariableOpв*model_1/block1_conv1/Conv2D/ReadVariableOpв+model_1/block1_conv2/BiasAdd/ReadVariableOpв*model_1/block1_conv2/Conv2D/ReadVariableOpв+model_1/block2_conv1/BiasAdd/ReadVariableOpв*model_1/block2_conv1/Conv2D/ReadVariableOpв+model_1/block2_conv2/BiasAdd/ReadVariableOpв*model_1/block2_conv2/Conv2D/ReadVariableOpв+model_1/block3_conv1/BiasAdd/ReadVariableOpв*model_1/block3_conv1/Conv2D/ReadVariableOpв+model_1/block3_conv2/BiasAdd/ReadVariableOpв*model_1/block3_conv2/Conv2D/ReadVariableOpв+model_1/block3_conv3/BiasAdd/ReadVariableOpв*model_1/block3_conv3/Conv2D/ReadVariableOpв+model_1/block4_conv1/BiasAdd/ReadVariableOpв*model_1/block4_conv1/Conv2D/ReadVariableOpв+model_1/block4_conv2/BiasAdd/ReadVariableOpв*model_1/block4_conv2/Conv2D/ReadVariableOpв+model_1/block4_conv3/BiasAdd/ReadVariableOpв*model_1/block4_conv3/Conv2D/ReadVariableOpв+model_1/block5_conv1/BiasAdd/ReadVariableOpв*model_1/block5_conv1/Conv2D/ReadVariableOpв+model_1/block5_conv2/BiasAdd/ReadVariableOpв*model_1/block5_conv2/Conv2D/ReadVariableOpв+model_1/block5_conv3/BiasAdd/ReadVariableOpв*model_1/block5_conv3/Conv2D/ReadVariableOpв&model_1/dense_4/BiasAdd/ReadVariableOpв%model_1/dense_4/MatMul/ReadVariableOpв&model_1/dense_5/BiasAdd/ReadVariableOpв%model_1/dense_5/MatMul/ReadVariableOpв&model_1/dense_6/BiasAdd/ReadVariableOpв%model_1/dense_6/MatMul/ReadVariableOpв&model_1/dense_7/BiasAdd/ReadVariableOpв%model_1/dense_7/MatMul/ReadVariableOp╘
*model_1/block1_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02,
*model_1/block1_conv1/Conv2D/ReadVariableOpх
model_1/block1_conv1/Conv2DConv2Dinput_22model_1/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
model_1/block1_conv1/Conv2D╦
+model_1/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+model_1/block1_conv1/BiasAdd/ReadVariableOp▐
model_1/block1_conv1/BiasAddBiasAdd$model_1/block1_conv1/Conv2D:output:03model_1/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2
model_1/block1_conv1/BiasAddб
model_1/block1_conv1/ReluRelu%model_1/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
model_1/block1_conv1/Relu╘
*model_1/block1_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02,
*model_1/block1_conv2/Conv2D/ReadVariableOpЕ
model_1/block1_conv2/Conv2DConv2D'model_1/block1_conv1/Relu:activations:02model_1/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
model_1/block1_conv2/Conv2D╦
+model_1/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+model_1/block1_conv2/BiasAdd/ReadVariableOp▐
model_1/block1_conv2/BiasAddBiasAdd$model_1/block1_conv2/Conv2D:output:03model_1/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2
model_1/block1_conv2/BiasAddб
model_1/block1_conv2/ReluRelu%model_1/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
model_1/block1_conv2/Relu█
model_1/block1_pool/MaxPoolMaxPool'model_1/block1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
2
model_1/block1_pool/MaxPool╒
*model_1/block2_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02,
*model_1/block2_conv1/Conv2D/ReadVariableOpБ
model_1/block2_conv1/Conv2DConv2D$model_1/block1_pool/MaxPool:output:02model_1/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
model_1/block2_conv1/Conv2D╠
+model_1/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block2_conv1/BiasAdd/ReadVariableOp▌
model_1/block2_conv1/BiasAddBiasAdd$model_1/block2_conv1/Conv2D:output:03model_1/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2
model_1/block2_conv1/BiasAddа
model_1/block2_conv1/ReluRelu%model_1/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
model_1/block2_conv1/Relu╓
*model_1/block2_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block2_conv2/Conv2D/ReadVariableOpД
model_1/block2_conv2/Conv2DConv2D'model_1/block2_conv1/Relu:activations:02model_1/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
model_1/block2_conv2/Conv2D╠
+model_1/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block2_conv2/BiasAdd/ReadVariableOp▌
model_1/block2_conv2/BiasAddBiasAdd$model_1/block2_conv2/Conv2D:output:03model_1/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2
model_1/block2_conv2/BiasAddа
model_1/block2_conv2/ReluRelu%model_1/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
model_1/block2_conv2/Relu▄
model_1/block2_pool/MaxPoolMaxPool'model_1/block2_conv2/Relu:activations:0*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
2
model_1/block2_pool/MaxPool╓
*model_1/block3_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block3_conv1/Conv2D/ReadVariableOpБ
model_1/block3_conv1/Conv2DConv2D$model_1/block2_pool/MaxPool:output:02model_1/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
model_1/block3_conv1/Conv2D╠
+model_1/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block3_conv1/BiasAdd/ReadVariableOp▌
model_1/block3_conv1/BiasAddBiasAdd$model_1/block3_conv1/Conv2D:output:03model_1/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2
model_1/block3_conv1/BiasAddа
model_1/block3_conv1/ReluRelu%model_1/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88А2
model_1/block3_conv1/Relu╓
*model_1/block3_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block3_conv2/Conv2D/ReadVariableOpД
model_1/block3_conv2/Conv2DConv2D'model_1/block3_conv1/Relu:activations:02model_1/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
model_1/block3_conv2/Conv2D╠
+model_1/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block3_conv2/BiasAdd/ReadVariableOp▌
model_1/block3_conv2/BiasAddBiasAdd$model_1/block3_conv2/Conv2D:output:03model_1/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2
model_1/block3_conv2/BiasAddа
model_1/block3_conv2/ReluRelu%model_1/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88А2
model_1/block3_conv2/Relu╓
*model_1/block3_conv3/Conv2D/ReadVariableOpReadVariableOp3model_1_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block3_conv3/Conv2D/ReadVariableOpД
model_1/block3_conv3/Conv2DConv2D'model_1/block3_conv2/Relu:activations:02model_1/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
model_1/block3_conv3/Conv2D╠
+model_1/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp4model_1_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block3_conv3/BiasAdd/ReadVariableOp▌
model_1/block3_conv3/BiasAddBiasAdd$model_1/block3_conv3/Conv2D:output:03model_1/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2
model_1/block3_conv3/BiasAddа
model_1/block3_conv3/ReluRelu%model_1/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88А2
model_1/block3_conv3/Relu▄
model_1/block3_pool/MaxPoolMaxPool'model_1/block3_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
model_1/block3_pool/MaxPool╓
*model_1/block4_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block4_conv1/Conv2D/ReadVariableOpБ
model_1/block4_conv1/Conv2DConv2D$model_1/block3_pool/MaxPool:output:02model_1/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
model_1/block4_conv1/Conv2D╠
+model_1/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block4_conv1/BiasAdd/ReadVariableOp▌
model_1/block4_conv1/BiasAddBiasAdd$model_1/block4_conv1/Conv2D:output:03model_1/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
model_1/block4_conv1/BiasAddа
model_1/block4_conv1/ReluRelu%model_1/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
model_1/block4_conv1/Relu╓
*model_1/block4_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block4_conv2/Conv2D/ReadVariableOpД
model_1/block4_conv2/Conv2DConv2D'model_1/block4_conv1/Relu:activations:02model_1/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
model_1/block4_conv2/Conv2D╠
+model_1/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block4_conv2/BiasAdd/ReadVariableOp▌
model_1/block4_conv2/BiasAddBiasAdd$model_1/block4_conv2/Conv2D:output:03model_1/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
model_1/block4_conv2/BiasAddа
model_1/block4_conv2/ReluRelu%model_1/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
model_1/block4_conv2/Relu╓
*model_1/block4_conv3/Conv2D/ReadVariableOpReadVariableOp3model_1_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block4_conv3/Conv2D/ReadVariableOpД
model_1/block4_conv3/Conv2DConv2D'model_1/block4_conv2/Relu:activations:02model_1/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
model_1/block4_conv3/Conv2D╠
+model_1/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp4model_1_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block4_conv3/BiasAdd/ReadVariableOp▌
model_1/block4_conv3/BiasAddBiasAdd$model_1/block4_conv3/Conv2D:output:03model_1/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
model_1/block4_conv3/BiasAddа
model_1/block4_conv3/ReluRelu%model_1/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
model_1/block4_conv3/Relu▄
model_1/block4_pool/MaxPoolMaxPool'model_1/block4_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
model_1/block4_pool/MaxPool╓
*model_1/block5_conv1/Conv2D/ReadVariableOpReadVariableOp3model_1_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block5_conv1/Conv2D/ReadVariableOpБ
model_1/block5_conv1/Conv2DConv2D$model_1/block4_pool/MaxPool:output:02model_1/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
model_1/block5_conv1/Conv2D╠
+model_1/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp4model_1_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block5_conv1/BiasAdd/ReadVariableOp▌
model_1/block5_conv1/BiasAddBiasAdd$model_1/block5_conv1/Conv2D:output:03model_1/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
model_1/block5_conv1/BiasAddа
model_1/block5_conv1/ReluRelu%model_1/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
model_1/block5_conv1/Relu╓
*model_1/block5_conv2/Conv2D/ReadVariableOpReadVariableOp3model_1_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block5_conv2/Conv2D/ReadVariableOpД
model_1/block5_conv2/Conv2DConv2D'model_1/block5_conv1/Relu:activations:02model_1/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
model_1/block5_conv2/Conv2D╠
+model_1/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp4model_1_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block5_conv2/BiasAdd/ReadVariableOp▌
model_1/block5_conv2/BiasAddBiasAdd$model_1/block5_conv2/Conv2D:output:03model_1/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
model_1/block5_conv2/BiasAddа
model_1/block5_conv2/ReluRelu%model_1/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
model_1/block5_conv2/Relu╓
*model_1/block5_conv3/Conv2D/ReadVariableOpReadVariableOp3model_1_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02,
*model_1/block5_conv3/Conv2D/ReadVariableOpД
model_1/block5_conv3/Conv2DConv2D'model_1/block5_conv2/Relu:activations:02model_1/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
model_1/block5_conv3/Conv2D╠
+model_1/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp4model_1_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+model_1/block5_conv3/BiasAdd/ReadVariableOp▌
model_1/block5_conv3/BiasAddBiasAdd$model_1/block5_conv3/Conv2D:output:03model_1/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2
model_1/block5_conv3/BiasAddа
model_1/block5_conv3/ReluRelu%model_1/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         А2
model_1/block5_conv3/Relu▄
model_1/block5_pool/MaxPoolMaxPool'model_1/block5_conv3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2
model_1/block5_pool/MaxPoolЄ
#model_1/average_pooling2d_1/AvgPoolAvgPool$model_1/block5_pool/MaxPool:output:0*
T0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2%
#model_1/average_pooling2d_1/AvgPool
model_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
model_1/flatten/Const╛
model_1/flatten/ReshapeReshape,model_1/average_pooling2d_1/AvgPool:output:0model_1/flatten/Const:output:0*
T0*(
_output_shapes
:         А$2
model_1/flatten/Reshape┐
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
А$А*
dtype02'
%model_1/dense_4/MatMul/ReadVariableOp╛
model_1/dense_4/MatMulMatMul model_1/flatten/Reshape:output:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_4/MatMul╜
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02(
&model_1/dense_4/BiasAdd/ReadVariableOp┬
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_4/BiasAddЙ
model_1/dense_4/ReluRelu model_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
model_1/dense_4/ReluЫ
model_1/dropout_3/IdentityIdentity"model_1/dense_4/Relu:activations:0*
T0*(
_output_shapes
:         А2
model_1/dropout_3/Identity┐
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02'
%model_1/dense_5/MatMul/ReadVariableOp┴
model_1/dense_5/MatMulMatMul#model_1/dropout_3/Identity:output:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_5/MatMul╜
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02(
&model_1/dense_5/BiasAdd/ReadVariableOp┬
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_5/BiasAddЙ
model_1/dense_5/ReluRelu model_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
model_1/dense_5/ReluЫ
model_1/dropout_4/IdentityIdentity"model_1/dense_5/Relu:activations:0*
T0*(
_output_shapes
:         А2
model_1/dropout_4/Identity┐
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02'
%model_1/dense_6/MatMul/ReadVariableOp┴
model_1/dense_6/MatMulMatMul#model_1/dropout_4/Identity:output:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_6/MatMul╜
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02(
&model_1/dense_6/BiasAdd/ReadVariableOp┬
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_6/BiasAddЙ
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
model_1/dense_6/ReluЫ
model_1/dropout_5/IdentityIdentity"model_1/dense_6/Relu:activations:0*
T0*(
_output_shapes
:         А2
model_1/dropout_5/Identity╛
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02'
%model_1/dense_7/MatMul/ReadVariableOp└
model_1/dense_7/MatMulMatMul#model_1/dropout_5/Identity:output:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model_1/dense_7/MatMul╝
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_1/dense_7/BiasAdd/ReadVariableOp┴
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model_1/dense_7/BiasAddС
model_1/dense_7/SoftmaxSoftmax model_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         2
model_1/dense_7/Softmax|
IdentityIdentity!model_1/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         2

Identity▒
NoOpNoOp,^model_1/block1_conv1/BiasAdd/ReadVariableOp+^model_1/block1_conv1/Conv2D/ReadVariableOp,^model_1/block1_conv2/BiasAdd/ReadVariableOp+^model_1/block1_conv2/Conv2D/ReadVariableOp,^model_1/block2_conv1/BiasAdd/ReadVariableOp+^model_1/block2_conv1/Conv2D/ReadVariableOp,^model_1/block2_conv2/BiasAdd/ReadVariableOp+^model_1/block2_conv2/Conv2D/ReadVariableOp,^model_1/block3_conv1/BiasAdd/ReadVariableOp+^model_1/block3_conv1/Conv2D/ReadVariableOp,^model_1/block3_conv2/BiasAdd/ReadVariableOp+^model_1/block3_conv2/Conv2D/ReadVariableOp,^model_1/block3_conv3/BiasAdd/ReadVariableOp+^model_1/block3_conv3/Conv2D/ReadVariableOp,^model_1/block4_conv1/BiasAdd/ReadVariableOp+^model_1/block4_conv1/Conv2D/ReadVariableOp,^model_1/block4_conv2/BiasAdd/ReadVariableOp+^model_1/block4_conv2/Conv2D/ReadVariableOp,^model_1/block4_conv3/BiasAdd/ReadVariableOp+^model_1/block4_conv3/Conv2D/ReadVariableOp,^model_1/block5_conv1/BiasAdd/ReadVariableOp+^model_1/block5_conv1/Conv2D/ReadVariableOp,^model_1/block5_conv2/BiasAdd/ReadVariableOp+^model_1/block5_conv2/Conv2D/ReadVariableOp,^model_1/block5_conv3/BiasAdd/ReadVariableOp+^model_1/block5_conv3/Conv2D/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+model_1/block1_conv1/BiasAdd/ReadVariableOp+model_1/block1_conv1/BiasAdd/ReadVariableOp2X
*model_1/block1_conv1/Conv2D/ReadVariableOp*model_1/block1_conv1/Conv2D/ReadVariableOp2Z
+model_1/block1_conv2/BiasAdd/ReadVariableOp+model_1/block1_conv2/BiasAdd/ReadVariableOp2X
*model_1/block1_conv2/Conv2D/ReadVariableOp*model_1/block1_conv2/Conv2D/ReadVariableOp2Z
+model_1/block2_conv1/BiasAdd/ReadVariableOp+model_1/block2_conv1/BiasAdd/ReadVariableOp2X
*model_1/block2_conv1/Conv2D/ReadVariableOp*model_1/block2_conv1/Conv2D/ReadVariableOp2Z
+model_1/block2_conv2/BiasAdd/ReadVariableOp+model_1/block2_conv2/BiasAdd/ReadVariableOp2X
*model_1/block2_conv2/Conv2D/ReadVariableOp*model_1/block2_conv2/Conv2D/ReadVariableOp2Z
+model_1/block3_conv1/BiasAdd/ReadVariableOp+model_1/block3_conv1/BiasAdd/ReadVariableOp2X
*model_1/block3_conv1/Conv2D/ReadVariableOp*model_1/block3_conv1/Conv2D/ReadVariableOp2Z
+model_1/block3_conv2/BiasAdd/ReadVariableOp+model_1/block3_conv2/BiasAdd/ReadVariableOp2X
*model_1/block3_conv2/Conv2D/ReadVariableOp*model_1/block3_conv2/Conv2D/ReadVariableOp2Z
+model_1/block3_conv3/BiasAdd/ReadVariableOp+model_1/block3_conv3/BiasAdd/ReadVariableOp2X
*model_1/block3_conv3/Conv2D/ReadVariableOp*model_1/block3_conv3/Conv2D/ReadVariableOp2Z
+model_1/block4_conv1/BiasAdd/ReadVariableOp+model_1/block4_conv1/BiasAdd/ReadVariableOp2X
*model_1/block4_conv1/Conv2D/ReadVariableOp*model_1/block4_conv1/Conv2D/ReadVariableOp2Z
+model_1/block4_conv2/BiasAdd/ReadVariableOp+model_1/block4_conv2/BiasAdd/ReadVariableOp2X
*model_1/block4_conv2/Conv2D/ReadVariableOp*model_1/block4_conv2/Conv2D/ReadVariableOp2Z
+model_1/block4_conv3/BiasAdd/ReadVariableOp+model_1/block4_conv3/BiasAdd/ReadVariableOp2X
*model_1/block4_conv3/Conv2D/ReadVariableOp*model_1/block4_conv3/Conv2D/ReadVariableOp2Z
+model_1/block5_conv1/BiasAdd/ReadVariableOp+model_1/block5_conv1/BiasAdd/ReadVariableOp2X
*model_1/block5_conv1/Conv2D/ReadVariableOp*model_1/block5_conv1/Conv2D/ReadVariableOp2Z
+model_1/block5_conv2/BiasAdd/ReadVariableOp+model_1/block5_conv2/BiasAdd/ReadVariableOp2X
*model_1/block5_conv2/Conv2D/ReadVariableOp*model_1/block5_conv2/Conv2D/ReadVariableOp2Z
+model_1/block5_conv3/BiasAdd/ReadVariableOp+model_1/block5_conv3/BiasAdd/ReadVariableOp2X
*model_1/block5_conv3/Conv2D/ReadVariableOp*model_1/block5_conv3/Conv2D/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_2
▓
b
C__inference_dropout_3_layer_call_and_return_conditional_losses_4200

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
в
в
+__inference_block2_conv1_layer_call_fn_5480

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_37292
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ppА2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
°
В
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5651

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Л
є
A__inference_dense_7_layer_call_and_return_conditional_losses_4026

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╛
D
(__inference_dropout_5_layer_call_fn_5921

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_40132
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▓
b
C__inference_dropout_5_layer_call_and_return_conditional_losses_4134

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╝
a
E__inference_block2_pool_layer_call_and_return_conditional_losses_3756

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         88А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ppА:X T
0
_output_shapes
:         ppА
 
_user_specified_nameinputs
°
В
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5511

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppА2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppА2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ppА2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ppА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ppА
 
_user_specified_nameinputs
е
a
E__inference_block2_pool_layer_call_and_return_conditional_losses_5526

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Л
ї
A__inference_dense_5_layer_call_and_return_conditional_losses_5869

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
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
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Є
Ц
&__inference_dense_6_layer_call_fn_5905

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCallЄ
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
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_40022
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Є
Ц
&__inference_dense_4_layer_call_fn_5811

inputs
unknown:
А$А
	unknown_0:	А
identityИвStatefulPartitionedCallЄ
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
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_39542
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А$: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А$
 
_user_specified_nameinputs
Л
ї
A__inference_dense_6_layer_call_and_return_conditional_losses_4002

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
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
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block5_conv1_layer_call_and_return_conditional_losses_5711

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ш∙
┬$
 __inference__traced_restore_6350
file_prefix>
$assignvariableop_block1_conv1_kernel:@2
$assignvariableop_1_block1_conv1_bias:@@
&assignvariableop_2_block1_conv2_kernel:@@2
$assignvariableop_3_block1_conv2_bias:@A
&assignvariableop_4_block2_conv1_kernel:@А3
$assignvariableop_5_block2_conv1_bias:	АB
&assignvariableop_6_block2_conv2_kernel:АА3
$assignvariableop_7_block2_conv2_bias:	АB
&assignvariableop_8_block3_conv1_kernel:АА3
$assignvariableop_9_block3_conv1_bias:	АC
'assignvariableop_10_block3_conv2_kernel:АА4
%assignvariableop_11_block3_conv2_bias:	АC
'assignvariableop_12_block3_conv3_kernel:АА4
%assignvariableop_13_block3_conv3_bias:	АC
'assignvariableop_14_block4_conv1_kernel:АА4
%assignvariableop_15_block4_conv1_bias:	АC
'assignvariableop_16_block4_conv2_kernel:АА4
%assignvariableop_17_block4_conv2_bias:	АC
'assignvariableop_18_block4_conv3_kernel:АА4
%assignvariableop_19_block4_conv3_bias:	АC
'assignvariableop_20_block5_conv1_kernel:АА4
%assignvariableop_21_block5_conv1_bias:	АC
'assignvariableop_22_block5_conv2_kernel:АА4
%assignvariableop_23_block5_conv2_bias:	АC
'assignvariableop_24_block5_conv3_kernel:АА4
%assignvariableop_25_block5_conv3_bias:	А6
"assignvariableop_26_dense_4_kernel:
А$А/
 assignvariableop_27_dense_4_bias:	А6
"assignvariableop_28_dense_5_kernel:
АА/
 assignvariableop_29_dense_5_bias:	А6
"assignvariableop_30_dense_6_kernel:
АА/
 assignvariableop_31_dense_6_bias:	А5
"assignvariableop_32_dense_7_kernel:	А.
 assignvariableop_33_dense_7_bias:'
assignvariableop_34_adam_iter:	 )
assignvariableop_35_adam_beta_1: )
assignvariableop_36_adam_beta_2: (
assignvariableop_37_adam_decay: 0
&assignvariableop_38_adam_learning_rate: #
assignvariableop_39_total: #
assignvariableop_40_count: %
assignvariableop_41_total_1: %
assignvariableop_42_count_1: =
)assignvariableop_43_adam_dense_4_kernel_m:
А$А6
'assignvariableop_44_adam_dense_4_bias_m:	А=
)assignvariableop_45_adam_dense_5_kernel_m:
АА6
'assignvariableop_46_adam_dense_5_bias_m:	А=
)assignvariableop_47_adam_dense_6_kernel_m:
АА6
'assignvariableop_48_adam_dense_6_bias_m:	А<
)assignvariableop_49_adam_dense_7_kernel_m:	А5
'assignvariableop_50_adam_dense_7_bias_m:=
)assignvariableop_51_adam_dense_4_kernel_v:
А$А6
'assignvariableop_52_adam_dense_4_bias_v:	А=
)assignvariableop_53_adam_dense_5_kernel_v:
АА6
'assignvariableop_54_adam_dense_5_bias_v:	А=
)assignvariableop_55_adam_dense_6_kernel_v:
АА6
'assignvariableop_56_adam_dense_6_bias_v:	А<
)assignvariableop_57_adam_dense_7_kernel_v:	А5
'assignvariableop_58_adam_dense_7_bias_v:
identity_60ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9А
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*М
valueВB <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЙ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Н
valueГBА<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices┌
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ж
_output_shapesє
Ё::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityг
AssignVariableOpAssignVariableOp$assignvariableop_block1_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1й
AssignVariableOp_1AssignVariableOp$assignvariableop_1_block1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2л
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block1_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3й
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block1_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4л
AssignVariableOp_4AssignVariableOp&assignvariableop_4_block2_conv1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5й
AssignVariableOp_5AssignVariableOp$assignvariableop_5_block2_conv1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6л
AssignVariableOp_6AssignVariableOp&assignvariableop_6_block2_conv2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7й
AssignVariableOp_7AssignVariableOp$assignvariableop_7_block2_conv2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8л
AssignVariableOp_8AssignVariableOp&assignvariableop_8_block3_conv1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9й
AssignVariableOp_9AssignVariableOp$assignvariableop_9_block3_conv1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10п
AssignVariableOp_10AssignVariableOp'assignvariableop_10_block3_conv2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11н
AssignVariableOp_11AssignVariableOp%assignvariableop_11_block3_conv2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12п
AssignVariableOp_12AssignVariableOp'assignvariableop_12_block3_conv3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13н
AssignVariableOp_13AssignVariableOp%assignvariableop_13_block3_conv3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14п
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block4_conv1_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15н
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block4_conv1_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16п
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block4_conv2_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17н
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block4_conv2_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18п
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block4_conv3_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19н
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block4_conv3_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20п
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block5_conv1_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21н
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block5_conv1_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22п
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block5_conv2_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23н
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block5_conv2_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24п
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block5_conv3_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25н
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block5_conv3_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26к
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_4_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27и
AssignVariableOp_27AssignVariableOp assignvariableop_27_dense_4_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28к
AssignVariableOp_28AssignVariableOp"assignvariableop_28_dense_5_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29и
AssignVariableOp_29AssignVariableOp assignvariableop_29_dense_5_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30к
AssignVariableOp_30AssignVariableOp"assignvariableop_30_dense_6_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31и
AssignVariableOp_31AssignVariableOp assignvariableop_31_dense_6_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32к
AssignVariableOp_32AssignVariableOp"assignvariableop_32_dense_7_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33и
AssignVariableOp_33AssignVariableOp assignvariableop_33_dense_7_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_34е
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_iterIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35з
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_beta_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36з
AssignVariableOp_36AssignVariableOpassignvariableop_36_adam_beta_2Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37ж
AssignVariableOp_37AssignVariableOpassignvariableop_37_adam_decayIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38о
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_learning_rateIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39б
AssignVariableOp_39AssignVariableOpassignvariableop_39_totalIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40б
AssignVariableOp_40AssignVariableOpassignvariableop_40_countIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41г
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42г
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43▒
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_4_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44п
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_4_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45▒
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_5_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46п
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_5_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47▒
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_6_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48п
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_6_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49▒
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_7_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50п
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_7_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51▒
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_4_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52п
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_4_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53▒
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_dense_5_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54п
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_dense_5_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55▒
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_6_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56п
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_6_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57▒
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_7_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58п
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_7_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_589
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЁ

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_59f
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_60╪

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_60Identity_60:output:0*Л
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
е
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_3614

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
└В
р
A__inference_model_1_layer_call_and_return_conditional_losses_4895
input_2+
block1_conv1_4799:@
block1_conv1_4801:@+
block1_conv2_4804:@@
block1_conv2_4806:@,
block2_conv1_4810:@А 
block2_conv1_4812:	А-
block2_conv2_4815:АА 
block2_conv2_4817:	А-
block3_conv1_4821:АА 
block3_conv1_4823:	А-
block3_conv2_4826:АА 
block3_conv2_4828:	А-
block3_conv3_4831:АА 
block3_conv3_4833:	А-
block4_conv1_4837:АА 
block4_conv1_4839:	А-
block4_conv2_4842:АА 
block4_conv2_4844:	А-
block4_conv3_4847:АА 
block4_conv3_4849:	А-
block5_conv1_4853:АА 
block5_conv1_4855:	А-
block5_conv2_4858:АА 
block5_conv2_4860:	А-
block5_conv3_4863:АА 
block5_conv3_4865:	А 
dense_4_4871:
А$А
dense_4_4873:	А 
dense_5_4877:
АА
dense_5_4879:	А 
dense_6_4883:
АА
dense_6_4885:	А
dense_7_4889:	А
dense_7_4891:
identityИв$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallв!dropout_4/StatefulPartitionedCallв!dropout_5/StatefulPartitionedCallн
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_2block1_conv1_4799block1_conv1_4801*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_36892&
$block1_conv1/StatefulPartitionedCall╙
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4804block1_conv2_4806*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_37062&
$block1_conv2/StatefulPartitionedCallК
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_37162
block1_pool/PartitionedCall╔
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4810block2_conv1_4812*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_37292&
$block2_conv1/StatefulPartitionedCall╥
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4815block2_conv2_4817*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_37462&
$block2_conv2/StatefulPartitionedCallЛ
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_37562
block2_pool/PartitionedCall╔
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4821block3_conv1_4823*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_37692&
$block3_conv1/StatefulPartitionedCall╥
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4826block3_conv2_4828*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_37862&
$block3_conv2/StatefulPartitionedCall╥
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4831block3_conv3_4833*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_38032&
$block3_conv3/StatefulPartitionedCallЛ
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_38132
block3_pool/PartitionedCall╔
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4837block4_conv1_4839*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_38262&
$block4_conv1/StatefulPartitionedCall╥
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_4842block4_conv2_4844*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_38432&
$block4_conv2/StatefulPartitionedCall╥
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_4847block4_conv3_4849*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_38602&
$block4_conv3/StatefulPartitionedCallЛ
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_38702
block4_pool/PartitionedCall╔
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_4853block5_conv1_4855*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_38832&
$block5_conv1/StatefulPartitionedCall╥
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_4858block5_conv2_4860*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_39002&
$block5_conv2/StatefulPartitionedCall╥
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_4863block5_conv3_4865*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_39172&
$block5_conv3/StatefulPartitionedCallЛ
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_39272
block5_pool/PartitionedCallЪ
#average_pooling2d_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_39332%
#average_pooling2d_1/PartitionedCallЎ
flatten/PartitionedCallPartitionedCall,average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_39412
flatten/PartitionedCallд
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_4871dense_4_4873*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_39542!
dense_4/StatefulPartitionedCallР
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_42002#
!dropout_3/StatefulPartitionedCallо
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_5_4877dense_5_4879*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_39782!
dense_5/StatefulPartitionedCall┤
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_41672#
!dropout_4/StatefulPartitionedCallо
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_6_4883dense_6_4885*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_40022!
dense_6/StatefulPartitionedCall┤
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_41342#
!dropout_5/StatefulPartitionedCallн
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_7_4889dense_7_4891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_40262!
dense_7/StatefulPartitionedCallГ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╜
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_2
╛
D
(__inference_dropout_4_layer_call_fn_5874

inputs
identity┬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_39892
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ж
а
+__inference_block1_conv2_layer_call_fn_5440

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_37062
StatefulPartitionedCallЕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         рр@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
 
Ь	
&__inference_model_1_layer_call_fn_5049

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:
А$А

unknown_26:	А

unknown_27:
АА

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИвStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_40332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
Ї
a
C__inference_dropout_4_layer_call_and_return_conditional_losses_5884

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ш}
Ї
A__inference_model_1_layer_call_and_return_conditional_losses_4796
input_2+
block1_conv1_4700:@
block1_conv1_4702:@+
block1_conv2_4705:@@
block1_conv2_4707:@,
block2_conv1_4711:@А 
block2_conv1_4713:	А-
block2_conv2_4716:АА 
block2_conv2_4718:	А-
block3_conv1_4722:АА 
block3_conv1_4724:	А-
block3_conv2_4727:АА 
block3_conv2_4729:	А-
block3_conv3_4732:АА 
block3_conv3_4734:	А-
block4_conv1_4738:АА 
block4_conv1_4740:	А-
block4_conv2_4743:АА 
block4_conv2_4745:	А-
block4_conv3_4748:АА 
block4_conv3_4750:	А-
block5_conv1_4754:АА 
block5_conv1_4756:	А-
block5_conv2_4759:АА 
block5_conv2_4761:	А-
block5_conv3_4764:АА 
block5_conv3_4766:	А 
dense_4_4772:
А$А
dense_4_4774:	А 
dense_5_4778:
АА
dense_5_4780:	А 
dense_6_4784:
АА
dense_6_4786:	А
dense_7_4790:	А
dense_7_4792:
identityИв$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallн
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_2block1_conv1_4700block1_conv1_4702*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_36892&
$block1_conv1/StatefulPartitionedCall╙
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4705block1_conv2_4707*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_37062&
$block1_conv2/StatefulPartitionedCallК
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_37162
block1_pool/PartitionedCall╔
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4711block2_conv1_4713*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_37292&
$block2_conv1/StatefulPartitionedCall╥
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4716block2_conv2_4718*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_37462&
$block2_conv2/StatefulPartitionedCallЛ
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_37562
block2_pool/PartitionedCall╔
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4722block3_conv1_4724*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_37692&
$block3_conv1/StatefulPartitionedCall╥
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4727block3_conv2_4729*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_37862&
$block3_conv2/StatefulPartitionedCall╥
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4732block3_conv3_4734*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_38032&
$block3_conv3/StatefulPartitionedCallЛ
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_38132
block3_pool/PartitionedCall╔
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4738block4_conv1_4740*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_38262&
$block4_conv1/StatefulPartitionedCall╥
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_4743block4_conv2_4745*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_38432&
$block4_conv2/StatefulPartitionedCall╥
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_4748block4_conv3_4750*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_38602&
$block4_conv3/StatefulPartitionedCallЛ
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_38702
block4_pool/PartitionedCall╔
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_4754block5_conv1_4756*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_38832&
$block5_conv1/StatefulPartitionedCall╥
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_4759block5_conv2_4761*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_39002&
$block5_conv2/StatefulPartitionedCall╥
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_4764block5_conv3_4766*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_39172&
$block5_conv3/StatefulPartitionedCallЛ
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_39272
block5_pool/PartitionedCallЪ
#average_pooling2d_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_39332%
#average_pooling2d_1/PartitionedCallЎ
flatten/PartitionedCallPartitionedCall,average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_39412
flatten/PartitionedCallд
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_4772dense_4_4774*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_39542!
dense_4/StatefulPartitionedCall°
dropout_3/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_39652
dropout_3/PartitionedCallж
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_5_4778dense_5_4780*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_39782!
dense_5/StatefulPartitionedCall°
dropout_4/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_39892
dropout_4/PartitionedCallж
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_6_4784dense_6_4786*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_40022!
dense_6/StatefulPartitionedCall°
dropout_5/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_40132
dropout_5/PartitionedCallе
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_7_4790dense_7_4792*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_40262!
dense_7/StatefulPartitionedCallГ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╤
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_2
е
г
+__inference_block4_conv1_layer_call_fn_5620

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_38262
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ї
a
C__inference_dropout_5_layer_call_and_return_conditional_losses_5931

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
°
В
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5591

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         88А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
▓
b
C__inference_dropout_5_layer_call_and_return_conditional_losses_5943

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
а
a
(__inference_dropout_4_layer_call_fn_5879

inputs
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_41672
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╝
a
E__inference_block3_pool_layer_call_and_return_conditional_losses_3813

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         88А:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
╦
F
*__inference_block1_pool_layer_call_fn_5456

inputs
identityц
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
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_35482
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
а
a
(__inference_dropout_5_layer_call_fn_5926

inputs
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_41342
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
В
Э	
&__inference_model_1_layer_call_fn_4104
input_2!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:
А$А

unknown_26:	А

unknown_27:
АА

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_40332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_2
╜В
▀
A__inference_model_1_layer_call_and_return_conditional_losses_4553

inputs+
block1_conv1_4457:@
block1_conv1_4459:@+
block1_conv2_4462:@@
block1_conv2_4464:@,
block2_conv1_4468:@А 
block2_conv1_4470:	А-
block2_conv2_4473:АА 
block2_conv2_4475:	А-
block3_conv1_4479:АА 
block3_conv1_4481:	А-
block3_conv2_4484:АА 
block3_conv2_4486:	А-
block3_conv3_4489:АА 
block3_conv3_4491:	А-
block4_conv1_4495:АА 
block4_conv1_4497:	А-
block4_conv2_4500:АА 
block4_conv2_4502:	А-
block4_conv3_4505:АА 
block4_conv3_4507:	А-
block5_conv1_4511:АА 
block5_conv1_4513:	А-
block5_conv2_4516:АА 
block5_conv2_4518:	А-
block5_conv3_4521:АА 
block5_conv3_4523:	А 
dense_4_4529:
А$А
dense_4_4531:	А 
dense_5_4535:
АА
dense_5_4537:	А 
dense_6_4541:
АА
dense_6_4543:	А
dense_7_4547:	А
dense_7_4549:
identityИв$block1_conv1/StatefulPartitionedCallв$block1_conv2/StatefulPartitionedCallв$block2_conv1/StatefulPartitionedCallв$block2_conv2/StatefulPartitionedCallв$block3_conv1/StatefulPartitionedCallв$block3_conv2/StatefulPartitionedCallв$block3_conv3/StatefulPartitionedCallв$block4_conv1/StatefulPartitionedCallв$block4_conv2/StatefulPartitionedCallв$block4_conv3/StatefulPartitionedCallв$block5_conv1/StatefulPartitionedCallв$block5_conv2/StatefulPartitionedCallв$block5_conv3/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallв!dropout_4/StatefulPartitionedCallв!dropout_5/StatefulPartitionedCallм
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_4457block1_conv1_4459*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_36892&
$block1_conv1/StatefulPartitionedCall╙
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4462block1_conv2_4464*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         рр@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_37062&
$block1_conv2/StatefulPartitionedCallК
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_37162
block1_pool/PartitionedCall╔
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4468block2_conv1_4470*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_37292&
$block2_conv1/StatefulPartitionedCall╥
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4473block2_conv2_4475*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_37462&
$block2_conv2/StatefulPartitionedCallЛ
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_37562
block2_pool/PartitionedCall╔
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4479block3_conv1_4481*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_37692&
$block3_conv1/StatefulPartitionedCall╥
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4484block3_conv2_4486*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_37862&
$block3_conv2/StatefulPartitionedCall╥
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4489block3_conv3_4491*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_38032&
$block3_conv3/StatefulPartitionedCallЛ
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_38132
block3_pool/PartitionedCall╔
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4495block4_conv1_4497*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_38262&
$block4_conv1/StatefulPartitionedCall╥
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_4500block4_conv2_4502*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_38432&
$block4_conv2/StatefulPartitionedCall╥
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_4505block4_conv3_4507*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_38602&
$block4_conv3/StatefulPartitionedCallЛ
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_38702
block4_pool/PartitionedCall╔
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_4511block5_conv1_4513*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_38832&
$block5_conv1/StatefulPartitionedCall╥
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_4516block5_conv2_4518*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_39002&
$block5_conv2/StatefulPartitionedCall╥
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_4521block5_conv3_4523*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_39172&
$block5_conv3/StatefulPartitionedCallЛ
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_39272
block5_pool/PartitionedCallЪ
#average_pooling2d_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_39332%
#average_pooling2d_1/PartitionedCallЎ
flatten/PartitionedCallPartitionedCall,average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_39412
flatten/PartitionedCallд
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_4529dense_4_4531*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_39542!
dense_4/StatefulPartitionedCallР
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_42002#
!dropout_3/StatefulPartitionedCallо
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_5_4535dense_5_4537*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_39782!
dense_5/StatefulPartitionedCall┤
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_41672#
!dropout_4/StatefulPartitionedCallо
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_6_4541dense_6_4543*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_6_layer_call_and_return_conditional_losses_40022!
dense_6/StatefulPartitionedCall┤
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_5_layer_call_and_return_conditional_losses_41342#
!dropout_5/StatefulPartitionedCallн
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_7_4547dense_7_4549*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_40262!
dense_7/StatefulPartitionedCallГ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity╜
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:Y U
1
_output_shapes
:         рр
 
_user_specified_nameinputs
Л
ї
A__inference_dense_6_layer_call_and_return_conditional_losses_5916

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
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
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╝
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_3870

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╦
F
*__inference_block2_pool_layer_call_fn_5516

inputs
identityц
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
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_35702
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
°
 
F__inference_block1_conv2_layer_call_and_return_conditional_losses_3706

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         рр@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         рр@2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         рр@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         рр@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         рр@
 
_user_specified_nameinputs
кs
╘
__inference__traced_save_6163
file_prefix2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
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
ShardedFilename·
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*М
valueВB <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesГ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Н
valueГBА<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesє
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<	2
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

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*с
_input_shapes╧
╠: :@:@:@@:@:@А:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:
А$А:А:
АА:А:
АА:А:	А:: : : : : : : : : :
А$А:А:
АА:А:
АА:А:	А::
А$А:А:
АА:А:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
А$А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:! 

_output_shapes	
:А:%!!

_output_shapes
:	А: "

_output_shapes
::#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :&,"
 
_output_shapes
:
А$А:!-

_output_shapes	
:А:&."
 
_output_shapes
:
АА:!/

_output_shapes	
:А:&0"
 
_output_shapes
:
АА:!1

_output_shapes	
:А:%2!

_output_shapes
:	А: 3

_output_shapes
::&4"
 
_output_shapes
:
А$А:!5

_output_shapes	
:А:&6"
 
_output_shapes
:
АА:!7

_output_shapes	
:А:&8"
 
_output_shapes
:
АА:!9

_output_shapes	
:А:%:!

_output_shapes
:	А: ;

_output_shapes
::<

_output_shapes
: 
▄
Щ	
"__inference_signature_wrapper_4976
input_2!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А%
	unknown_9:АА

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А&

unknown_15:АА

unknown_16:	А&

unknown_17:АА

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:
А$А

unknown_26:	А

unknown_27:
АА

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИвStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_35392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:         рр: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         рр
!
_user_specified_name	input_2
°
В
F__inference_block4_conv2_layer_call_and_return_conditional_losses_3843

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
═
i
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_3933

inputs
identityЬ
AvgPoolAvgPoolinputs*
T0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
AvgPoolm
IdentityIdentityAvgPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╝
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_5691

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Є
Ц
&__inference_dense_5_layer_call_fn_5858

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCallЄ
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
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_39782
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╝
a
E__inference_block2_pool_layer_call_and_return_conditional_losses_5531

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:         88А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:         88А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ppА:X T
0
_output_shapes
:         ppА
 
_user_specified_nameinputs
е
a
E__inference_block3_pool_layer_call_and_return_conditional_losses_5606

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
е
a
E__inference_block1_pool_layer_call_and_return_conditional_losses_3548

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
е
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_3636

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
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓
b
C__inference_dropout_4_layer_call_and_return_conditional_losses_5896

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
е
г
+__inference_block3_conv3_layer_call_fn_5580

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_38032
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         88А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         88А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         88А
 
_user_specified_nameinputs
Ї
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_3965

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╩
B
&__inference_flatten_layer_call_fn_5796

inputs
identity└
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_39412
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ю
Ф
&__inference_dense_7_layer_call_fn_5952

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_40262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
е
г
+__inference_block4_conv2_layer_call_fn_5640

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_38432
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
е
г
+__inference_block5_conv2_layer_call_fn_5720

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_39002
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
т
F
*__inference_block4_pool_layer_call_fn_5681

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_38702
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs"иL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┤
serving_defaultа
E
input_2:
serving_default_input_2:0         рр;
dense_70
StatefulPartitionedCall:0         tensorflow/serving/predict:х▒
е
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
layer-19
layer-20
layer_with_weights-13
layer-21
layer-22
layer_with_weights-14
layer-23
layer-24
layer_with_weights-15
layer-25
layer-26
layer_with_weights-16
layer-27
	optimizer
regularization_losses
trainable_variables
 	variables
!	keras_api
"
signatures
▌__call__
+▐&call_and_return_all_conditional_losses
▀_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
╜

#kernel
$bias
%regularization_losses
&trainable_variables
'	variables
(	keras_api
р__call__
+с&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

)kernel
*bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
т__call__
+у&call_and_return_all_conditional_losses"
_tf_keras_layer
з
/regularization_losses
0trainable_variables
1	variables
2	keras_api
ф__call__
+х&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

3kernel
4bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
ц__call__
+ч&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

9kernel
:bias
;regularization_losses
<trainable_variables
=	variables
>	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses"
_tf_keras_layer
з
?regularization_losses
@trainable_variables
A	variables
B	keras_api
ъ__call__
+ы&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

Ckernel
Dbias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
ь__call__
+э&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

Ikernel
Jbias
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
ю__call__
+я&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

Okernel
Pbias
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
Ё__call__
+ё&call_and_return_all_conditional_losses"
_tf_keras_layer
з
Uregularization_losses
Vtrainable_variables
W	variables
X	keras_api
Є__call__
+є&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

Ykernel
Zbias
[regularization_losses
\trainable_variables
]	variables
^	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

_kernel
`bias
aregularization_losses
btrainable_variables
c	variables
d	keras_api
Ў__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

ekernel
fbias
gregularization_losses
htrainable_variables
i	variables
j	keras_api
°__call__
+∙&call_and_return_all_conditional_losses"
_tf_keras_layer
з
kregularization_losses
ltrainable_variables
m	variables
n	keras_api
·__call__
+√&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

okernel
pbias
qregularization_losses
rtrainable_variables
s	variables
t	keras_api
№__call__
+¤&call_and_return_all_conditional_losses"
_tf_keras_layer
╜

ukernel
vbias
wregularization_losses
xtrainable_variables
y	variables
z	keras_api
■__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
╛

{kernel
|bias
}regularization_losses
~trainable_variables
	variables
А	keras_api
А__call__
+Б&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Бregularization_losses
Вtrainable_variables
Г	variables
Д	keras_api
В__call__
+Г&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Еregularization_losses
Жtrainable_variables
З	variables
И	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Йregularization_losses
Кtrainable_variables
Л	variables
М	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Нkernel
	Оbias
Пregularization_losses
Рtrainable_variables
С	variables
Т	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Уregularization_losses
Фtrainable_variables
Х	variables
Ц	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Чkernel
	Шbias
Щregularization_losses
Ъtrainable_variables
Ы	variables
Ь	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Эregularization_losses
Юtrainable_variables
Я	variables
а	keras_api
О__call__
+П&call_and_return_all_conditional_losses"
_tf_keras_layer
├
бkernel
	вbias
гregularization_losses
дtrainable_variables
е	variables
ж	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"
_tf_keras_layer
л
зregularization_losses
иtrainable_variables
й	variables
к	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"
_tf_keras_layer
├
лkernel
	мbias
нregularization_losses
оtrainable_variables
п	variables
░	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses"
_tf_keras_layer
И
	▒iter
▓beta_1
│beta_2

┤decay
╡learning_rate	Нm═	Оm╬	Чm╧	Шm╨	бm╤	вm╥	лm╙	мm╘	Нv╒	Оv╓	Чv╫	Шv╪	бv┘	вv┌	лv█	мv▄"
	optimizer
 "
trackable_list_wrapper
`
Н0
О1
Ч2
Ш3
б4
в5
л6
м7"
trackable_list_wrapper
о
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25
Н26
О27
Ч28
Ш29
б30
в31
л32
м33"
trackable_list_wrapper
╙
╢non_trainable_variables
regularization_losses
 ╖layer_regularization_losses
╕metrics
trainable_variables
╣layer_metrics
║layers
 	variables
▌__call__
▀_default_save_signature
+▐&call_and_return_all_conditional_losses
'▐"call_and_return_conditional_losses"
_generic_user_object
-
Цserving_default"
signature_map
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
╡
╗non_trainable_variables
╝metrics
 ╜layer_regularization_losses
%regularization_losses
&trainable_variables
╛layer_metrics
┐layers
'	variables
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
╡
└non_trainable_variables
┴metrics
 ┬layer_regularization_losses
+regularization_losses
,trainable_variables
├layer_metrics
─layers
-	variables
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
┼non_trainable_variables
╞metrics
 ╟layer_regularization_losses
/regularization_losses
0trainable_variables
╚layer_metrics
╔layers
1	variables
ф__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
.:,@А2block2_conv1/kernel
 :А2block2_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
╡
╩non_trainable_variables
╦metrics
 ╠layer_regularization_losses
5regularization_losses
6trainable_variables
═layer_metrics
╬layers
7	variables
ц__call__
+ч&call_and_return_all_conditional_losses
'ч"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block2_conv2/kernel
 :А2block2_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
╡
╧non_trainable_variables
╨metrics
 ╤layer_regularization_losses
;regularization_losses
<trainable_variables
╥layer_metrics
╙layers
=	variables
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╘non_trainable_variables
╒metrics
 ╓layer_regularization_losses
?regularization_losses
@trainable_variables
╫layer_metrics
╪layers
A	variables
ъ__call__
+ы&call_and_return_all_conditional_losses
'ы"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block3_conv1/kernel
 :А2block3_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
╡
┘non_trainable_variables
┌metrics
 █layer_regularization_losses
Eregularization_losses
Ftrainable_variables
▄layer_metrics
▌layers
G	variables
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block3_conv2/kernel
 :А2block3_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
╡
▐non_trainable_variables
▀metrics
 рlayer_regularization_losses
Kregularization_losses
Ltrainable_variables
сlayer_metrics
тlayers
M	variables
ю__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block3_conv3/kernel
 :А2block3_conv3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
╡
уnon_trainable_variables
фmetrics
 хlayer_regularization_losses
Qregularization_losses
Rtrainable_variables
цlayer_metrics
чlayers
S	variables
Ё__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
шnon_trainable_variables
щmetrics
 ъlayer_regularization_losses
Uregularization_losses
Vtrainable_variables
ыlayer_metrics
ьlayers
W	variables
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block4_conv1/kernel
 :А2block4_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
╡
эnon_trainable_variables
юmetrics
 яlayer_regularization_losses
[regularization_losses
\trainable_variables
Ёlayer_metrics
ёlayers
]	variables
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block4_conv2/kernel
 :А2block4_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
╡
Єnon_trainable_variables
єmetrics
 Їlayer_regularization_losses
aregularization_losses
btrainable_variables
їlayer_metrics
Ўlayers
c	variables
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block4_conv3/kernel
 :А2block4_conv3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
╡
ўnon_trainable_variables
°metrics
 ∙layer_regularization_losses
gregularization_losses
htrainable_variables
·layer_metrics
√layers
i	variables
°__call__
+∙&call_and_return_all_conditional_losses
'∙"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
№non_trainable_variables
¤metrics
 ■layer_regularization_losses
kregularization_losses
ltrainable_variables
 layer_metrics
Аlayers
m	variables
·__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block5_conv1/kernel
 :А2block5_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
╡
Бnon_trainable_variables
Вmetrics
 Гlayer_regularization_losses
qregularization_losses
rtrainable_variables
Дlayer_metrics
Еlayers
s	variables
№__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
/:-АА2block5_conv2/kernel
 :А2block5_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
╡
Жnon_trainable_variables
Зmetrics
 Иlayer_regularization_losses
wregularization_losses
xtrainable_variables
Йlayer_metrics
Кlayers
y	variables
■__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
/:-АА2block5_conv3/kernel
 :А2block5_conv3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
╡
Лnon_trainable_variables
Мmetrics
 Нlayer_regularization_losses
}regularization_losses
~trainable_variables
Оlayer_metrics
Пlayers
	variables
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Рnon_trainable_variables
Сmetrics
 Тlayer_regularization_losses
Бregularization_losses
Вtrainable_variables
Уlayer_metrics
Фlayers
Г	variables
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Хnon_trainable_variables
Цmetrics
 Чlayer_regularization_losses
Еregularization_losses
Жtrainable_variables
Шlayer_metrics
Щlayers
З	variables
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ъnon_trainable_variables
Ыmetrics
 Ьlayer_regularization_losses
Йregularization_losses
Кtrainable_variables
Эlayer_metrics
Юlayers
Л	variables
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
": 
А$А2dense_4/kernel
:А2dense_4/bias
 "
trackable_list_wrapper
0
Н0
О1"
trackable_list_wrapper
0
Н0
О1"
trackable_list_wrapper
╕
Яnon_trainable_variables
аmetrics
 бlayer_regularization_losses
Пregularization_losses
Рtrainable_variables
вlayer_metrics
гlayers
С	variables
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
дnon_trainable_variables
еmetrics
 жlayer_regularization_losses
Уregularization_losses
Фtrainable_variables
зlayer_metrics
иlayers
Х	variables
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
": 
АА2dense_5/kernel
:А2dense_5/bias
 "
trackable_list_wrapper
0
Ч0
Ш1"
trackable_list_wrapper
0
Ч0
Ш1"
trackable_list_wrapper
╕
йnon_trainable_variables
кmetrics
 лlayer_regularization_losses
Щregularization_losses
Ъtrainable_variables
мlayer_metrics
нlayers
Ы	variables
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
оnon_trainable_variables
пmetrics
 ░layer_regularization_losses
Эregularization_losses
Юtrainable_variables
▒layer_metrics
▓layers
Я	variables
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
": 
АА2dense_6/kernel
:А2dense_6/bias
 "
trackable_list_wrapper
0
б0
в1"
trackable_list_wrapper
0
б0
в1"
trackable_list_wrapper
╕
│non_trainable_variables
┤metrics
 ╡layer_regularization_losses
гregularization_losses
дtrainable_variables
╢layer_metrics
╖layers
е	variables
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╕non_trainable_variables
╣metrics
 ║layer_regularization_losses
зregularization_losses
иtrainable_variables
╗layer_metrics
╝layers
й	variables
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
!:	А2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper
0
л0
м1"
trackable_list_wrapper
0
л0
м1"
trackable_list_wrapper
╕
╜non_trainable_variables
╛metrics
 ┐layer_regularization_losses
нregularization_losses
оtrainable_variables
└layer_metrics
┴layers
п	variables
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ц
#0
$1
)2
*3
34
45
96
:7
C8
D9
I10
J11
O12
P13
Y14
Z15
_16
`17
e18
f19
o20
p21
u22
v23
{24
|25"
trackable_list_wrapper
 "
trackable_list_wrapper
0
┬0
├1"
trackable_list_wrapper
 "
trackable_dict_wrapper
Ў
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
)0
*1"
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
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
90
:1"
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
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
O0
P1"
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
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
e0
f1"
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
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
{0
|1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
R

─total

┼count
╞	variables
╟	keras_api"
_tf_keras_metric
c

╚total

╔count
╩
_fn_kwargs
╦	variables
╠	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
─0
┼1"
trackable_list_wrapper
.
╞	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
╚0
╔1"
trackable_list_wrapper
.
╦	variables"
_generic_user_object
':%
А$А2Adam/dense_4/kernel/m
 :А2Adam/dense_4/bias/m
':%
АА2Adam/dense_5/kernel/m
 :А2Adam/dense_5/bias/m
':%
АА2Adam/dense_6/kernel/m
 :А2Adam/dense_6/bias/m
&:$	А2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
':%
А$А2Adam/dense_4/kernel/v
 :А2Adam/dense_4/bias/v
':%
АА2Adam/dense_5/kernel/v
 :А2Adam/dense_5/bias/v
':%
АА2Adam/dense_6/kernel/v
 :А2Adam/dense_6/bias/v
&:$	А2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
ц2у
&__inference_model_1_layer_call_fn_4104
&__inference_model_1_layer_call_fn_5049
&__inference_model_1_layer_call_fn_5122
&__inference_model_1_layer_call_fn_4697└
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
╥2╧
A__inference_model_1_layer_call_and_return_conditional_losses_5256
A__inference_model_1_layer_call_and_return_conditional_losses_5411
A__inference_model_1_layer_call_and_return_conditional_losses_4796
A__inference_model_1_layer_call_and_return_conditional_losses_4895└
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
╩B╟
__inference__wrapped_model_3539input_2"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_block1_conv1_layer_call_fn_5420в
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
Ё2э
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5431в
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
╒2╥
+__inference_block1_conv2_layer_call_fn_5440в
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
Ё2э
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5451в
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
А2¤
*__inference_block1_pool_layer_call_fn_5456
*__inference_block1_pool_layer_call_fn_5461в
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
╢2│
E__inference_block1_pool_layer_call_and_return_conditional_losses_5466
E__inference_block1_pool_layer_call_and_return_conditional_losses_5471в
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
╒2╥
+__inference_block2_conv1_layer_call_fn_5480в
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
Ё2э
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5491в
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
╒2╥
+__inference_block2_conv2_layer_call_fn_5500в
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
Ё2э
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5511в
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
А2¤
*__inference_block2_pool_layer_call_fn_5516
*__inference_block2_pool_layer_call_fn_5521в
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
╢2│
E__inference_block2_pool_layer_call_and_return_conditional_losses_5526
E__inference_block2_pool_layer_call_and_return_conditional_losses_5531в
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
╒2╥
+__inference_block3_conv1_layer_call_fn_5540в
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
Ё2э
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5551в
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
╒2╥
+__inference_block3_conv2_layer_call_fn_5560в
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
Ё2э
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5571в
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
╒2╥
+__inference_block3_conv3_layer_call_fn_5580в
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
Ё2э
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5591в
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
А2¤
*__inference_block3_pool_layer_call_fn_5596
*__inference_block3_pool_layer_call_fn_5601в
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
╢2│
E__inference_block3_pool_layer_call_and_return_conditional_losses_5606
E__inference_block3_pool_layer_call_and_return_conditional_losses_5611в
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
╒2╥
+__inference_block4_conv1_layer_call_fn_5620в
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
Ё2э
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5631в
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
╒2╥
+__inference_block4_conv2_layer_call_fn_5640в
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
Ё2э
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5651в
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
╒2╥
+__inference_block4_conv3_layer_call_fn_5660в
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
Ё2э
F__inference_block4_conv3_layer_call_and_return_conditional_losses_5671в
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
А2¤
*__inference_block4_pool_layer_call_fn_5676
*__inference_block4_pool_layer_call_fn_5681в
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
╢2│
E__inference_block4_pool_layer_call_and_return_conditional_losses_5686
E__inference_block4_pool_layer_call_and_return_conditional_losses_5691в
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
╒2╥
+__inference_block5_conv1_layer_call_fn_5700в
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
Ё2э
F__inference_block5_conv1_layer_call_and_return_conditional_losses_5711в
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
╒2╥
+__inference_block5_conv2_layer_call_fn_5720в
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
Ё2э
F__inference_block5_conv2_layer_call_and_return_conditional_losses_5731в
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
╒2╥
+__inference_block5_conv3_layer_call_fn_5740в
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
Ё2э
F__inference_block5_conv3_layer_call_and_return_conditional_losses_5751в
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
А2¤
*__inference_block5_pool_layer_call_fn_5756
*__inference_block5_pool_layer_call_fn_5761в
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
╢2│
E__inference_block5_pool_layer_call_and_return_conditional_losses_5766
E__inference_block5_pool_layer_call_and_return_conditional_losses_5771в
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
Р2Н
2__inference_average_pooling2d_1_layer_call_fn_5776
2__inference_average_pooling2d_1_layer_call_fn_5781в
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
╞2├
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_5786
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_5791в
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
╨2═
&__inference_flatten_layer_call_fn_5796в
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
ы2ш
A__inference_flatten_layer_call_and_return_conditional_losses_5802в
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
╨2═
&__inference_dense_4_layer_call_fn_5811в
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
ы2ш
A__inference_dense_4_layer_call_and_return_conditional_losses_5822в
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
О2Л
(__inference_dropout_3_layer_call_fn_5827
(__inference_dropout_3_layer_call_fn_5832┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
─2┴
C__inference_dropout_3_layer_call_and_return_conditional_losses_5837
C__inference_dropout_3_layer_call_and_return_conditional_losses_5849┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╨2═
&__inference_dense_5_layer_call_fn_5858в
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
ы2ш
A__inference_dense_5_layer_call_and_return_conditional_losses_5869в
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
О2Л
(__inference_dropout_4_layer_call_fn_5874
(__inference_dropout_4_layer_call_fn_5879┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
─2┴
C__inference_dropout_4_layer_call_and_return_conditional_losses_5884
C__inference_dropout_4_layer_call_and_return_conditional_losses_5896┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╨2═
&__inference_dense_6_layer_call_fn_5905в
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
ы2ш
A__inference_dense_6_layer_call_and_return_conditional_losses_5916в
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
О2Л
(__inference_dropout_5_layer_call_fn_5921
(__inference_dropout_5_layer_call_fn_5926┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
─2┴
C__inference_dropout_5_layer_call_and_return_conditional_losses_5931
C__inference_dropout_5_layer_call_and_return_conditional_losses_5943┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╨2═
&__inference_dense_7_layer_call_fn_5952в
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
ы2ш
A__inference_dense_7_layer_call_and_return_conditional_losses_5963в
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
╔B╞
"__inference_signature_wrapper_4976input_2"Ф
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
 ┐
__inference__wrapped_model_3539Ы*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлм:в7
0в-
+К(
input_2         рр
к "1к.
,
dense_7!К
dense_7         Ё
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_5786ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╗
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_5791j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ ╚
2__inference_average_pooling2d_1_layer_call_fn_5776СRвO
HвE
CК@
inputs4                                    
к ";К84                                    У
2__inference_average_pooling2d_1_layer_call_fn_5781]8в5
.в+
)К&
inputs         А
к "!К         А║
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5431p#$9в6
/в,
*К'
inputs         рр
к "/в,
%К"
0         рр@
Ъ Т
+__inference_block1_conv1_layer_call_fn_5420c#$9в6
/в,
*К'
inputs         рр
к ""К         рр@║
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5451p)*9в6
/в,
*К'
inputs         рр@
к "/в,
%К"
0         рр@
Ъ Т
+__inference_block1_conv2_layer_call_fn_5440c)*9в6
/в,
*К'
inputs         рр@
к ""К         рр@ш
E__inference_block1_pool_layer_call_and_return_conditional_losses_5466ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ │
E__inference_block1_pool_layer_call_and_return_conditional_losses_5471j9в6
/в,
*К'
inputs         рр@
к "-в*
#К 
0         pp@
Ъ └
*__inference_block1_pool_layer_call_fn_5456СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Л
*__inference_block1_pool_layer_call_fn_5461]9в6
/в,
*К'
inputs         рр@
к " К         pp@╖
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5491m347в4
-в*
(К%
inputs         pp@
к ".в+
$К!
0         ppА
Ъ П
+__inference_block2_conv1_layer_call_fn_5480`347в4
-в*
(К%
inputs         pp@
к "!К         ppА╕
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5511n9:8в5
.в+
)К&
inputs         ppА
к ".в+
$К!
0         ppА
Ъ Р
+__inference_block2_conv2_layer_call_fn_5500a9:8в5
.в+
)К&
inputs         ppА
к "!К         ppАш
E__inference_block2_pool_layer_call_and_return_conditional_losses_5526ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ │
E__inference_block2_pool_layer_call_and_return_conditional_losses_5531j8в5
.в+
)К&
inputs         ppА
к ".в+
$К!
0         88А
Ъ └
*__inference_block2_pool_layer_call_fn_5516СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Л
*__inference_block2_pool_layer_call_fn_5521]8в5
.в+
)К&
inputs         ppА
к "!К         88А╕
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5551nCD8в5
.в+
)К&
inputs         88А
к ".в+
$К!
0         88А
Ъ Р
+__inference_block3_conv1_layer_call_fn_5540aCD8в5
.в+
)К&
inputs         88А
к "!К         88А╕
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5571nIJ8в5
.в+
)К&
inputs         88А
к ".в+
$К!
0         88А
Ъ Р
+__inference_block3_conv2_layer_call_fn_5560aIJ8в5
.в+
)К&
inputs         88А
к "!К         88А╕
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5591nOP8в5
.в+
)К&
inputs         88А
к ".в+
$К!
0         88А
Ъ Р
+__inference_block3_conv3_layer_call_fn_5580aOP8в5
.в+
)К&
inputs         88А
к "!К         88Аш
E__inference_block3_pool_layer_call_and_return_conditional_losses_5606ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ │
E__inference_block3_pool_layer_call_and_return_conditional_losses_5611j8в5
.в+
)К&
inputs         88А
к ".в+
$К!
0         А
Ъ └
*__inference_block3_pool_layer_call_fn_5596СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Л
*__inference_block3_pool_layer_call_fn_5601]8в5
.в+
)К&
inputs         88А
к "!К         А╕
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5631nYZ8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block4_conv1_layer_call_fn_5620aYZ8в5
.в+
)К&
inputs         А
к "!К         А╕
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5651n_`8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block4_conv2_layer_call_fn_5640a_`8в5
.в+
)К&
inputs         А
к "!К         А╕
F__inference_block4_conv3_layer_call_and_return_conditional_losses_5671nef8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block4_conv3_layer_call_fn_5660aef8в5
.в+
)К&
inputs         А
к "!К         Аш
E__inference_block4_pool_layer_call_and_return_conditional_losses_5686ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ │
E__inference_block4_pool_layer_call_and_return_conditional_losses_5691j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ └
*__inference_block4_pool_layer_call_fn_5676СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Л
*__inference_block4_pool_layer_call_fn_5681]8в5
.в+
)К&
inputs         А
к "!К         А╕
F__inference_block5_conv1_layer_call_and_return_conditional_losses_5711nop8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block5_conv1_layer_call_fn_5700aop8в5
.в+
)К&
inputs         А
к "!К         А╕
F__inference_block5_conv2_layer_call_and_return_conditional_losses_5731nuv8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block5_conv2_layer_call_fn_5720auv8в5
.в+
)К&
inputs         А
к "!К         А╕
F__inference_block5_conv3_layer_call_and_return_conditional_losses_5751n{|8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ Р
+__inference_block5_conv3_layer_call_fn_5740a{|8в5
.в+
)К&
inputs         А
к "!К         Аш
E__inference_block5_pool_layer_call_and_return_conditional_losses_5766ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ │
E__inference_block5_pool_layer_call_and_return_conditional_losses_5771j8в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ └
*__inference_block5_pool_layer_call_fn_5756СRвO
HвE
CК@
inputs4                                    
к ";К84                                    Л
*__inference_block5_pool_layer_call_fn_5761]8в5
.в+
)К&
inputs         А
к "!К         Ае
A__inference_dense_4_layer_call_and_return_conditional_losses_5822`НО0в-
&в#
!К
inputs         А$
к "&в#
К
0         А
Ъ }
&__inference_dense_4_layer_call_fn_5811SНО0в-
&в#
!К
inputs         А$
к "К         Ае
A__inference_dense_5_layer_call_and_return_conditional_losses_5869`ЧШ0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ }
&__inference_dense_5_layer_call_fn_5858SЧШ0в-
&в#
!К
inputs         А
к "К         Ае
A__inference_dense_6_layer_call_and_return_conditional_losses_5916`бв0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ }
&__inference_dense_6_layer_call_fn_5905Sбв0в-
&в#
!К
inputs         А
к "К         Ад
A__inference_dense_7_layer_call_and_return_conditional_losses_5963_лм0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ |
&__inference_dense_7_layer_call_fn_5952Rлм0в-
&в#
!К
inputs         А
к "К         е
C__inference_dropout_3_layer_call_and_return_conditional_losses_5837^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ е
C__inference_dropout_3_layer_call_and_return_conditional_losses_5849^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ }
(__inference_dropout_3_layer_call_fn_5827Q4в1
*в'
!К
inputs         А
p 
к "К         А}
(__inference_dropout_3_layer_call_fn_5832Q4в1
*в'
!К
inputs         А
p
к "К         Ае
C__inference_dropout_4_layer_call_and_return_conditional_losses_5884^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ е
C__inference_dropout_4_layer_call_and_return_conditional_losses_5896^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ }
(__inference_dropout_4_layer_call_fn_5874Q4в1
*в'
!К
inputs         А
p 
к "К         А}
(__inference_dropout_4_layer_call_fn_5879Q4в1
*в'
!К
inputs         А
p
к "К         Ае
C__inference_dropout_5_layer_call_and_return_conditional_losses_5931^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ е
C__inference_dropout_5_layer_call_and_return_conditional_losses_5943^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ }
(__inference_dropout_5_layer_call_fn_5921Q4в1
*в'
!К
inputs         А
p 
к "К         А}
(__inference_dropout_5_layer_call_fn_5926Q4в1
*в'
!К
inputs         А
p
к "К         Аз
A__inference_flatten_layer_call_and_return_conditional_losses_5802b8в5
.в+
)К&
inputs         А
к "&в#
К
0         А$
Ъ 
&__inference_flatten_layer_call_fn_5796U8в5
.в+
)К&
inputs         А
к "К         А$▌
A__inference_model_1_layer_call_and_return_conditional_losses_4796Ч*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлмBв?
8в5
+К(
input_2         рр
p 

 
к "%в"
К
0         
Ъ ▌
A__inference_model_1_layer_call_and_return_conditional_losses_4895Ч*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлмBв?
8в5
+К(
input_2         рр
p

 
к "%в"
К
0         
Ъ ▄
A__inference_model_1_layer_call_and_return_conditional_losses_5256Ц*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлмAв>
7в4
*К'
inputs         рр
p 

 
к "%в"
К
0         
Ъ ▄
A__inference_model_1_layer_call_and_return_conditional_losses_5411Ц*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлмAв>
7в4
*К'
inputs         рр
p

 
к "%в"
К
0         
Ъ ╡
&__inference_model_1_layer_call_fn_4104К*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлмBв?
8в5
+К(
input_2         рр
p 

 
к "К         ╡
&__inference_model_1_layer_call_fn_4697К*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлмBв?
8в5
+К(
input_2         рр
p

 
к "К         ┤
&__inference_model_1_layer_call_fn_5049Й*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлмAв>
7в4
*К'
inputs         рр
p 

 
к "К         ┤
&__inference_model_1_layer_call_fn_5122Й*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлмAв>
7в4
*К'
inputs         рр
p

 
к "К         ═
"__inference_signature_wrapper_4976ж*#$)*349:CDIJOPYZ_`efopuv{|НОЧШбвлмEвB
в 
;к8
6
input_2+К(
input_2         рр"1к.
,
dense_7!К
dense_7         