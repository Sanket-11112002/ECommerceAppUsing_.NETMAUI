; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [143 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [286 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 134
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 35
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 56
	i32 98325684, ; 3: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 45
	i32 117431740, ; 4: System.Runtime.InteropServices => 0x6ffddbc => 126
	i32 159306688, ; 5: System.ComponentModel.Annotations => 0x97ed3c0 => 101
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 69
	i32 172961045, ; 7: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 59
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 87
	i32 195452805, ; 9: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 32
	i32 199333315, ; 10: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 33
	i32 205061960, ; 11: System.ComponentModel => 0xc38ff48 => 104
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 67
	i32 221958352, ; 13: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 44
	i32 230752869, ; 14: Microsoft.CSharp.dll => 0xdc10265 => 95
	i32 280992041, ; 15: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 4
	i32 291275502, ; 16: Microsoft.Extensions.Http.dll => 0x115c82ee => 46
	i32 317674968, ; 17: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 32
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 64
	i32 336156722, ; 19: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 17
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 76
	i32 356389973, ; 21: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 16
	i32 379916513, ; 22: System.Threading.Thread.dll => 0x16a510e1 => 134
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 117
	i32 395744057, ; 24: _Microsoft.Android.Resource.Designer => 0x17969339 => 36
	i32 435591531, ; 25: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 28
	i32 442565967, ; 26: System.Collections => 0x1a61054f => 100
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 75
	i32 456681651, ; 28: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 61
	i32 469710990, ; 29: System.dll => 0x1bff388e => 137
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 123
	i32 500358224, ; 31: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 15
	i32 503918385, ; 32: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 9
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 50
	i32 530272170, ; 34: System.Linq.Queryable => 0x1f9b4faa => 115
	i32 539058512, ; 35: Microsoft.Extensions.Logging => 0x20216150 => 47
	i32 592146354, ; 36: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 23
	i32 597488923, ; 37: CommunityToolkit.Maui => 0x239cf51b => 37
	i32 627609679, ; 38: Xamarin.AndroidX.CustomView => 0x2568904f => 73
	i32 627931235, ; 39: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 21
	i32 662205335, ; 40: System.Text.Encodings.Web.dll => 0x27787397 => 131
	i32 672442732, ; 41: System.Collections.Concurrent => 0x2814a96c => 96
	i32 688181140, ; 42: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 3
	i32 706645707, ; 43: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 18
	i32 709557578, ; 44: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 6
	i32 722857257, ; 45: System.Runtime.Loader.dll => 0x2b15ed29 => 127
	i32 759454413, ; 46: System.Net.Requests => 0x2d445acd => 121
	i32 775507847, ; 47: System.IO.Compression => 0x2e394f87 => 113
	i32 777317022, ; 48: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 27
	i32 789151979, ; 49: Microsoft.Extensions.Options => 0x2f0980eb => 49
	i32 823281589, ; 50: System.Private.Uri.dll => 0x311247b5 => 124
	i32 830298997, ; 51: System.IO.Compression.Brotli => 0x317d5b75 => 112
	i32 835661280, ; 52: MvvmHelpers.dll => 0x31cf2de0 => 57
	i32 878954865, ; 53: System.Net.Http.Json => 0x3463c971 => 118
	i32 904024072, ; 54: System.ComponentModel.Primitives.dll => 0x35e25008 => 102
	i32 926902833, ; 55: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 30
	i32 967690846, ; 56: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 76
	i32 992768348, ; 57: System.Collections.dll => 0x3b2c715c => 100
	i32 1012816738, ; 58: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 86
	i32 1019214401, ; 59: System.Drawing => 0x3cbffa41 => 110
	i32 1028951442, ; 60: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 43
	i32 1029334545, ; 61: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 5
	i32 1035644815, ; 62: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 65
	i32 1036536393, ; 63: System.Drawing.Primitives.dll => 0x3dc84a49 => 109
	i32 1044663988, ; 64: System.Linq.Expressions.dll => 0x3e444eb4 => 114
	i32 1048992957, ; 65: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 45
	i32 1052210849, ; 66: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 78
	i32 1082857460, ; 67: System.ComponentModel.TypeConverter => 0x408b17f4 => 103
	i32 1084122840, ; 68: Xamarin.Kotlin.StdLib => 0x409e66d8 => 91
	i32 1098259244, ; 69: System => 0x41761b2c => 137
	i32 1118262833, ; 70: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 18
	i32 1168523401, ; 71: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 24
	i32 1178241025, ; 72: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 83
	i32 1180667359, ; 73: fr\DemoEcommerce.Client.resources => 0x465f8ddf => 1
	i32 1203215381, ; 74: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 22
	i32 1208641965, ; 75: System.Diagnostics.Process => 0x480a69ad => 107
	i32 1214827643, ; 76: CommunityToolkit.Mvvm => 0x4868cc7b => 39
	i32 1234928153, ; 77: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 20
	i32 1260983243, ; 78: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 4
	i32 1293217323, ; 79: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 74
	i32 1324164729, ; 80: System.Linq => 0x4eed2679 => 116
	i32 1373134921, ; 81: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 34
	i32 1376866003, ; 82: Xamarin.AndroidX.SavedState => 0x52114ed3 => 86
	i32 1406073936, ; 83: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 70
	i32 1430672901, ; 84: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 2
	i32 1452070440, ; 85: System.Formats.Asn1.dll => 0x568cd628 => 111
	i32 1461004990, ; 86: es\Microsoft.Maui.Controls.resources => 0x57152abe => 8
	i32 1461234159, ; 87: System.Collections.Immutable.dll => 0x5718a9ef => 97
	i32 1462112819, ; 88: System.IO.Compression.dll => 0x57261233 => 113
	i32 1469204771, ; 89: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 66
	i32 1470490898, ; 90: Microsoft.Extensions.Primitives => 0x57a5e912 => 50
	i32 1479771757, ; 91: System.Collections.Immutable => 0x5833866d => 97
	i32 1480492111, ; 92: System.IO.Compression.Brotli.dll => 0x583e844f => 112
	i32 1493001747, ; 93: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 12
	i32 1505131794, ; 94: Microsoft.Extensions.Http => 0x59b67d12 => 46
	i32 1514721132, ; 95: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 7
	i32 1543031311, ; 96: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 133
	i32 1551623176, ; 97: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 27
	i32 1622152042, ; 98: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 80
	i32 1624863272, ; 99: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 89
	i32 1634654947, ; 100: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 38
	i32 1636350590, ; 101: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 72
	i32 1639515021, ; 102: System.Net.Http.dll => 0x61b9038d => 119
	i32 1639986890, ; 103: System.Text.RegularExpressions => 0x61c036ca => 133
	i32 1653151792, ; 104: Syncfusion.Maui.Inputs.dll => 0x62891830 => 62
	i32 1657153582, ; 105: System.Runtime => 0x62c6282e => 129
	i32 1658251792, ; 106: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 90
	i32 1677501392, ; 107: System.Net.Primitives.dll => 0x63fca3d0 => 120
	i32 1679769178, ; 108: System.Security.Cryptography => 0x641f3e5a => 130
	i32 1729485958, ; 109: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 68
	i32 1736233607, ; 110: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 25
	i32 1743415430, ; 111: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 3
	i32 1763938596, ; 112: System.Diagnostics.TraceSource.dll => 0x69239124 => 108
	i32 1766324549, ; 113: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 87
	i32 1770582343, ; 114: Microsoft.Extensions.Logging.dll => 0x6988f147 => 47
	i32 1780572499, ; 115: Mono.Android.Runtime.dll => 0x6a216153 => 141
	i32 1782862114, ; 116: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 19
	i32 1788241197, ; 117: Xamarin.AndroidX.Fragment => 0x6a96652d => 75
	i32 1793755602, ; 118: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 11
	i32 1808609942, ; 119: Xamarin.AndroidX.Loader => 0x6bcd3296 => 80
	i32 1813058853, ; 120: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 91
	i32 1813201214, ; 121: Xamarin.Google.Android.Material => 0x6c13413e => 90
	i32 1818569960, ; 122: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 84
	i32 1828688058, ; 123: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 48
	i32 1842015223, ; 124: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 31
	i32 1853025655, ; 125: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 28
	i32 1858542181, ; 126: System.Linq.Expressions => 0x6ec71a65 => 114
	i32 1875935024, ; 127: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 10
	i32 1910275211, ; 128: System.Collections.NonGeneric.dll => 0x71dc7c8b => 98
	i32 1968388702, ; 129: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 40
	i32 2003115576, ; 130: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 7
	i32 2019465201, ; 131: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 78
	i32 2025202353, ; 132: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 2
	i32 2045470958, ; 133: System.Private.Xml => 0x79eb68ee => 125
	i32 2055257422, ; 134: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 77
	i32 2066184531, ; 135: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 6
	i32 2070888862, ; 136: System.Diagnostics.TraceSource => 0x7b6f419e => 108
	i32 2079903147, ; 137: System.Runtime.dll => 0x7bf8cdab => 129
	i32 2090596640, ; 138: System.Numerics.Vectors => 0x7c9bf920 => 122
	i32 2127167465, ; 139: System.Console => 0x7ec9ffe9 => 105
	i32 2142473426, ; 140: System.Collections.Specialized => 0x7fb38cd2 => 99
	i32 2159891885, ; 141: Microsoft.Maui => 0x80bd55ad => 54
	i32 2169148018, ; 142: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 14
	i32 2181898931, ; 143: Microsoft.Extensions.Options.dll => 0x820d22b3 => 49
	i32 2192057212, ; 144: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 48
	i32 2193016926, ; 145: System.ObjectModel.dll => 0x82b6c85e => 123
	i32 2201107256, ; 146: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 92
	i32 2201231467, ; 147: System.Net.Http => 0x8334206b => 119
	i32 2207618523, ; 148: it\Microsoft.Maui.Controls.resources => 0x839595db => 16
	i32 2233398935, ; 149: DemoEcommerce.Library => 0x851ef697 => 93
	i32 2266799131, ; 150: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 41
	i32 2270573516, ; 151: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 10
	i32 2279755925, ; 152: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 85
	i32 2303942373, ; 153: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 20
	i32 2305521784, ; 154: System.Private.CoreLib.dll => 0x896b7878 => 139
	i32 2353062107, ; 155: System.Net.Primitives => 0x8c40e0db => 120
	i32 2354730003, ; 156: Syncfusion.Licensing => 0x8c5a5413 => 58
	i32 2368005991, ; 157: System.Xml.ReaderWriter.dll => 0x8d24e767 => 136
	i32 2371007202, ; 158: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 40
	i32 2395872292, ; 159: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 15
	i32 2427813419, ; 160: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 12
	i32 2435356389, ; 161: System.Console.dll => 0x912896e5 => 105
	i32 2471841756, ; 162: netstandard.dll => 0x93554fdc => 138
	i32 2475788418, ; 163: Java.Interop.dll => 0x93918882 => 140
	i32 2480646305, ; 164: Microsoft.Maui.Controls => 0x93dba8a1 => 52
	i32 2550873716, ; 165: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 13
	i32 2562349572, ; 166: Microsoft.CSharp => 0x98ba5a04 => 95
	i32 2570120770, ; 167: System.Text.Encodings.Web => 0x9930ee42 => 131
	i32 2593496499, ; 168: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 22
	i32 2605712449, ; 169: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 92
	i32 2617129537, ; 170: System.Private.Xml.dll => 0x9bfe3a41 => 125
	i32 2620871830, ; 171: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 72
	i32 2626831493, ; 172: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 17
	i32 2663698177, ; 173: System.Runtime.Loader => 0x9ec4cf01 => 127
	i32 2665622720, ; 174: System.Drawing.Primitives => 0x9ee22cc0 => 109
	i32 2724373263, ; 175: System.Runtime.Numerics.dll => 0xa262a30f => 128
	i32 2732626843, ; 176: Xamarin.AndroidX.Activity => 0xa2e0939b => 64
	i32 2737747696, ; 177: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 66
	i32 2743368605, ; 178: Syncfusion.Maui.DataSource => 0xa3847b9d => 60
	i32 2752995522, ; 179: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 23
	i32 2758225723, ; 180: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 53
	i32 2764765095, ; 181: Microsoft.Maui.dll => 0xa4caf7a7 => 54
	i32 2778768386, ; 182: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 88
	i32 2785988530, ; 183: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 29
	i32 2801831435, ; 184: Microsoft.Maui.Graphics => 0xa7008e0b => 56
	i32 2806116107, ; 185: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 8
	i32 2810250172, ; 186: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 70
	i32 2831556043, ; 187: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 21
	i32 2853208004, ; 188: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 88
	i32 2861189240, ; 189: Microsoft.Maui.Essentials => 0xaa8a4878 => 55
	i32 2868488919, ; 190: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 38
	i32 2868557005, ; 191: Syncfusion.Licensing.dll => 0xaafab4cd => 58
	i32 2909740682, ; 192: System.Private.CoreLib => 0xad6f1e8a => 139
	i32 2916838712, ; 193: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 89
	i32 2919462931, ; 194: System.Numerics.Vectors.dll => 0xae037813 => 122
	i32 2959614098, ; 195: System.ComponentModel.dll => 0xb0682092 => 104
	i32 2978675010, ; 196: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 74
	i32 3020703001, ; 197: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 44
	i32 3038032645, ; 198: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 36
	i32 3057625584, ; 199: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 81
	i32 3059408633, ; 200: Mono.Android.Runtime => 0xb65adef9 => 141
	i32 3059793426, ; 201: System.ComponentModel.Primitives => 0xb660be12 => 102
	i32 3077302341, ; 202: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 14
	i32 3103600923, ; 203: System.Formats.Asn1 => 0xb8fd311b => 111
	i32 3140633799, ; 204: Syncfusion.Maui.ListView => 0xbb3244c7 => 63
	i32 3147228406, ; 205: Syncfusion.Maui.Core => 0xbb96e4f6 => 59
	i32 3170039328, ; 206: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 63
	i32 3178803400, ; 207: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 82
	i32 3220365878, ; 208: System.Threading => 0xbff2e236 => 135
	i32 3257332390, ; 209: MvvmHelpers => 0xc226f2a6 => 57
	i32 3258312781, ; 210: Xamarin.AndroidX.CardView => 0xc235e84d => 68
	i32 3265493905, ; 211: System.Linq.Queryable.dll => 0xc2a37b91 => 115
	i32 3280506390, ; 212: System.ComponentModel.Annotations.dll => 0xc3888e16 => 101
	i32 3305363605, ; 213: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 9
	i32 3306970809, ; 214: Syncfusion.Maui.Inputs => 0xc51c5eb9 => 62
	i32 3316684772, ; 215: System.Net.Requests.dll => 0xc5b097e4 => 121
	i32 3317135071, ; 216: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 73
	i32 3346324047, ; 217: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 83
	i32 3357674450, ; 218: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 26
	i32 3358260929, ; 219: System.Text.Json => 0xc82afec1 => 132
	i32 3362522851, ; 220: Xamarin.AndroidX.Core => 0xc86c06e3 => 71
	i32 3366347497, ; 221: Java.Interop => 0xc8a662e9 => 140
	i32 3374999561, ; 222: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 85
	i32 3381016424, ; 223: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 5
	i32 3381934622, ; 224: Syncfusion.Maui.GridCommon => 0xc9943a1e => 61
	i32 3428513518, ; 225: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 42
	i32 3430777524, ; 226: netstandard => 0xcc7d82b4 => 138
	i32 3441546616, ; 227: es\DemoEcommerce.Client.resources => 0xcd21d578 => 0
	i32 3452344032, ; 228: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 51
	i32 3463511458, ; 229: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 13
	i32 3471940407, ; 230: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 103
	i32 3476120550, ; 231: Mono.Android => 0xcf3163e6 => 142
	i32 3479583265, ; 232: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 26
	i32 3484440000, ; 233: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 25
	i32 3485117614, ; 234: System.Text.Json.dll => 0xcfbaacae => 132
	i32 3558305335, ; 235: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 60
	i32 3580758918, ; 236: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 33
	i32 3608519521, ; 237: System.Linq.dll => 0xd715a361 => 116
	i32 3641597786, ; 238: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 77
	i32 3643446276, ; 239: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 30
	i32 3643854240, ; 240: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 82
	i32 3657292374, ; 241: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 41
	i32 3672681054, ; 242: Mono.Android.dll => 0xdae8aa5e => 142
	i32 3682565725, ; 243: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 67
	i32 3697841164, ; 244: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 35
	i32 3724971120, ; 245: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 81
	i32 3737834244, ; 246: System.Net.Http.Json.dll => 0xdecad304 => 118
	i32 3748608112, ; 247: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 106
	i32 3759255996, ; 248: DemoEcommerce.Client.dll => 0xe011b1bc => 94
	i32 3772932467, ; 249: fr/DemoEcommerce.Client.resources.dll => 0xe0e26173 => 1
	i32 3786282454, ; 250: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 69
	i32 3792276235, ; 251: System.Collections.NonGeneric => 0xe2098b0b => 98
	i32 3800979733, ; 252: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 51
	i32 3802395368, ; 253: System.Collections.Specialized.dll => 0xe2a3f2e8 => 99
	i32 3817368567, ; 254: CommunityToolkit.Maui.dll => 0xe3886bf7 => 37
	i32 3823082795, ; 255: System.Security.Cryptography.dll => 0xe3df9d2b => 130
	i32 3841636137, ; 256: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 43
	i32 3849253459, ; 257: System.Runtime.InteropServices.dll => 0xe56ef253 => 126
	i32 3889960447, ; 258: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 34
	i32 3896106733, ; 259: System.Collections.Concurrent.dll => 0xe839deed => 96
	i32 3896760992, ; 260: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 71
	i32 3928044579, ; 261: System.Xml.ReaderWriter => 0xea213423 => 136
	i32 3931092270, ; 262: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 84
	i32 3955647286, ; 263: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 65
	i32 3980434154, ; 264: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 29
	i32 3987592930, ; 265: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 11
	i32 4003436829, ; 266: System.Diagnostics.Process.dll => 0xee9f991d => 107
	i32 4025784931, ; 267: System.Memory => 0xeff49a63 => 117
	i32 4046471985, ; 268: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 53
	i32 4073602200, ; 269: System.Threading.dll => 0xf2ce3c98 => 135
	i32 4094352644, ; 270: Microsoft.Maui.Essentials.dll => 0xf40add04 => 55
	i32 4099507663, ; 271: System.Drawing.dll => 0xf45985cf => 110
	i32 4100113165, ; 272: System.Private.Uri => 0xf462c30d => 124
	i32 4102112229, ; 273: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 24
	i32 4125707920, ; 274: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 19
	i32 4126470640, ; 275: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 42
	i32 4134144668, ; 276: DemoEcommerce.Client => 0xf66a0a9c => 94
	i32 4147146790, ; 277: DemoEcommerce.Library.dll => 0xf7307026 => 93
	i32 4150914736, ; 278: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 31
	i32 4180724061, ; 279: es/DemoEcommerce.Client.resources.dll => 0xf930c95d => 0
	i32 4182413190, ; 280: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 79
	i32 4213026141, ; 281: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 106
	i32 4271975918, ; 282: Microsoft.Maui.Controls.dll => 0xfea12dee => 52
	i32 4274623895, ; 283: CommunityToolkit.Mvvm.dll => 0xfec99597 => 39
	i32 4274976490, ; 284: System.Runtime.Numerics => 0xfecef6ea => 128
	i32 4292120959 ; 285: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 79
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [286 x i32] [
	i32 134, ; 0
	i32 35, ; 1
	i32 56, ; 2
	i32 45, ; 3
	i32 126, ; 4
	i32 101, ; 5
	i32 69, ; 6
	i32 59, ; 7
	i32 87, ; 8
	i32 32, ; 9
	i32 33, ; 10
	i32 104, ; 11
	i32 67, ; 12
	i32 44, ; 13
	i32 95, ; 14
	i32 4, ; 15
	i32 46, ; 16
	i32 32, ; 17
	i32 64, ; 18
	i32 17, ; 19
	i32 76, ; 20
	i32 16, ; 21
	i32 134, ; 22
	i32 117, ; 23
	i32 36, ; 24
	i32 28, ; 25
	i32 100, ; 26
	i32 75, ; 27
	i32 61, ; 28
	i32 137, ; 29
	i32 123, ; 30
	i32 15, ; 31
	i32 9, ; 32
	i32 50, ; 33
	i32 115, ; 34
	i32 47, ; 35
	i32 23, ; 36
	i32 37, ; 37
	i32 73, ; 38
	i32 21, ; 39
	i32 131, ; 40
	i32 96, ; 41
	i32 3, ; 42
	i32 18, ; 43
	i32 6, ; 44
	i32 127, ; 45
	i32 121, ; 46
	i32 113, ; 47
	i32 27, ; 48
	i32 49, ; 49
	i32 124, ; 50
	i32 112, ; 51
	i32 57, ; 52
	i32 118, ; 53
	i32 102, ; 54
	i32 30, ; 55
	i32 76, ; 56
	i32 100, ; 57
	i32 86, ; 58
	i32 110, ; 59
	i32 43, ; 60
	i32 5, ; 61
	i32 65, ; 62
	i32 109, ; 63
	i32 114, ; 64
	i32 45, ; 65
	i32 78, ; 66
	i32 103, ; 67
	i32 91, ; 68
	i32 137, ; 69
	i32 18, ; 70
	i32 24, ; 71
	i32 83, ; 72
	i32 1, ; 73
	i32 22, ; 74
	i32 107, ; 75
	i32 39, ; 76
	i32 20, ; 77
	i32 4, ; 78
	i32 74, ; 79
	i32 116, ; 80
	i32 34, ; 81
	i32 86, ; 82
	i32 70, ; 83
	i32 2, ; 84
	i32 111, ; 85
	i32 8, ; 86
	i32 97, ; 87
	i32 113, ; 88
	i32 66, ; 89
	i32 50, ; 90
	i32 97, ; 91
	i32 112, ; 92
	i32 12, ; 93
	i32 46, ; 94
	i32 7, ; 95
	i32 133, ; 96
	i32 27, ; 97
	i32 80, ; 98
	i32 89, ; 99
	i32 38, ; 100
	i32 72, ; 101
	i32 119, ; 102
	i32 133, ; 103
	i32 62, ; 104
	i32 129, ; 105
	i32 90, ; 106
	i32 120, ; 107
	i32 130, ; 108
	i32 68, ; 109
	i32 25, ; 110
	i32 3, ; 111
	i32 108, ; 112
	i32 87, ; 113
	i32 47, ; 114
	i32 141, ; 115
	i32 19, ; 116
	i32 75, ; 117
	i32 11, ; 118
	i32 80, ; 119
	i32 91, ; 120
	i32 90, ; 121
	i32 84, ; 122
	i32 48, ; 123
	i32 31, ; 124
	i32 28, ; 125
	i32 114, ; 126
	i32 10, ; 127
	i32 98, ; 128
	i32 40, ; 129
	i32 7, ; 130
	i32 78, ; 131
	i32 2, ; 132
	i32 125, ; 133
	i32 77, ; 134
	i32 6, ; 135
	i32 108, ; 136
	i32 129, ; 137
	i32 122, ; 138
	i32 105, ; 139
	i32 99, ; 140
	i32 54, ; 141
	i32 14, ; 142
	i32 49, ; 143
	i32 48, ; 144
	i32 123, ; 145
	i32 92, ; 146
	i32 119, ; 147
	i32 16, ; 148
	i32 93, ; 149
	i32 41, ; 150
	i32 10, ; 151
	i32 85, ; 152
	i32 20, ; 153
	i32 139, ; 154
	i32 120, ; 155
	i32 58, ; 156
	i32 136, ; 157
	i32 40, ; 158
	i32 15, ; 159
	i32 12, ; 160
	i32 105, ; 161
	i32 138, ; 162
	i32 140, ; 163
	i32 52, ; 164
	i32 13, ; 165
	i32 95, ; 166
	i32 131, ; 167
	i32 22, ; 168
	i32 92, ; 169
	i32 125, ; 170
	i32 72, ; 171
	i32 17, ; 172
	i32 127, ; 173
	i32 109, ; 174
	i32 128, ; 175
	i32 64, ; 176
	i32 66, ; 177
	i32 60, ; 178
	i32 23, ; 179
	i32 53, ; 180
	i32 54, ; 181
	i32 88, ; 182
	i32 29, ; 183
	i32 56, ; 184
	i32 8, ; 185
	i32 70, ; 186
	i32 21, ; 187
	i32 88, ; 188
	i32 55, ; 189
	i32 38, ; 190
	i32 58, ; 191
	i32 139, ; 192
	i32 89, ; 193
	i32 122, ; 194
	i32 104, ; 195
	i32 74, ; 196
	i32 44, ; 197
	i32 36, ; 198
	i32 81, ; 199
	i32 141, ; 200
	i32 102, ; 201
	i32 14, ; 202
	i32 111, ; 203
	i32 63, ; 204
	i32 59, ; 205
	i32 63, ; 206
	i32 82, ; 207
	i32 135, ; 208
	i32 57, ; 209
	i32 68, ; 210
	i32 115, ; 211
	i32 101, ; 212
	i32 9, ; 213
	i32 62, ; 214
	i32 121, ; 215
	i32 73, ; 216
	i32 83, ; 217
	i32 26, ; 218
	i32 132, ; 219
	i32 71, ; 220
	i32 140, ; 221
	i32 85, ; 222
	i32 5, ; 223
	i32 61, ; 224
	i32 42, ; 225
	i32 138, ; 226
	i32 0, ; 227
	i32 51, ; 228
	i32 13, ; 229
	i32 103, ; 230
	i32 142, ; 231
	i32 26, ; 232
	i32 25, ; 233
	i32 132, ; 234
	i32 60, ; 235
	i32 33, ; 236
	i32 116, ; 237
	i32 77, ; 238
	i32 30, ; 239
	i32 82, ; 240
	i32 41, ; 241
	i32 142, ; 242
	i32 67, ; 243
	i32 35, ; 244
	i32 81, ; 245
	i32 118, ; 246
	i32 106, ; 247
	i32 94, ; 248
	i32 1, ; 249
	i32 69, ; 250
	i32 98, ; 251
	i32 51, ; 252
	i32 99, ; 253
	i32 37, ; 254
	i32 130, ; 255
	i32 43, ; 256
	i32 126, ; 257
	i32 34, ; 258
	i32 96, ; 259
	i32 71, ; 260
	i32 136, ; 261
	i32 84, ; 262
	i32 65, ; 263
	i32 29, ; 264
	i32 11, ; 265
	i32 107, ; 266
	i32 117, ; 267
	i32 53, ; 268
	i32 135, ; 269
	i32 55, ; 270
	i32 110, ; 271
	i32 124, ; 272
	i32 24, ; 273
	i32 19, ; 274
	i32 42, ; 275
	i32 94, ; 276
	i32 93, ; 277
	i32 31, ; 278
	i32 0, ; 279
	i32 79, ; 280
	i32 106, ; 281
	i32 52, ; 282
	i32 39, ; 283
	i32 128, ; 284
	i32 79 ; 285
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
