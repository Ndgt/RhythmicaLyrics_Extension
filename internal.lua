function SaveAs( RLtable)
	-- initialize log variable
	_RLlog=""
	
 	lyrics=""
	for gyo=1, RLtable.ymax do
		for retsu=1, RLtable[gyo].xmax do
			-- input timetag and lyrics one after another
			tempRuby = RLtable[gyo][retsu].ruby			
			lyrics = lyrics .. RLtable[gyo][retsu].timetag .. tempRuby.. string.len(tempRuby)

			
			-- input log if happens
			_RLlog = _RLlog .. string.format("(%02d,%02d), %s, %s", gyo, retsu, RLtable[gyo][retsu].timetag, RLtable[gyo][retsu].word) .. "\r\n"
		end
	end

	--error()  --display error to show log 

	-- return lyrics to RhythmicaLyrics
    return lyrics
end