L0.log: L0.src ./L0.exe
	./L0.exe < $< > $@ && tail $(TAIL) $@

L0C = L0.cpp L0.tab.cpp L0.lex.cpp
L0H = L0.hpp L0.tab.hpp

CXXFLAGS += -std=gnu++11
./L0.exe: $(L0C) $(L0H) Makefile
	$(CXX) $(CXXFLAGS) -o $@ $(L0C)

L0.tab.cpp: L0.ypp
	bison $<

L0.lex.cpp: L0.lpp
	flex -o $@ $<
