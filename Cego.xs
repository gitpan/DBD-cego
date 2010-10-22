#include <iostream>

#include "CegoXS.h"

DBISTATE_DECLARE;

#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif

//
// There is no more need to define any C++ classes.
// Anyway I left some dummy code as an example how to include C++ code in XS
// 

class DummyClass {
public:
        DummyClass() {}
        ~DummyClass() {} 
};

MODULE = Dummy PACKAGE = Dummy
 
DummyClass *
DummyClass::new()

void
DummyClass::DESTROY()

INCLUDE: Cego.xsi

MODULE = DBD::Driver    PACKAGE = DBD::Driver::db

PROTOTYPES: DISABLE

MODULE = DBD::Cego          PACKAGE = DBD::Cego::st

PROTOTYPES: DISABLE

MODULE = DBD::Cego          PACKAGE = DBD::Cego


