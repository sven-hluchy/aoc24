lines».&{.split(/\s+/).map(*.Int).&{1 if so all($_.cache.rotor(2=>-1).map:{abs(.[0]-.[1])}) <= 3 and ([<]($_.cache) or [>]($_))}}.sum.say
