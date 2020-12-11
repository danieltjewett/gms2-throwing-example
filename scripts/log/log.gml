/// @description log([str1, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16])
/// @param [str1
/// @param  str2
/// @param  str3
/// @param  str4
/// @param  str5
/// @param  str6
/// @param  str7
/// @param  str8
/// @param  str9
/// @param  str10
/// @param  str11
/// @param  str12
/// @param  str13
/// @param  str14
/// @param  str15
/// @param  str16]

var str = "";

for (var i=0;i<argument_count;i++)
{
    str += string(argument[i]) + " ";
}

show_debug_message(str);
