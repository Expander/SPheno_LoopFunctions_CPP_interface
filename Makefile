DIR := .

SRC := \
	$(DIR)/Control.F90 \
	$(DIR)/LoopFunctionsSubroutines.f90 \
	$(DIR)/LoopFunctions.f90 \
	$(DIR)/Mathematics.f90

OBJ := \
	$(patsubst %.F90,%.o,$(filter %.F90,$(SRC))) \
	$(patsubst %.f90,%.o,$(filter %.f90,$(SRC)))

MOD := $(wildcard $(DIR)/*.mod)

EXE := \
	$(DIR)/run.x \
	$(DIR)/test.x

LIBSPheno := libSPhenoLF.a

all: $(LIBSPheno) $(EXE)

clean:
	-rm -f $(LIBSPheno)
	-rm -f $(OBJ)
	-rm -f $(MOD)
	-rm -f $(EXE)

$(EXE): $(LIBSPheno)

run.x: run.o cpp_interface.o
	$(CXX) -o $@ $^ -lgfortran

test.x: test.o
	$(FC) -o $@ $^

$(LIBSPheno): $(OBJ)
	ar cru $@ $^

$(DIR)/LoopFunctions.o: $(DIR)/Control.o $(DIR)/Mathematics.o
$(DIR)/LoopFunctionsSubroutines.o: $(DIR)/LoopFunctions.o

%.o: %.f90
	$(FC) -c -o $@ $^

%.o: %.F90
	$(FC) -c -o $@ $^
