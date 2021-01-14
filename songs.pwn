/*
OFFICALLY SCRIPTED BY BO$$
SPECIAL THANKS TO CXB
//--------------------------------[B-Music filterscript]--------------------------------


 * Copyright (c) 2021, Bo$$ Filterscripts.
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are not permitted in any case.
 *
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//includes used
#include <a_samp> //thanks to samp
#include bcolors //Thanks to Bo$$
#include zcmd // Thanks to Zex


//DEFINES
#define Filterscript
#define SCM SendClientMessage
#define BOTNAME "Bo$$"
#define BOTCOLOR "{d4d4d4}"
#define AUTOMSGTIME 300000 

new RandomMessages[ ][ ] =
{
	"Use /playlist to check all available songs u can play",
	"Use /bcredits to check the credits for the filterscript.",
	"This servers uses B-Music Filterscripts"
};

public OnFilterScriptInit()
{
	print(" Loading...");
    print(" Loading...");
    print(" Loaded..");
	print(" |====================================================| ");
	print(" |	.•°    -=>>> Music Filterscritp <<<=-    °•.     | ");
	print(" |               Created By: BO$$                     | ");
	print(" |               Dated On: 10/01/2021                 | ");
	print(" |====================================================| ");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}
public OnPlayerConnect(playerid)
{
	SendClientMessage(playerid,COLOR_RED,"This server Uses B-Music Filterscript");
	return 1;
}
forward ShowPlaylist(playerid);
public ShowPlaylist(playerid)
{
	    new BigString20[2000];
	    strcat(BigString20, "*Execute the command to play the song\n\n");
	    strcat(BigString20, "*You can use /stopmusic to stop any song\n\n");
        strcat(BigString20, "{F81414}*Use /bcredits If you are curious to know about developers :)\n\n");
	    strcat(BigString20, "{F81414}[1]:{F81414}/music1 -> Misletoe(JustinBiber)\n\n");
	    strcat(BigString20, "{F81414}[2]:{F81414}/music2 -> Back To You (Selena Gomez)\n\n");
	    strcat(BigString20, "{6495ed}[3]:{6495ed}/music3 -> Maniyarayile Ashokan Unnimaya Song\n\n");
	    strcat(BigString20, "{6495ed}[4]:{6495ed}/music4 -> Roi na (Ninja)\n\n");
	    strcat(BigString20, "{6495ed}[5]:{6495ed}/music5 -> WEPLAVAM rZee PurpleHaze\n\n");
		strcat(BigString20, "{6495ed}[6]:{6495ed}/music6 -> Dark Love(Sidhu MossiWala)\n\n");
		strcat(BigString20, "{6495ed}[7]:{6495ed}/music7 -> Heart Attack(Scarxld)\n\n");
		strcat(BigString20, "{6495ed}[8]:{6495ed}/music8 -> Monster(Justin Biber & Shawn Mendes)\n\n");
		strcat(BigString20, "{6495ed}[9]:{6495ed}/music9 -> Yalgarr(Carryminati)\n\n");
		strcat(BigString20, "{6495ed}[10]:{6495ed}/music10 -> Bol na aunty aau kya (Socket)\n\n");
		strcat(BigString20, "{6495ed}[11]:{6495ed}/music11 -> Can We Kiss Forever X Agar Tum Saath Ho\n\n");
		strcat(BigString20, "{6495ed}[12]:{6495ed}/music12 -> Rauf & Faik - childhood\n\n");
	    ShowPlayerDialog(playerid, 0, DIALOG_STYLE_MSGBOX, "{00FF00}B-Music{33CCFF} Commands", BigString20, "Watched","Close");
	    return 1;
}

CMD:playlist(playerid,params[]) {
    #pragma unused params
    ShowPlaylist(playerid);
    return 1;
}
forward ShowCredits(playerid);
public ShowCredits(playerid)
{
	    new BigString20[2000];
	    strcat(BigString20, "{00bfff}Filterscripts officialy developed by - Bo$$(Bo$$#5950)\n\n");
	    strcat(BigString20, "{00bfff}Special thanks to - Ultra-h(https://discord.gg/AsQry6mA2y)& {00ffff}CxB\n\n");
	    strcat(BigString20, "{00bfff}You can directly contact me incase you getting some problems{00bfff} :)\n\n");
	    strcat(BigString20, "{00bfff}Song Credits goes to the original creators{00bfff} :D\n\n");
	    ShowPlayerDialog(playerid, 0, DIALOG_STYLE_MSGBOX, "{00FF00}B-Music{33CCFF} Credits", BigString20, "Watched","Close");
	    return 1;
}

CMD:bcredits(playerid,params[]) {
    #pragma unused params
    ShowCredits(playerid);
    return 1;
}
forward rMSG();
public rMSG()
{
	new string[150];
	format(string, sizeof(string), ""BOTCOLOR""BOTNAME": %s", RandomMessages[random(sizeof(RandomMessages))]);
	SendClientMessageToAll(-1 , string);
	return 1;
}
CMD:music1(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1606998877/Justin_Bieber_-_Mistletoe_Official_Music_Video_erhudk.mp3");
    }
   	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Mistletoe by Justin Biber");
    return 1;
}
CMD:music2(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1607067849/Selena_Gomez_-_Back_To_You_Xandar_Remix_vugq5d.mp3");
	}
 	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Back To You (Selena Gomez)");
    return 1;
}
CMD:music3(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
 	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1607081642/Maniyarayile_Ashokan_Unnimaya_Song_Dulquer_Salmaan_Gregory_Sreehari_K_Nair_Shamzu_Zayb_lvkqmz.mp3");
	}
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Maniyarayile Ashokan Unnimaya Song");
    return 1;
}
CMD:music4(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1607081730/Roi_na_je_yaad_meri_aayi_ve_-_Lyrics_-_Ninja_pztmwt.mp3");
	}
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Roi na (Ninja)");
    return 1;
}
CMD:music5(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1607081715/WEPLAVAM_-_rZee_PurpleHaze_Reach_world_Wide_Anthem_Eng_Sub_sbmzht.mp3");
	}
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song WEPLAVAM rZee PurpleHaze");
    return 1;
}
CMD:music6(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1607081655/Dark_Love_Full_Video_Sidhu_MoosewalaIntenseBaljit_Singh_DeoLatest_Punjabi_Songs_2018_mtk9dh.mp3");
	}
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Dark Love(Sidhu MossiWala)");
    return 1;
}
CMD:music7(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1610286887/scarlxrd_-_HEART_ATTACK_Prod._JVCXB_kz2bk9.mp3");
	}
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Heart Attack(Scarxld)");
    return 1;
}
CMD:music8(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1610288344/Shawn_Mendes_Justin_Bieber_-_Monster_oxi13c.mp3");
	}
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Monster(Justin Biber & Shawn Mendes)");
    return 1;
}
CMD:music9(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1610288537/YALGAAR_-_CARRYMINATI_X_Wily_Frenzy_lqgz3f.mp3");
	}
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Yalgarr(Carryminati)");
    return 1;
}
CMD:music10(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1610288738/Original_Bol_Na_Aunty_Aau_Kya_Ghanti_Mai_Bajau_Kya_ORIGINAL_Omprakash_Mishra_og1bve.mp3");
	}
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Bol na aunty aau kya (Socket)");
    return 1;
}
CMD:music11(playerid, params[])
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	PlayAudioStreamForPlayer(i, "https://res.cloudinary.com/bossofficial1/video/upload/v1610289445/Can_We_Kiss_Forever_X_Agar_Tum_Saath_Ho_-_SUSH_YOHAN_MASHUP_df03gr.mp3");
	}
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Can We Kiss Forever X Agar Tum Saath Ho");
    return 1;
}
CMD:music12(playerid, params[])
{
	PlayAudioStreamForPlayer(playerid, "https://res.cloudinary.com/bossofficial1/video/upload/v1610289555/Rauf_Faik_-_%D0%B4%D0%B5%D1%82%D1%81%D1%82%D0%B2%D0%BE_Official_video_egzstz.mp3");
	SCM(playerid,COLOR_GREEN,"[Bo$$]Playing Song Rauf & Faik - childhood");
    return 1;
}
