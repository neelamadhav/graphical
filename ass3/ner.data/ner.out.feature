Number of features in training data: 9021
Training Fraction....1.0
Number of predicates: 9021
Labels: O B-geo-loc B-person I-person B-other I-other B-product B-company I-company I-geo-loc B-facility I-facility I-product
Preparing O
O->O(O) O,O
O->B-geo-loc(B-geo-loc) O,B-geo-loc
O->B-person(B-person) O,B-person
O->I-person(I-person) O,I-person
O->B-other(B-other) O,B-other
O->I-other(I-other) O,I-other
O->B-product(B-product) O,B-product
O->B-company(B-company) O,B-company
O->I-company(I-company) O,I-company
O->I-geo-loc(I-geo-loc) O,I-geo-loc
O->B-facility(B-facility) O,B-facility
O->I-facility(I-facility) O,I-facility
O->I-product(I-product) O,I-product
State #0 "O"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing B-geo-loc
B-geo-loc->O(O) B-geo-loc,O
B-geo-loc->B-geo-loc(B-geo-loc) B-geo-loc,B-geo-loc
B-geo-loc->B-person(B-person) B-geo-loc,B-person
B-geo-loc->I-person(I-person) B-geo-loc,I-person
B-geo-loc->B-other(B-other) B-geo-loc,B-other
B-geo-loc->I-other(I-other) B-geo-loc,I-other
B-geo-loc->B-product(B-product) B-geo-loc,B-product
B-geo-loc->B-company(B-company) B-geo-loc,B-company
B-geo-loc->I-company(I-company) B-geo-loc,I-company
B-geo-loc->I-geo-loc(I-geo-loc) B-geo-loc,I-geo-loc
B-geo-loc->B-facility(B-facility) B-geo-loc,B-facility
B-geo-loc->I-facility(I-facility) B-geo-loc,I-facility
B-geo-loc->I-product(I-product) B-geo-loc,I-product
State #1 "B-geo-loc"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing B-person
B-person->O(O) B-person,O
B-person->B-geo-loc(B-geo-loc) B-person,B-geo-loc
B-person->B-person(B-person) B-person,B-person
B-person->I-person(I-person) B-person,I-person
B-person->B-other(B-other) B-person,B-other
B-person->I-other(I-other) B-person,I-other
B-person->B-product(B-product) B-person,B-product
B-person->B-company(B-company) B-person,B-company
B-person->I-company(I-company) B-person,I-company
B-person->I-geo-loc(I-geo-loc) B-person,I-geo-loc
B-person->B-facility(B-facility) B-person,B-facility
B-person->I-facility(I-facility) B-person,I-facility
B-person->I-product(I-product) B-person,I-product
State #2 "B-person"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing I-person
I-person->O(O) I-person,O
I-person->B-geo-loc(B-geo-loc) I-person,B-geo-loc
I-person->B-person(B-person) I-person,B-person
I-person->I-person(I-person) I-person,I-person
I-person->B-other(B-other) I-person,B-other
I-person->I-other(I-other) I-person,I-other
I-person->B-product(B-product) I-person,B-product
I-person->B-company(B-company) I-person,B-company
I-person->I-company(I-company) I-person,I-company
I-person->I-geo-loc(I-geo-loc) I-person,I-geo-loc
I-person->B-facility(B-facility) I-person,B-facility
I-person->I-facility(I-facility) I-person,I-facility
I-person->I-product(I-product) I-person,I-product
State #3 "I-person"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing B-other
B-other->O(O) B-other,O
B-other->B-geo-loc(B-geo-loc) B-other,B-geo-loc
B-other->B-person(B-person) B-other,B-person
B-other->I-person(I-person) B-other,I-person
B-other->B-other(B-other) B-other,B-other
B-other->I-other(I-other) B-other,I-other
B-other->B-product(B-product) B-other,B-product
B-other->B-company(B-company) B-other,B-company
B-other->I-company(I-company) B-other,I-company
B-other->I-geo-loc(I-geo-loc) B-other,I-geo-loc
B-other->B-facility(B-facility) B-other,B-facility
B-other->I-facility(I-facility) B-other,I-facility
B-other->I-product(I-product) B-other,I-product
State #4 "B-other"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing I-other
I-other->O(O) I-other,O
I-other->B-geo-loc(B-geo-loc) I-other,B-geo-loc
I-other->B-person(B-person) I-other,B-person
I-other->I-person(I-person) I-other,I-person
I-other->B-other(B-other) I-other,B-other
I-other->I-other(I-other) I-other,I-other
I-other->B-product(B-product) I-other,B-product
I-other->B-company(B-company) I-other,B-company
I-other->I-company(I-company) I-other,I-company
I-other->I-geo-loc(I-geo-loc) I-other,I-geo-loc
I-other->B-facility(B-facility) I-other,B-facility
I-other->I-facility(I-facility) I-other,I-facility
I-other->I-product(I-product) I-other,I-product
State #5 "I-other"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing B-product
B-product->O(O) B-product,O
B-product->B-geo-loc(B-geo-loc) B-product,B-geo-loc
B-product->B-person(B-person) B-product,B-person
B-product->I-person(I-person) B-product,I-person
B-product->B-other(B-other) B-product,B-other
B-product->I-other(I-other) B-product,I-other
B-product->B-product(B-product) B-product,B-product
B-product->B-company(B-company) B-product,B-company
B-product->I-company(I-company) B-product,I-company
B-product->I-geo-loc(I-geo-loc) B-product,I-geo-loc
B-product->B-facility(B-facility) B-product,B-facility
B-product->I-facility(I-facility) B-product,I-facility
B-product->I-product(I-product) B-product,I-product
State #6 "B-product"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing B-company
B-company->O(O) B-company,O
B-company->B-geo-loc(B-geo-loc) B-company,B-geo-loc
B-company->B-person(B-person) B-company,B-person
B-company->I-person(I-person) B-company,I-person
B-company->B-other(B-other) B-company,B-other
B-company->I-other(I-other) B-company,I-other
B-company->B-product(B-product) B-company,B-product
B-company->B-company(B-company) B-company,B-company
B-company->I-company(I-company) B-company,I-company
B-company->I-geo-loc(I-geo-loc) B-company,I-geo-loc
B-company->B-facility(B-facility) B-company,B-facility
B-company->I-facility(I-facility) B-company,I-facility
B-company->I-product(I-product) B-company,I-product
State #7 "B-company"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing I-company
I-company->O(O) I-company,O
I-company->B-geo-loc(B-geo-loc) I-company,B-geo-loc
I-company->B-person(B-person) I-company,B-person
I-company->I-person(I-person) I-company,I-person
I-company->B-other(B-other) I-company,B-other
I-company->I-other(I-other) I-company,I-other
I-company->B-product(B-product) I-company,B-product
I-company->B-company(B-company) I-company,B-company
I-company->I-company(I-company) I-company,I-company
I-company->I-geo-loc(I-geo-loc) I-company,I-geo-loc
I-company->B-facility(B-facility) I-company,B-facility
I-company->I-facility(I-facility) I-company,I-facility
I-company->I-product(I-product) I-company,I-product
State #8 "I-company"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing I-geo-loc
I-geo-loc->O(O) I-geo-loc,O
I-geo-loc->B-geo-loc(B-geo-loc) I-geo-loc,B-geo-loc
I-geo-loc->B-person(B-person) I-geo-loc,B-person
I-geo-loc->I-person(I-person) I-geo-loc,I-person
I-geo-loc->B-other(B-other) I-geo-loc,B-other
I-geo-loc->I-other(I-other) I-geo-loc,I-other
I-geo-loc->B-product(B-product) I-geo-loc,B-product
I-geo-loc->B-company(B-company) I-geo-loc,B-company
I-geo-loc->I-company(I-company) I-geo-loc,I-company
I-geo-loc->I-geo-loc(I-geo-loc) I-geo-loc,I-geo-loc
I-geo-loc->B-facility(B-facility) I-geo-loc,B-facility
I-geo-loc->I-facility(I-facility) I-geo-loc,I-facility
I-geo-loc->I-product(I-product) I-geo-loc,I-product
State #9 "I-geo-loc"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing B-facility
B-facility->O(O) B-facility,O
B-facility->B-geo-loc(B-geo-loc) B-facility,B-geo-loc
B-facility->B-person(B-person) B-facility,B-person
B-facility->I-person(I-person) B-facility,I-person
B-facility->B-other(B-other) B-facility,B-other
B-facility->I-other(I-other) B-facility,I-other
B-facility->B-product(B-product) B-facility,B-product
B-facility->B-company(B-company) B-facility,B-company
B-facility->I-company(I-company) B-facility,I-company
B-facility->I-geo-loc(I-geo-loc) B-facility,I-geo-loc
B-facility->B-facility(B-facility) B-facility,B-facility
B-facility->I-facility(I-facility) B-facility,I-facility
B-facility->I-product(I-product) B-facility,I-product
State #10 "B-facility"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing I-facility
I-facility->O(O) I-facility,O
I-facility->B-geo-loc(B-geo-loc) I-facility,B-geo-loc
I-facility->B-person(B-person) I-facility,B-person
I-facility->I-person(I-person) I-facility,I-person
I-facility->B-other(B-other) I-facility,B-other
I-facility->I-other(I-other) I-facility,I-other
I-facility->B-product(B-product) I-facility,B-product
I-facility->B-company(B-company) I-facility,B-company
I-facility->I-company(I-company) I-facility,I-company
I-facility->I-geo-loc(I-geo-loc) I-facility,I-geo-loc
I-facility->B-facility(B-facility) I-facility,B-facility
I-facility->I-facility(I-facility) I-facility,I-facility
I-facility->I-product(I-product) I-facility,I-product
State #11 "I-facility"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Preparing I-product
I-product->O(O) I-product,O
I-product->B-geo-loc(B-geo-loc) I-product,B-geo-loc
I-product->B-person(B-person) I-product,B-person
I-product->I-person(I-person) I-product,I-person
I-product->B-other(B-other) I-product,B-other
I-product->I-other(I-other) I-product,I-other
I-product->B-product(B-product) I-product,B-product
I-product->B-company(B-company) I-product,B-company
I-product->I-company(I-company) I-product,I-company
I-product->I-geo-loc(I-geo-loc) I-product,I-geo-loc
I-product->B-facility(B-facility) I-product,B-facility
I-product->I-facility(I-facility) I-product,I-facility
I-product->I-product(I-product) I-product,I-product
State #12 "I-product"
initialWeight=0.0, finalWeight=0.0
#destinations=13
-> O
-> B-geo-loc
-> B-person
-> I-person
-> B-other
-> I-other
-> B-product
-> B-company
-> I-company
-> I-geo-loc
-> B-facility
-> I-facility
-> I-product
Training on 1837 instances
Testing on 0 instances
CRF: Incremental training detected.  Adding weights for some unsupported features...
CRF weights[O,O] num features = 7693
CRF weights[O,B-geo-loc] num features = 179
CRF weights[O,B-person] num features = 281
CRF weights[O,I-person] num features = 0
CRF weights[O,B-other] num features = 267
CRF weights[O,I-other] num features = 0
CRF weights[O,B-product] num features = 67
CRF weights[O,B-company] num features = 83
CRF weights[O,I-company] num features = 0
CRF weights[O,I-geo-loc] num features = 0
CRF weights[O,B-facility] num features = 77
CRF weights[O,I-facility] num features = 0
CRF weights[O,I-product] num features = 0
CRF weights[B-geo-loc,O] num features = 98
CRF weights[B-geo-loc,B-geo-loc] num features = 4
CRF weights[B-geo-loc,B-person] num features = 0
CRF weights[B-geo-loc,I-person] num features = 0
CRF weights[B-geo-loc,B-other] num features = 3
CRF weights[B-geo-loc,I-other] num features = 0
CRF weights[B-geo-loc,B-product] num features = 0
CRF weights[B-geo-loc,B-company] num features = 0
CRF weights[B-geo-loc,I-company] num features = 0
CRF weights[B-geo-loc,I-geo-loc] num features = 35
CRF weights[B-geo-loc,B-facility] num features = 0
CRF weights[B-geo-loc,I-facility] num features = 0
CRF weights[B-geo-loc,I-product] num features = 0
CRF weights[B-person,O] num features = 108
CRF weights[B-person,B-geo-loc] num features = 0
CRF weights[B-person,B-person] num features = 0
CRF weights[B-person,I-person] num features = 129
CRF weights[B-person,B-other] num features = 0
CRF weights[B-person,I-other] num features = 0
CRF weights[B-person,B-product] num features = 0
CRF weights[B-person,B-company] num features = 0
CRF weights[B-person,I-company] num features = 0
CRF weights[B-person,I-geo-loc] num features = 0
CRF weights[B-person,B-facility] num features = 0
CRF weights[B-person,I-facility] num features = 0
CRF weights[B-person,I-product] num features = 0
CRF weights[I-person,O] num features = 99
CRF weights[I-person,B-geo-loc] num features = 0
CRF weights[I-person,B-person] num features = 0
CRF weights[I-person,I-person] num features = 16
CRF weights[I-person,B-other] num features = 0
CRF weights[I-person,I-other] num features = 0
CRF weights[I-person,B-product] num features = 0
CRF weights[I-person,B-company] num features = 0
CRF weights[I-person,I-company] num features = 0
CRF weights[I-person,I-geo-loc] num features = 0
CRF weights[I-person,B-facility] num features = 0
CRF weights[I-person,I-facility] num features = 0
CRF weights[I-person,I-product] num features = 0
CRF weights[B-other,O] num features = 72
CRF weights[B-other,B-geo-loc] num features = 0
CRF weights[B-other,B-person] num features = 2
CRF weights[B-other,I-person] num features = 0
CRF weights[B-other,B-other] num features = 0
CRF weights[B-other,I-other] num features = 162
CRF weights[B-other,B-product] num features = 0
CRF weights[B-other,B-company] num features = 0
CRF weights[B-other,I-company] num features = 0
CRF weights[B-other,I-geo-loc] num features = 0
CRF weights[B-other,B-facility] num features = 0
CRF weights[B-other,I-facility] num features = 0
CRF weights[B-other,I-product] num features = 0
CRF weights[I-other,O] num features = 117
CRF weights[I-other,B-geo-loc] num features = 0
CRF weights[I-other,B-person] num features = 0
CRF weights[I-other,I-person] num features = 0
CRF weights[I-other,B-other] num features = 0
CRF weights[I-other,I-other] num features = 124
CRF weights[I-other,B-product] num features = 0
CRF weights[I-other,B-company] num features = 0
CRF weights[I-other,I-company] num features = 0
CRF weights[I-other,I-geo-loc] num features = 0
CRF weights[I-other,B-facility] num features = 0
CRF weights[I-other,I-facility] num features = 0
CRF weights[I-other,I-product] num features = 0
CRF weights[B-product,O] num features = 26
CRF weights[B-product,B-geo-loc] num features = 0
CRF weights[B-product,B-person] num features = 0
CRF weights[B-product,I-person] num features = 0
CRF weights[B-product,B-other] num features = 0
CRF weights[B-product,I-other] num features = 0
CRF weights[B-product,B-product] num features = 0
CRF weights[B-product,B-company] num features = 0
CRF weights[B-product,I-company] num features = 0
CRF weights[B-product,I-geo-loc] num features = 0
CRF weights[B-product,B-facility] num features = 0
CRF weights[B-product,I-facility] num features = 0
CRF weights[B-product,I-product] num features = 38
CRF weights[B-company,O] num features = 82
CRF weights[B-company,B-geo-loc] num features = 2
CRF weights[B-company,B-person] num features = 0
CRF weights[B-company,I-person] num features = 0
CRF weights[B-company,B-other] num features = 0
CRF weights[B-company,I-other] num features = 0
CRF weights[B-company,B-product] num features = 0
CRF weights[B-company,B-company] num features = 0
CRF weights[B-company,I-company] num features = 23
CRF weights[B-company,I-geo-loc] num features = 0
CRF weights[B-company,B-facility] num features = 0
CRF weights[B-company,I-facility] num features = 0
CRF weights[B-company,I-product] num features = 0
CRF weights[I-company,O] num features = 19
CRF weights[I-company,B-geo-loc] num features = 2
CRF weights[I-company,B-person] num features = 0
CRF weights[I-company,I-person] num features = 0
CRF weights[I-company,B-other] num features = 0
CRF weights[I-company,I-other] num features = 0
CRF weights[I-company,B-product] num features = 0
CRF weights[I-company,B-company] num features = 0
CRF weights[I-company,I-company] num features = 10
CRF weights[I-company,I-geo-loc] num features = 0
CRF weights[I-company,B-facility] num features = 0
CRF weights[I-company,I-facility] num features = 0
CRF weights[I-company,I-product] num features = 0
CRF weights[I-geo-loc,O] num features = 27
CRF weights[I-geo-loc,B-geo-loc] num features = 0
CRF weights[I-geo-loc,B-person] num features = 0
CRF weights[I-geo-loc,I-person] num features = 0
CRF weights[I-geo-loc,B-other] num features = 2
CRF weights[I-geo-loc,I-other] num features = 0
CRF weights[I-geo-loc,B-product] num features = 0
CRF weights[I-geo-loc,B-company] num features = 0
CRF weights[I-geo-loc,I-company] num features = 0
CRF weights[I-geo-loc,I-geo-loc] num features = 11
CRF weights[I-geo-loc,B-facility] num features = 0
CRF weights[I-geo-loc,I-facility] num features = 0
CRF weights[I-geo-loc,I-product] num features = 0
CRF weights[B-facility,O] num features = 20
CRF weights[B-facility,B-geo-loc] num features = 0
CRF weights[B-facility,B-person] num features = 0
CRF weights[B-facility,I-person] num features = 0
CRF weights[B-facility,B-other] num features = 0
CRF weights[B-facility,I-other] num features = 0
CRF weights[B-facility,B-product] num features = 0
CRF weights[B-facility,B-company] num features = 0
CRF weights[B-facility,I-company] num features = 0
CRF weights[B-facility,I-geo-loc] num features = 0
CRF weights[B-facility,B-facility] num features = 0
CRF weights[B-facility,I-facility] num features = 61
CRF weights[B-facility,I-product] num features = 0
CRF weights[I-facility,O] num features = 40
CRF weights[I-facility,B-geo-loc] num features = 0
CRF weights[I-facility,B-person] num features = 2
CRF weights[I-facility,I-person] num features = 0
CRF weights[I-facility,B-other] num features = 0
CRF weights[I-facility,I-other] num features = 0
CRF weights[I-facility,B-product] num features = 0
CRF weights[I-facility,B-company] num features = 0
CRF weights[I-facility,I-company] num features = 0
CRF weights[I-facility,I-geo-loc] num features = 0
CRF weights[I-facility,B-facility] num features = 2
CRF weights[I-facility,I-facility] num features = 19
CRF weights[I-facility,I-product] num features = 0
CRF weights[I-product,O] num features = 32
CRF weights[I-product,B-geo-loc] num features = 0
CRF weights[I-product,B-person] num features = 0
CRF weights[I-product,I-person] num features = 0
CRF weights[I-product,B-other] num features = 0
CRF weights[I-product,I-other] num features = 0
CRF weights[I-product,B-product] num features = 1
CRF weights[I-product,B-company] num features = 0
CRF weights[I-product,I-company] num features = 0
CRF weights[I-product,I-geo-loc] num features = 0
CRF weights[I-product,B-facility] num features = 0
CRF weights[I-product,I-facility] num features = 0
CRF weights[I-product,I-product] num features = 33
Number of weights = 10237
Gathering constraints...
Creating 4 threads for updating gradient...
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-91691.80963053498
getValue() (loglikelihood, optimizable by label likelihood) =-55946.778471922145
getValue() (loglikelihood, optimizable by label likelihood) =-105340.69826661424
getValue() (loglikelihood, optimizable by label likelihood) =-52122.68674781418
CRF finished one iteration of maximizer, i=0
Evaluator iteration=1 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94581515049793
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-48477.22137540307
attempted step too big. scaling: sum=35997.95091533655, stpmax=100.0
getValue() (loglikelihood, optimizable by label likelihood) =-3004436.4988544947
getValue() (loglikelihood, optimizable by label likelihood) =-13453.53059775905
CRF finished one iteration of maximizer, i=0
Evaluator iteration=2 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9297583081570997
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-12193.445199376896
getValue() (loglikelihood, optimizable by label likelihood) =-10939.1493796889
CRF finished one iteration of maximizer, i=0
Evaluator iteration=3 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9136734922233412
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-10074.083400537806
getValue() (loglikelihood, optimizable by label likelihood) =-9674.452152243846
CRF finished one iteration of maximizer, i=0
Evaluator iteration=4 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9418988474879714
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9135.896335650466
getValue() (loglikelihood, optimizable by label likelihood) =-8539.29780566811
CRF finished one iteration of maximizer, i=0
Evaluator iteration=5 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9306814367237328
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9101.522268501036
getValue() (loglikelihood, optimizable by label likelihood) =-8325.279337747485
getValue() (loglikelihood, optimizable by label likelihood) =-8210.659797742179
CRF finished one iteration of maximizer, i=0
Evaluator iteration=6 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9454794673827907
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8662.062610393643
getValue() (loglikelihood, optimizable by label likelihood) =-8057.153765716654
getValue() (loglikelihood, optimizable by label likelihood) =-7872.108677717171
CRF finished one iteration of maximizer, i=0
Evaluator iteration=7 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9419547946738279
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8898.494870773447
getValue() (loglikelihood, optimizable by label likelihood) =-7776.549033244239
getValue() (loglikelihood, optimizable by label likelihood) =-7718.723855495095
CRF finished one iteration of maximizer, i=0
Evaluator iteration=8 cost=NA (not Optimizable.ByValue)
Training accuracy=0.945619335347432
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8606.226868000072
getValue() (loglikelihood, optimizable by label likelihood) =-7644.155792425944
getValue() (loglikelihood, optimizable by label likelihood) =-7544.836567892962
CRF finished one iteration of maximizer, i=0
Evaluator iteration=9 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9431017119838873
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8790.117982772792
getValue() (loglikelihood, optimizable by label likelihood) =-7494.4544030189645
getValue() (loglikelihood, optimizable by label likelihood) =-7458.009973187774
CRF finished one iteration of maximizer, i=0
Evaluator iteration=10 cost=NA (not Optimizable.ByValue)
Training accuracy=0.945619335347432
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8611.359708355076
getValue() (loglikelihood, optimizable by label likelihood) =-7414.491088403893
getValue() (loglikelihood, optimizable by label likelihood) =-7354.222785564194
CRF finished one iteration of maximizer, i=0
Evaluator iteration=11 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9438849725858789
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8688.49171888447
getValue() (loglikelihood, optimizable by label likelihood) =-7323.294310247549
getValue() (loglikelihood, optimizable by label likelihood) =-7296.709614054236
CRF finished one iteration of maximizer, i=0
Evaluator iteration=12 cost=NA (not Optimizable.ByValue)
Training accuracy=0.945619335347432
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8617.539226495157
getValue() (loglikelihood, optimizable by label likelihood) =-7266.940901478853
getValue() (loglikelihood, optimizable by label likelihood) =-7225.728922879939
CRF finished one iteration of maximizer, i=0
Evaluator iteration=13 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9439129461788072
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8581.692255554783
getValue() (loglikelihood, optimizable by label likelihood) =-7203.668306719599
getValue() (loglikelihood, optimizable by label likelihood) =-7182.063616111629
CRF finished one iteration of maximizer, i=0
Evaluator iteration=14 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9452836522322927
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8626.828165032253
getValue() (loglikelihood, optimizable by label likelihood) =-7159.007367694161
getValue() (loglikelihood, optimizable by label likelihood) =-7127.676508069487
CRF finished one iteration of maximizer, i=0
Evaluator iteration=15 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9439129461788072
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8475.069833985108
getValue() (loglikelihood, optimizable by label likelihood) =-7110.064829581255
getValue() (loglikelihood, optimizable by label likelihood) =-7091.194747912592
CRF finished one iteration of maximizer, i=0
Evaluator iteration=16 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9445563388161575
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8642.019787493562
getValue() (loglikelihood, optimizable by label likelihood) =-7071.272156580314
getValue() (loglikelihood, optimizable by label likelihood) =-7046.277054701697
CRF finished one iteration of maximizer, i=0
Evaluator iteration=17 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9432975271343852
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8366.251603704473
getValue() (loglikelihood, optimizable by label likelihood) =-7031.216995816089
getValue() (loglikelihood, optimizable by label likelihood) =-7013.969165995421
CRF finished one iteration of maximizer, i=0
Evaluator iteration=18 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9441367349222334
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8677.368718755475
getValue() (loglikelihood, optimizable by label likelihood) =-6996.210584974996
getValue() (loglikelihood, optimizable by label likelihood) =-6975.269141976913
CRF finished one iteration of maximizer, i=0
Evaluator iteration=19 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9431856327626721
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8257.806867857911
getValue() (loglikelihood, optimizable by label likelihood) =-6961.826077978184
getValue() (loglikelihood, optimizable by label likelihood) =-6945.619554911189
CRF finished one iteration of maximizer, i=0
Evaluator iteration=20 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9438849725858789
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8726.544762032674
getValue() (loglikelihood, optimizable by label likelihood) =-6929.5503712859745
getValue() (loglikelihood, optimizable by label likelihood) =-6911.380443163422
CRF finished one iteration of maximizer, i=0
Evaluator iteration=21 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9431017119838873
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8150.676983035488
getValue() (loglikelihood, optimizable by label likelihood) =-6899.041975647908
getValue() (loglikelihood, optimizable by label likelihood) =-6883.53797298147
CRF finished one iteration of maximizer, i=0
Evaluator iteration=22 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9437171310283092
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8785.001044279932
getValue() (loglikelihood, optimizable by label likelihood) =-6868.8731431314645
getValue() (loglikelihood, optimizable by label likelihood) =-6852.704142947303
CRF finished one iteration of maximizer, i=0
Evaluator iteration=23 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9431017119838873
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8044.7616422747415
getValue() (loglikelihood, optimizable by label likelihood) =-6841.158430376739
getValue() (loglikelihood, optimizable by label likelihood) =-6826.132952567121
CRF finished one iteration of maximizer, i=0
Evaluator iteration=24 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9431296855768155
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8850.489608765054
getValue() (loglikelihood, optimizable by label likelihood) =-6812.683200301425
getValue() (loglikelihood, optimizable by label likelihood) =-6798.01076101673
CRF finished one iteration of maximizer, i=0
Evaluator iteration=25 cost=NA (not Optimizable.ByValue)
Training accuracy=0.942877923240461
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7939.541080325975
getValue() (loglikelihood, optimizable by label likelihood) =-6787.048779382686
getValue() (loglikelihood, optimizable by label likelihood) =-6772.335023721094
CRF finished one iteration of maximizer, i=0
Evaluator iteration=26 cost=NA (not Optimizable.ByValue)
Training accuracy=0.943073738390959
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8921.97119453122
getValue() (loglikelihood, optimizable by label likelihood) =-6759.961740977832
getValue() (loglikelihood, optimizable by label likelihood) =-6746.434056749705
CRF finished one iteration of maximizer, i=0
Evaluator iteration=27 cost=NA (not Optimizable.ByValue)
Training accuracy=0.942877923240461
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7834.326532904668
getValue() (loglikelihood, optimizable by label likelihood) =-6735.902715594006
getValue() (loglikelihood, optimizable by label likelihood) =-6721.362397609553
CRF finished one iteration of maximizer, i=0
Evaluator iteration=28 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9429618440192459
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8999.014186096581
getValue() (loglikelihood, optimizable by label likelihood) =-6709.954074790976
getValue() (loglikelihood, optimizable by label likelihood) =-6697.31467597609
CRF finished one iteration of maximizer, i=0
Evaluator iteration=29 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428219760546045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7728.359813871022
getValue() (loglikelihood, optimizable by label likelihood) =-6687.091931097545
getValue() (loglikelihood, optimizable by label likelihood) =-6672.598829218248
CRF finished one iteration of maximizer, i=0
Evaluator iteration=30 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9429058968333893
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9081.461185656954
getValue() (loglikelihood, optimizable by label likelihood) =-6662.056893491347
getValue() (loglikelihood, optimizable by label likelihood) =-6650.113653954427
CRF finished one iteration of maximizer, i=0
Evaluator iteration=31 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9427660288687479
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7620.85168552899
getValue() (loglikelihood, optimizable by label likelihood) =-6640.093639269175
getValue() (loglikelihood, optimizable by label likelihood) =-6625.522185912353
CRF finished one iteration of maximizer, i=0
Evaluator iteration=32 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9429338704263176
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9169.224707344809
getValue() (loglikelihood, optimizable by label likelihood) =-6615.750745556375
getValue() (loglikelihood, optimizable by label likelihood) =-6604.358403222361
CRF finished one iteration of maximizer, i=0
Evaluator iteration=33 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9427660288687479
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7510.996470619517
getValue() (loglikelihood, optimizable by label likelihood) =-6594.4411414109045
getValue() (loglikelihood, optimizable by label likelihood) =-6579.656552374673
CRF finished one iteration of maximizer, i=0
Evaluator iteration=34 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9429338704263176
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9262.133885713738
getValue() (loglikelihood, optimizable by label likelihood) =-6570.553254738611
getValue() (loglikelihood, optimizable by label likelihood) =-6559.603730439076
CRF finished one iteration of maximizer, i=0
Evaluator iteration=35 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9426541344970348
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7397.980242643005
getValue() (loglikelihood, optimizable by label likelihood) =-6549.6865708450405
getValue() (loglikelihood, optimizable by label likelihood) =-6534.5342917224225
CRF finished one iteration of maximizer, i=0
Evaluator iteration=36 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428219760546045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9359.784486297667
getValue() (loglikelihood, optimizable by label likelihood) =-6525.980518386547
getValue() (loglikelihood, optimizable by label likelihood) =-6515.398352112854
CRF finished one iteration of maximizer, i=0
Evaluator iteration=37 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94257021371825
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7280.992690931296
getValue() (loglikelihood, optimizable by label likelihood) =-6505.367234100411
getValue() (loglikelihood, optimizable by label likelihood) =-6489.659654709889
CRF finished one iteration of maximizer, i=0
Evaluator iteration=38 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428219760546045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9461.35558415973
getValue() (loglikelihood, optimizable by label likelihood) =-6481.508507312567
getValue() (loglikelihood, optimizable by label likelihood) =-6471.250184526534
CRF finished one iteration of maximizer, i=0
Evaluator iteration=39 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9426821080899631
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7159.251303444016
getValue() (loglikelihood, optimizable by label likelihood) =-6460.968940148084
getValue() (loglikelihood, optimizable by label likelihood) =-6444.466735963707
CRF finished one iteration of maximizer, i=0
Evaluator iteration=40 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428219760546045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9565.355113806712
getValue() (loglikelihood, optimizable by label likelihood) =-6436.527043826406
getValue() (loglikelihood, optimizable by label likelihood) =-6426.58374680645
CRF finished one iteration of maximizer, i=0
Evaluator iteration=41 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9424023721606803
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7032.048356576528
getValue() (loglikelihood, optimizable by label likelihood) =-6415.8791365577745
getValue() (loglikelihood, optimizable by label likelihood) =-6398.263133077115
CRF finished one iteration of maximizer, i=0
Evaluator iteration=42 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428219760546045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9669.246110404694
getValue() (loglikelihood, optimizable by label likelihood) =-6390.277147940692
getValue() (loglikelihood, optimizable by label likelihood) =-6380.680831706703
CRF finished one iteration of maximizer, i=0
Evaluator iteration=43 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9424303457536086
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6898.8354596157515
getValue() (loglikelihood, optimizable by label likelihood) =-6369.31973443071
getValue() (loglikelihood, optimizable by label likelihood) =-6350.146404125575
CRF finished one iteration of maximizer, i=0
Evaluator iteration=44 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428219760546045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9768.887761348053
getValue() (loglikelihood, optimizable by label likelihood) =-6341.758039753513
getValue() (loglikelihood, optimizable by label likelihood) =-6332.590630549741
CRF finished one iteration of maximizer, i=0
Evaluator iteration=45 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9424303457536086
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6759.365925966399
getValue() (loglikelihood, optimizable by label likelihood) =-6320.243500266042
getValue() (loglikelihood, optimizable by label likelihood) =-6298.872416211547
CRF finished one iteration of maximizer, i=0
Evaluator iteration=46 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428219760546045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9857.70832524713
getValue() (loglikelihood, optimizable by label likelihood) =-6289.582338430853
getValue() (loglikelihood, optimizable by label likelihood) =-6280.986711721613
CRF finished one iteration of maximizer, i=0
Evaluator iteration=47 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9424023721606803
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6613.917421835679
getValue() (loglikelihood, optimizable by label likelihood) =-6267.1682441023495
getValue() (loglikelihood, optimizable by label likelihood) =-6242.643294580847
CRF finished one iteration of maximizer, i=0
Evaluator iteration=48 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428219760546045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9925.549759994266
getValue() (loglikelihood, optimizable by label likelihood) =-6231.749118771715
getValue() (loglikelihood, optimizable by label likelihood) =-6223.936653220202
CRF finished one iteration of maximizer, i=0
Evaluator iteration=49 cost=NA (not Optimizable.ByValue)
Training accuracy=0.942262504196039
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6463.599735564591
getValue() (loglikelihood, optimizable by label likelihood) =-6207.914888324999
getValue() (loglikelihood, optimizable by label likelihood) =-6178.781317279481
CRF finished one iteration of maximizer, i=0
Evaluator iteration=50 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428219760546045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9957.35114413675
getValue() (loglikelihood, optimizable by label likelihood) =-6165.314443823787
getValue() (loglikelihood, optimizable by label likelihood) =-6158.553468880471
CRF finished one iteration of maximizer, i=0
Evaluator iteration=51 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9421785834172541
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6310.668573875519
getValue() (loglikelihood, optimizable by label likelihood) =-6139.2491295728105
getValue() (loglikelihood, optimizable by label likelihood) =-6103.349005280016
CRF finished one iteration of maximizer, i=0
Evaluator iteration=52 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428499496475328
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9932.876566748679
getValue() (loglikelihood, optimizable by label likelihood) =-6086.074689550244
getValue() (loglikelihood, optimizable by label likelihood) =-6080.622277916022
CRF finished one iteration of maximizer, i=0
Evaluator iteration=53 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9419268210808996
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6158.531566043708
getValue() (loglikelihood, optimizable by label likelihood) =-6056.6966335997295
getValue() (loglikelihood, optimizable by label likelihood) =-6011.338039540116
CRF finished one iteration of maximizer, i=0
Evaluator iteration=54 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9429338704263176
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9832.196222250315
getValue() (loglikelihood, optimizable by label likelihood) =-5989.058136646303
getValue() (loglikelihood, optimizable by label likelihood) =-5984.984934675491
CRF finished one iteration of maximizer, i=0
Evaluator iteration=55 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9418988474879714
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6010.8054072273335
getValue() (loglikelihood, optimizable by label likelihood) =-5955.825877513715
getValue() (loglikelihood, optimizable by label likelihood) =-5899.751314242957
CRF finished one iteration of maximizer, i=0
Evaluator iteration=56 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9431576591697438
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9657.06968726833
getValue() (loglikelihood, optimizable by label likelihood) =-5872.395413309243
getValue() (loglikelihood, optimizable by label likelihood) =-5869.393484006538
CRF finished one iteration of maximizer, i=0
Evaluator iteration=57 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9417030323374734
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5869.161449182901
getValue() (loglikelihood, optimizable by label likelihood) =-5769.8321718382595
CRF finished one iteration of maximizer, i=0
Evaluator iteration=58 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9432695535414569
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9390.413122412161
getValue() (loglikelihood, optimizable by label likelihood) =-5734.36066309168
getValue() (loglikelihood, optimizable by label likelihood) =-5732.010708064987
CRF finished one iteration of maximizer, i=0
Evaluator iteration=59 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9416191115586886
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5733.381585011938
getValue() (loglikelihood, optimizable by label likelihood) =-5702.713950391137
getValue() (loglikelihood, optimizable by label likelihood) =-5645.804124198688
CRF finished one iteration of maximizer, i=0
Evaluator iteration=60 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9432415799485286
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9297.068930769157
getValue() (loglikelihood, optimizable by label likelihood) =-5618.5447417652285
getValue() (loglikelihood, optimizable by label likelihood) =-5616.295700117597
CRF finished one iteration of maximizer, i=0
Evaluator iteration=61 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9420387154526128
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5594.09914098471
getValue() (loglikelihood, optimizable by label likelihood) =-5511.080092082435
CRF finished one iteration of maximizer, i=0
Evaluator iteration=62 cost=NA (not Optimizable.ByValue)
Training accuracy=0.943493342284883
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-9002.183809230528
getValue() (loglikelihood, optimizable by label likelihood) =-5475.8212221130525
getValue() (loglikelihood, optimizable by label likelihood) =-5474.030747281785
CRF finished one iteration of maximizer, i=0
Evaluator iteration=63 cost=NA (not Optimizable.ByValue)
Training accuracy=0.941563164372832
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5473.020247128673
getValue() (loglikelihood, optimizable by label likelihood) =-5396.418950480331
CRF finished one iteration of maximizer, i=0
Evaluator iteration=64 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9426821080899631
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-8885.893433356545
getValue() (loglikelihood, optimizable by label likelihood) =-5372.0845210859425
getValue() (loglikelihood, optimizable by label likelihood) =-5369.303680958077
CRF finished one iteration of maximizer, i=0
Evaluator iteration=65 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406120622132706
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5459.418222319396
getValue() (loglikelihood, optimizable by label likelihood) =-5355.91286920011
getValue() (loglikelihood, optimizable by label likelihood) =-5340.183328438481
CRF finished one iteration of maximizer, i=0
Evaluator iteration=66 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9400525903547051
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5545.2020298116495
getValue() (loglikelihood, optimizable by label likelihood) =-5317.5825216607645
getValue() (loglikelihood, optimizable by label likelihood) =-5319.844422667917
getValue() (loglikelihood, optimizable by label likelihood) =-5313.426842456239
CRF finished one iteration of maximizer, i=0
Evaluator iteration=67 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406680093991272
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7678.2797792678375
getValue() (loglikelihood, optimizable by label likelihood) =-5316.786153613051
getValue() (loglikelihood, optimizable by label likelihood) =-5311.885114011616
getValue() (loglikelihood, optimizable by label likelihood) =-5306.937898411138
CRF finished one iteration of maximizer, i=0
Evaluator iteration=68 cost=NA (not Optimizable.ByValue)
Training accuracy=0.940444220655701
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6261.336278507764
getValue() (loglikelihood, optimizable by label likelihood) =-5308.211302399539
getValue() (loglikelihood, optimizable by label likelihood) =-5304.01458778685
getValue() (loglikelihood, optimizable by label likelihood) =-5300.675396065833
CRF finished one iteration of maximizer, i=0
Evaluator iteration=69 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410876132930514
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7542.491122131412
getValue() (loglikelihood, optimizable by label likelihood) =-5305.905212336596
getValue() (loglikelihood, optimizable by label likelihood) =-5299.415857916581
getValue() (loglikelihood, optimizable by label likelihood) =-5295.654307872355
CRF finished one iteration of maximizer, i=0
Evaluator iteration=70 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9404721942486293
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6305.070082567686
getValue() (loglikelihood, optimizable by label likelihood) =-5297.889550184946
getValue() (loglikelihood, optimizable by label likelihood) =-5293.1263172438
getValue() (loglikelihood, optimizable by label likelihood) =-5290.076652717689
CRF finished one iteration of maximizer, i=0
Evaluator iteration=71 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413953228152624
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7496.185155830088
getValue() (loglikelihood, optimizable by label likelihood) =-5295.309462897478
getValue() (loglikelihood, optimizable by label likelihood) =-5288.851411820586
getValue() (loglikelihood, optimizable by label likelihood) =-5285.158377687627
CRF finished one iteration of maximizer, i=0
Evaluator iteration=72 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9403602998769162
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6318.374975920086
getValue() (loglikelihood, optimizable by label likelihood) =-5287.69177412009
getValue() (loglikelihood, optimizable by label likelihood) =-5282.706208878234
getValue() (loglikelihood, optimizable by label likelihood) =-5279.73684722363
CRF finished one iteration of maximizer, i=0
Evaluator iteration=73 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413393756294058
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7447.0458833738
getValue() (loglikelihood, optimizable by label likelihood) =-5284.873000623244
getValue() (loglikelihood, optimizable by label likelihood) =-5278.531669144492
getValue() (loglikelihood, optimizable by label likelihood) =-5274.849758974863
CRF finished one iteration of maximizer, i=0
Evaluator iteration=74 cost=NA (not Optimizable.ByValue)
Training accuracy=0.940444220655701
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6327.083510321532
getValue() (loglikelihood, optimizable by label likelihood) =-5277.6354195422755
getValue() (loglikelihood, optimizable by label likelihood) =-5272.455264990104
getValue() (loglikelihood, optimizable by label likelihood) =-5269.549625404583
CRF finished one iteration of maximizer, i=0
Evaluator iteration=75 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413393756294058
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7398.253905044014
getValue() (loglikelihood, optimizable by label likelihood) =-5274.587322752965
getValue() (loglikelihood, optimizable by label likelihood) =-5268.3624420947945
getValue() (loglikelihood, optimizable by label likelihood) =-5264.688148815479
CRF finished one iteration of maximizer, i=0
Evaluator iteration=76 cost=NA (not Optimizable.ByValue)
Training accuracy=0.940444220655701
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6334.065318125257
getValue() (loglikelihood, optimizable by label likelihood) =-5267.7086687872625
getValue() (loglikelihood, optimizable by label likelihood) =-5262.347483661633
getValue() (loglikelihood, optimizable by label likelihood) =-5259.497917853496
CRF finished one iteration of maximizer, i=0
Evaluator iteration=77 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411435604789079
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7351.677424729035
getValue() (loglikelihood, optimizable by label likelihood) =-5264.441383988077
getValue() (loglikelihood, optimizable by label likelihood) =-5258.327368036519
getValue() (loglikelihood, optimizable by label likelihood) =-5254.660206709755
CRF finished one iteration of maximizer, i=0
Evaluator iteration=78 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9405281414344858
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6339.845096199121
getValue() (loglikelihood, optimizable by label likelihood) =-5257.900366992577
getValue() (loglikelihood, optimizable by label likelihood) =-5252.370420907289
getValue() (loglikelihood, optimizable by label likelihood) =-5249.5707009530115
CRF finished one iteration of maximizer, i=0
Evaluator iteration=79 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410876132930514
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7307.615117858811
getValue() (loglikelihood, optimizable by label likelihood) =-5254.425030406337
getValue() (loglikelihood, optimizable by label likelihood) =-5248.415603333904
getValue() (loglikelihood, optimizable by label likelihood) =-5244.75553895033
CRF finished one iteration of maximizer, i=0
Evaluator iteration=80 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9405281414344858
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6344.586752073105
getValue() (loglikelihood, optimizable by label likelihood) =-5248.201369416009
getValue() (loglikelihood, optimizable by label likelihood) =-5242.513997595418
getValue() (loglikelihood, optimizable by label likelihood) =-5239.758835633002
CRF finished one iteration of maximizer, i=0
Evaluator iteration=81 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411435604789079
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7265.978297333808
getValue() (loglikelihood, optimizable by label likelihood) =-5244.529441915574
getValue() (loglikelihood, optimizable by label likelihood) =-5238.618146645761
getValue() (loglikelihood, optimizable by label likelihood) =-5234.965386365644
CRF finished one iteration of maximizer, i=0
Evaluator iteration=82 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9405281414344858
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6348.379371201458
getValue() (loglikelihood, optimizable by label likelihood) =-5238.604050000069
getValue() (loglikelihood, optimizable by label likelihood) =-5232.769716392859
getValue() (loglikelihood, optimizable by label likelihood) =-5230.0545853762405
CRF finished one iteration of maximizer, i=0
Evaluator iteration=83 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413114020364776
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7226.6088212110135
getValue() (loglikelihood, optimizable by label likelihood) =-5234.747018600182
getValue() (loglikelihood, optimizable by label likelihood) =-5228.927377401452
getValue() (loglikelihood, optimizable by label likelihood) =-5225.282302543736
CRF finished one iteration of maximizer, i=0
Evaluator iteration=84 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406400358061989
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6351.292365282576
getValue() (loglikelihood, optimizable by label likelihood) =-5229.101969074479
getValue() (loglikelihood, optimizable by label likelihood) =-5223.130357469013
getValue() (loglikelihood, optimizable by label likelihood) =-5220.451354583644
CRF finished one iteration of maximizer, i=0
Evaluator iteration=85 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9412274812576927
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7189.349690999799
getValue() (loglikelihood, optimizable by label likelihood) =-5225.071197760444
getValue() (loglikelihood, optimizable by label likelihood) =-5219.336798127293
getValue() (loglikelihood, optimizable by label likelihood) =-5215.699918790577
CRF finished one iteration of maximizer, i=0
Evaluator iteration=86 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406959829920555
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6353.387200130312
getValue() (loglikelihood, optimizable by label likelihood) =-5219.689649308768
getValue() (loglikelihood, optimizable by label likelihood) =-5213.589748529988
getValue() (loglikelihood, optimizable by label likelihood) =-5210.943487767063
CRF finished one iteration of maximizer, i=0
Evaluator iteration=87 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9412274812576927
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7154.0577741913485
getValue() (loglikelihood, optimizable by label likelihood) =-5215.496288171534
getValue() (loglikelihood, optimizable by label likelihood) =-5209.8408370383095
getValue() (loglikelihood, optimizable by label likelihood) =-5206.212758083177
CRF finished one iteration of maximizer, i=0
Evaluator iteration=88 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9407239565849838
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6354.720120772781
getValue() (loglikelihood, optimizable by label likelihood) =-5210.36240852429
getValue() (loglikelihood, optimizable by label likelihood) =-5204.142584056302
getValue() (loglikelihood, optimizable by label likelihood) =-5201.526111165861
CRF finished one iteration of maximizer, i=0
Evaluator iteration=89 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411995076647645
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7120.6040137003765
getValue() (loglikelihood, optimizable by label likelihood) =-5206.017332276264
getValue() (loglikelihood, optimizable by label likelihood) =-5200.434692398083
getValue() (loglikelihood, optimizable by label likelihood) =-5196.816086955175
CRF finished one iteration of maximizer, i=0
Evaluator iteration=90 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9407799037708403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6355.34299211789
getValue() (loglikelihood, optimizable by label likelihood) =-5201.116227759436
getValue() (loglikelihood, optimizable by label likelihood) =-5194.78428145804
getValue() (loglikelihood, optimizable by label likelihood) =-5192.195005830031
CRF finished one iteration of maximizer, i=0
Evaluator iteration=91 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408358509566969
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7088.871489255394
getValue() (loglikelihood, optimizable by label likelihood) =-5196.62999293304
getValue() (loglikelihood, optimizable by label likelihood) =-5191.114207716754
getValue() (loglikelihood, optimizable by label likelihood) =-5187.505796060843
CRF finished one iteration of maximizer, i=0
Evaluator iteration=92 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9407799037708403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6355.303748248165
getValue() (loglikelihood, optimizable by label likelihood) =-5191.947644211128
getValue() (loglikelihood, optimizable by label likelihood) =-5185.510864870552
getValue() (loglikelihood, optimizable by label likelihood) =-5182.946504337098
CRF finished one iteration of maximizer, i=0
Evaluator iteration=93 cost=NA (not Optimizable.ByValue)
Training accuracy=0.940751930177912
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7058.753531117458
getValue() (loglikelihood, optimizable by label likelihood) =-5187.3304598556115
getValue() (loglikelihood, optimizable by label likelihood) =-5181.875770102761
getValue() (loglikelihood, optimizable by label likelihood) =-5178.278302549295
CRF finished one iteration of maximizer, i=0
Evaluator iteration=94 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9407799037708403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6354.646750894131
getValue() (loglikelihood, optimizable by label likelihood) =-5182.853663029107
getValue() (loglikelihood, optimizable by label likelihood) =-5176.3188700018945
getValue() (loglikelihood, optimizable by label likelihood) =-5173.7774056595235
CRF finished one iteration of maximizer, i=0
Evaluator iteration=95 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408917981425534
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7030.152225079187
getValue() (loglikelihood, optimizable by label likelihood) =-5178.115371682672
getValue() (loglikelihood, optimizable by label likelihood) =-5172.716226414231
getValue() (loglikelihood, optimizable by label likelihood) =-5169.130469349269
CRF finished one iteration of maximizer, i=0
Evaluator iteration=96 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9407799037708403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6353.413111148391
getValue() (loglikelihood, optimizable by label likelihood) =-5173.831683956026
getValue() (loglikelihood, optimizable by label likelihood) =-5167.205265371018
getValue() (loglikelihood, optimizable by label likelihood) =-5164.684904291173
CRF finished one iteration of maximizer, i=0
Evaluator iteration=97 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408917981425534
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-7002.977262720116
getValue() (loglikelihood, optimizable by label likelihood) =-5168.981750566118
getValue() (loglikelihood, optimizable by label likelihood) =-5163.632813411138
getValue() (loglikelihood, optimizable by label likelihood) =-5160.059537831716
CRF finished one iteration of maximizer, i=0
Evaluator iteration=98 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9407799037708403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6351.640981570075
getValue() (loglikelihood, optimizable by label likelihood) =-5164.879439914817
getValue() (loglikelihood, optimizable by label likelihood) =-5158.167386564607
getValue() (loglikelihood, optimizable by label likelihood) =-5155.666530792552
CRF finished one iteration of maximizer, i=0
Evaluator iteration=99 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409757189213382
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6977.145043248802
getValue() (loglikelihood, optimizable by label likelihood) =-5159.926946914635
getValue() (loglikelihood, optimizable by label likelihood) =-5154.623099131602
getValue() (loglikelihood, optimizable by label likelihood) =-5151.06307123849
CRF finished one iteration of maximizer, i=0
Evaluator iteration=100 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9407799037708403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6349.365819838109
getValue() (loglikelihood, optimizable by label likelihood) =-5155.994945349262
getValue() (loglikelihood, optimizable by label likelihood) =-5149.2028810025295
getValue() (loglikelihood, optimizable by label likelihood) =-5146.720101621162
CRF finished one iteration of maximizer, i=0
Evaluator iteration=101 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409757189213382
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6952.577951585347
getValue() (loglikelihood, optimizable by label likelihood) =-5150.948592473323
getValue() (loglikelihood, optimizable by label likelihood) =-5145.684933403983
getValue() (loglikelihood, optimizable by label likelihood) =-5142.138906896578
CRF finished one iteration of maximizer, i=0
Evaluator iteration=102 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9407239565849838
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6346.620625139916
getValue() (loglikelihood, optimizable by label likelihood) =-5147.1764526026045
getValue() (loglikelihood, optimizable by label likelihood) =-5140.309661295851
getValue() (loglikelihood, optimizable by label likelihood) =-5137.843676603417
CRF finished one iteration of maximizer, i=0
Evaluator iteration=103 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408638245496251
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6929.203761594626
getValue() (loglikelihood, optimizable by label likelihood) =-5142.044560318211
getValue() (loglikelihood, optimizable by label likelihood) =-5136.8164058832845
getValue() (loglikelihood, optimizable by label likelihood) =-5133.28511568091
CRF finished one iteration of maximizer, i=0
Evaluator iteration=104 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406959829920555
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6343.436149550239
getValue() (loglikelihood, optimizable by label likelihood) =-5138.422414972955
getValue() (loglikelihood, optimizable by label likelihood) =-5131.485865702711
getValue() (loglikelihood, optimizable by label likelihood) =-5129.035522755957
CRF finished one iteration of maximizer, i=0
Evaluator iteration=105 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94094774532841
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6906.955130713797
getValue() (loglikelihood, optimizable by label likelihood) =-5133.2129306339575
getValue() (loglikelihood, optimizable by label likelihood) =-5128.015810343778
getValue() (loglikelihood, optimizable by label likelihood) =-5124.499967510932
CRF finished one iteration of maximizer, i=0
Evaluator iteration=106 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406959829920555
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6339.841087052251
getValue() (loglikelihood, optimizable by label likelihood) =-5129.731455350307
getValue() (loglikelihood, optimizable by label likelihood) =-5122.729824496416
getValue() (loglikelihood, optimizable by label likelihood) =-5120.294083423936
CRF finished one iteration of maximizer, i=0
Evaluator iteration=107 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409757189213382
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6885.769163808672
getValue() (loglikelihood, optimizable by label likelihood) =-5124.451961363951
getValue() (loglikelihood, optimizable by label likelihood) =-5119.281614213565
getValue() (loglikelihood, optimizable by label likelihood) =-5115.7819019072585
CRF finished one iteration of maximizer, i=0
Evaluator iteration=108 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406959829920555
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6335.86224255451
getValue() (loglikelihood, optimizable by label likelihood) =-5121.102339541751
getValue() (loglikelihood, optimizable by label likelihood) =-5114.0400312919
getValue() (loglikelihood, optimizable by label likelihood) =-5111.617951900278
CRF finished one iteration of maximizer, i=0
Evaluator iteration=109 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409757189213382
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6865.587031814663
getValue() (loglikelihood, optimizable by label likelihood) =-5115.760062991274
getValue() (loglikelihood, optimizable by label likelihood) =-5110.612432528864
getValue() (loglikelihood, optimizable by label likelihood) =-5107.12950281685
CRF finished one iteration of maximizer, i=0
Evaluator iteration=110 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406959829920555
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6331.524683496416
getValue() (loglikelihood, optimizable by label likelihood) =-5112.533953556511
getValue() (loglikelihood, optimizable by label likelihood) =-5105.41511855484
getValue() (loglikelihood, optimizable by label likelihood) =-5103.005848841942
CRF finished one iteration of maximizer, i=0
Evaluator iteration=111 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409757189213382
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6846.353634491468
getValue() (loglikelihood, optimizable by label likelihood) =-5107.135776837896
getValue() (loglikelihood, optimizable by label likelihood) =-5102.007005635329
getValue() (loglikelihood, optimizable by label likelihood) =-5098.541477058545
CRF finished one iteration of maximizer, i=0
Evaluator iteration=112 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406680093991272
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6326.851875954268
getValue() (loglikelihood, optimizable by label likelihood) =-5104.025284245659
getValue() (loglikelihood, optimizable by label likelihood) =-5096.853836656646
getValue() (loglikelihood, optimizable by label likelihood) =-5094.456602918572
CRF finished one iteration of maximizer, i=0
Evaluator iteration=113 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410316661071948
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6828.017300335828
getValue() (loglikelihood, optimizable by label likelihood) =-5098.577756376171
getValue() (loglikelihood, optimizable by label likelihood) =-5093.464180080196
getValue() (loglikelihood, optimizable by label likelihood) =-5090.016635851983
CRF finished one iteration of maximizer, i=0
Evaluator iteration=114 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406120622132706
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6321.865807312138
getValue() (loglikelihood, optimizable by label likelihood) =-5095.575402797892
getValue() (loglikelihood, optimizable by label likelihood) =-5088.355035947931
getValue() (loglikelihood, optimizable by label likelihood) =-5085.96913422365
CRF finished one iteration of maximizer, i=0
Evaluator iteration=115 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410316661071948
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6810.529517742821
getValue() (loglikelihood, optimizable by label likelihood) =-5090.084751126974
getValue() (loglikelihood, optimizable by label likelihood) =-5084.982892232587
getValue() (loglikelihood, optimizable by label likelihood) =-5081.553878983374
CRF finished one iteration of maximizer, i=0
Evaluator iteration=116 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406120622132706
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6316.587097004269
getValue() (loglikelihood, optimizable by label likelihood) =-5087.183450672267
getValue() (loglikelihood, optimizable by label likelihood) =-5079.917651411722
getValue() (loglikelihood, optimizable by label likelihood) =-5077.542440055062
CRF finished one iteration of maximizer, i=0
Evaluator iteration=117 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409757189213382
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6793.844693268875
getValue() (loglikelihood, optimizable by label likelihood) =-5081.655592787824
getValue() (loglikelihood, optimizable by label likelihood) =-5076.562154244333
getValue() (loglikelihood, optimizable by label likelihood) =-5073.1521812333385
CRF finished one iteration of maximizer, i=0
Evaluator iteration=118 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406680093991272
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6311.035096722829
getValue() (loglikelihood, optimizable by label likelihood) =-5078.848627616994
getValue() (loglikelihood, optimizable by label likelihood) =-5071.540689528003
getValue() (loglikelihood, optimizable by label likelihood) =-5069.175582733434
CRF finished one iteration of maximizer, i=0
Evaluator iteration=119 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94094774532841
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6777.919933588085
getValue() (loglikelihood, optimizable by label likelihood) =-5073.289183288932
getValue() (loglikelihood, optimizable by label likelihood) =-5068.201042024505
getValue() (loglikelihood, optimizable by label likelihood) =-5064.810580750935
CRF finished one iteration of maximizer, i=0
Evaluator iteration=120 cost=NA (not Optimizable.ByValue)
Training accuracy=0.940751930177912
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6305.227981439157
getValue() (loglikelihood, optimizable by label likelihood) =-5070.570181479894
getValue() (loglikelihood, optimizable by label likelihood) =-5063.223217039262
getValue() (loglikelihood, optimizable by label likelihood) =-5060.867679178064
CRF finished one iteration of maximizer, i=0
Evaluator iteration=121 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94094774532841
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6762.714847972764
getValue() (loglikelihood, optimizable by label likelihood) =-5064.984484517706
getValue() (loglikelihood, optimizable by label likelihood) =-5059.898684950959
getValue() (loglikelihood, optimizable by label likelihood) =-5056.5281691056925
CRF finished one iteration of maximizer, i=0
Evaluator iteration=122 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408078773637686
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6299.18283216481
getValue() (loglikelihood, optimizable by label likelihood) =-5062.347399557901
getValue() (loglikelihood, optimizable by label likelihood) =-5054.964351353842
getValue() (loglikelihood, optimizable by label likelihood) =-5052.61789200091
CRF finished one iteration of maximizer, i=0
Evaluator iteration=123 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94094774532841
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6748.191369267968
getValue() (loglikelihood, optimizable by label likelihood) =-5056.740509493594
getValue() (loglikelihood, optimizable by label likelihood) =-5051.654257082876
getValue() (loglikelihood, optimizable by label likelihood) =-5048.304082790022
CRF finished one iteration of maximizer, i=0
Evaluator iteration=124 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408917981425534
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6292.915711431659
getValue() (loglikelihood, optimizable by label likelihood) =-5054.179601273674
getValue() (loglikelihood, optimizable by label likelihood) =-5046.763252363169
getValue() (loglikelihood, optimizable by label likelihood) =-5044.425421915108
CRF finished one iteration of maximizer, i=0
Evaluator iteration=125 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410036925142665
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6734.313590926234
getValue() (loglikelihood, optimizable by label likelihood) =-5048.556314801122
getValue() (loglikelihood, optimizable by label likelihood) =-5043.466969672752
getValue() (loglikelihood, optimizable by label likelihood) =-5040.137495975964
CRF finished one iteration of maximizer, i=0
Evaluator iteration=126 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94094774532841
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6286.4417323038615
getValue() (loglikelihood, optimizable by label likelihood) =-5046.066131995953
getValue() (loglikelihood, optimizable by label likelihood) =-5038.619115480923
getValue() (loglikelihood, optimizable by label likelihood) =-5036.289501281596
CRF finished one iteration of maximizer, i=0
Evaluator iteration=127 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410316661071948
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6721.04761865768
getValue() (loglikelihood, optimizable by label likelihood) =-5040.43099411961
getValue() (loglikelihood, optimizable by label likelihood) =-5035.3360648042435
getValue() (loglikelihood, optimizable by label likelihood) =-5032.027614359141
CRF finished one iteration of maximizer, i=0
Evaluator iteration=128 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408917981425534
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6279.775121522747
getValue() (loglikelihood, optimizable by label likelihood) =-5038.006357847199
getValue() (loglikelihood, optimizable by label likelihood) =-5030.531165739707
getValue() (loglikelihood, optimizable by label likelihood) =-5028.209388643435
CRF finished one iteration of maximizer, i=0
Evaluator iteration=129 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410316661071948
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6708.3614349223035
getValue() (loglikelihood, optimizable by label likelihood) =-5032.363672706135
getValue() (loglikelihood, optimizable by label likelihood) =-5027.260810006636
getValue() (loglikelihood, optimizable by label likelihood) =-5023.973669944485
CRF finished one iteration of maximizer, i=0
Evaluator iteration=130 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408917981425534
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6272.9292775046915
getValue() (loglikelihood, optimizable by label likelihood) =-5029.999661363745
getValue() (loglikelihood, optimizable by label likelihood) =-5022.498652803109
getValue() (loglikelihood, optimizable by label likelihood) =-5020.184364116073
CRF finished one iteration of maximizer, i=0
Evaluator iteration=131 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410036925142665
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6696.224775010333
getValue() (loglikelihood, optimizable by label likelihood) =-5024.353502708829
getValue() (loglikelihood, optimizable by label likelihood) =-5019.240493715975
getValue() (loglikelihood, optimizable by label likelihood) =-5015.97491664862
CRF finished one iteration of maximizer, i=0
Evaluator iteration=132 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408358509566969
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6265.916823647411
getValue() (loglikelihood, optimizable by label likelihood) =-5022.045437891675
getValue() (loglikelihood, optimizable by label likelihood) =-5014.520846770159
getValue() (loglikelihood, optimizable by label likelihood) =-5012.213725520191
CRF finished one iteration of maximizer, i=0
Evaluator iteration=133 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410036925142665
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6684.609013481875
getValue() (loglikelihood, optimizable by label likelihood) =-5016.3996592026
getValue() (loglikelihood, optimizable by label likelihood) =-5011.274421470818
getValue() (loglikelihood, optimizable by label likelihood) =-5008.030626609781
CRF finished one iteration of maximizer, i=0
Evaluator iteration=134 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409197717354817
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6258.749657504392
getValue() (loglikelihood, optimizable by label likelihood) =-5014.1430926177245
getValue() (loglikelihood, optimizable by label likelihood) =-5006.597034665643
getValue() (loglikelihood, optimizable by label likelihood) =-5004.296785157825
CRF finished one iteration of maximizer, i=0
Evaluator iteration=135 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94094774532841
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6673.487059871415
getValue() (loglikelihood, optimizable by label likelihood) =-5008.501336852788
getValue() (loglikelihood, optimizable by label likelihood) =-5003.361912744138
getValue() (loglikelihood, optimizable by label likelihood) =-5000.140087110786
CRF finished one iteration of maximizer, i=0
Evaluator iteration=136 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409757189213382
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6251.4389960022645
getValue() (loglikelihood, optimizable by label likelihood) =-5006.292038145706
getValue() (loglikelihood, optimizable by label likelihood) =-4998.7265175235225
getValue() (loglikelihood, optimizable by label likelihood) =-4996.432867145558
CRF finished one iteration of maximizer, i=0
Evaluator iteration=137 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410316661071948
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6662.833263030877
getValue() (loglikelihood, optimizable by label likelihood) =-5000.657747125704
getValue() (loglikelihood, optimizable by label likelihood) =-4995.5022983261615
getValue() (loglikelihood, optimizable by label likelihood) =-4992.30259803177
CRF finished one iteration of maximizer, i=0
Evaluator iteration=138 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409197717354817
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6243.995417416605
getValue() (loglikelihood, optimizable by label likelihood) =-4998.491692544518
getValue() (loglikelihood, optimizable by label likelihood) =-4990.908607982323
getValue() (loglikelihood, optimizable by label likelihood) =-4988.621305228805
CRF finished one iteration of maximizer, i=0
Evaluator iteration=139 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413393756294058
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6652.62332265633
getValue() (loglikelihood, optimizable by label likelihood) =-4992.868115970036
getValue() (loglikelihood, optimizable by label likelihood) =-4987.694918183053
getValue() (loglikelihood, optimizable by label likelihood) =-4984.51746976049
CRF finished one iteration of maximizer, i=0
Evaluator iteration=140 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409197717354817
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6236.428900129551
getValue() (loglikelihood, optimizable by label likelihood) =-4990.7414777985705
getValue() (loglikelihood, optimizable by label likelihood) =-4983.142628321816
getValue() (loglikelihood, optimizable by label likelihood) =-4980.861441011004
CRF finished one iteration of maximizer, i=0
Evaluator iteration=141 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413953228152624
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6642.834208023272
getValue() (loglikelihood, optimizable by label likelihood) =-4985.131681909608
getValue() (loglikelihood, optimizable by label likelihood) =-4979.9391197257755
getValue() (loglikelihood, optimizable by label likelihood) =-4976.784021497142
CRF finished one iteration of maximizer, i=0
Evaluator iteration=142 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9409757189213382
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6228.748858521098
getValue() (loglikelihood, optimizable by label likelihood) =-4983.040818603157
getValue() (loglikelihood, optimizable by label likelihood) =-4975.4279088794665
getValue() (loglikelihood, optimizable by label likelihood) =-4973.152622539954
CRF finished one iteration of maximizer, i=0
Evaluator iteration=143 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413393756294058
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6633.444082744623
getValue() (loglikelihood, optimizable by label likelihood) =-4977.447694488186
getValue() (loglikelihood, optimizable by label likelihood) =-4972.234256431856
getValue() (loglikelihood, optimizable by label likelihood) =-4969.101579897363
CRF finished one iteration of maximizer, i=0
Evaluator iteration=144 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94094774532841
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6220.964176488185
getValue() (loglikelihood, optimizable by label likelihood) =-4975.389141455423
getValue() (loglikelihood, optimizable by label likelihood) =-4967.763786791925
getValue() (loglikelihood, optimizable by label likelihood) =-4965.494203199651
CRF finished one iteration of maximizer, i=0
Evaluator iteration=145 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413393756294058
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6624.4322349524355
getValue() (loglikelihood, optimizable by label likelihood) =-4969.8154130171415
getValue() (loglikelihood, optimizable by label likelihood) =-4964.579686769291
getValue() (loglikelihood, optimizable by label likelihood) =-4961.469478005539
CRF finished one iteration of maximizer, i=0
Evaluator iteration=146 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406120622132706
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6213.083238377388
getValue() (loglikelihood, optimizable by label likelihood) =-4967.785873992844
getValue() (loglikelihood, optimizable by label likelihood) =-4960.149605014662
getValue() (loglikelihood, optimizable by label likelihood) =-4957.8855408634845
CRF finished one iteration of maximizer, i=0
Evaluator iteration=147 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413114020364776
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6615.779012890362
getValue() (loglikelihood, optimizable by label likelihood) =-4962.234105584946
getValue() (loglikelihood, optimizable by label likelihood) =-4956.974773378234
getValue() (loglikelihood, optimizable by label likelihood) =-4953.887054435135
CRF finished one iteration of maximizer, i=0
Evaluator iteration=148 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9403602998769162
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6205.113957894426
getValue() (loglikelihood, optimizable by label likelihood) =-4960.2304445432965
getValue() (loglikelihood, optimizable by label likelihood) =-4952.584711577894
getValue() (loglikelihood, optimizable by label likelihood) =-4950.325997269023
CRF finished one iteration of maximizer, i=0
Evaluator iteration=149 cost=NA (not Optimizable.ByValue)
Training accuracy=0.941255454850621
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6607.4657649070095
getValue() (loglikelihood, optimizable by label likelihood) =-4954.703048287347
getValue() (loglikelihood, optimizable by label likelihood) =-4949.418882471716
getValue() (loglikelihood, optimizable by label likelihood) =-4946.353652758813
CRF finished one iteration of maximizer, i=0
Evaluator iteration=150 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9402763790981313
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6197.0638051211245
getValue() (loglikelihood, optimizable by label likelihood) =-4952.722281852644
getValue() (loglikelihood, optimizable by label likelihood) =-4945.068459042683
getValue() (loglikelihood, optimizable by label likelihood) =-4942.814937580444
CRF finished one iteration of maximizer, i=0
Evaluator iteration=151 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9412834284435493
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6599.474783619595
getValue() (loglikelihood, optimizable by label likelihood) =-4947.2215246459255
getValue() (loglikelihood, optimizable by label likelihood) =-4941.9113834213385
getValue() (loglikelihood, optimizable by label likelihood) =-4938.868621075675
CRF finished one iteration of maximizer, i=0
Evaluator iteration=152 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9402204319122748
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6188.939831585411
getValue() (loglikelihood, optimizable by label likelihood) =-4945.260814957714
getValue() (loglikelihood, optimizable by label likelihood) =-4937.60020412531
getValue() (loglikelihood, optimizable by label likelihood) =-4935.35173010813
CRF finished one iteration of maximizer, i=0
Evaluator iteration=153 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413673492223341
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6591.789253954508
getValue() (loglikelihood, optimizable by label likelihood) =-4939.788825185458
getValue() (loglikelihood, optimizable by label likelihood) =-4934.451648497916
getValue() (loglikelihood, optimizable by label likelihood) =-4931.43131172674
CRF finished one iteration of maximizer, i=0
Evaluator iteration=154 cost=NA (not Optimizable.ByValue)
Training accuracy=0.940248405505203
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6180.748693778623
getValue() (loglikelihood, optimizable by label likelihood) =-4937.845473181421
getValue() (loglikelihood, optimizable by label likelihood) =-4930.179307462145
getValue() (loglikelihood, optimizable by label likelihood) =-4927.935746159117
CRF finished one iteration of maximizer, i=0
Evaluator iteration=155 cost=NA (not Optimizable.ByValue)
Training accuracy=0.941563164372832
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6584.393204723283
getValue() (loglikelihood, optimizable by label likelihood) =-4932.404247144555
getValue() (loglikelihood, optimizable by label likelihood) =-4927.039052740909
getValue() (loglikelihood, optimizable by label likelihood) =-4924.041081133746
CRF finished one iteration of maximizer, i=0
Evaluator iteration=156 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9401924583193465
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6172.496675162879
getValue() (loglikelihood, optimizable by label likelihood) =-4930.475686226801
getValue() (loglikelihood, optimizable by label likelihood) =-4922.805133490973
getValue() (loglikelihood, optimizable by label likelihood) =-4920.566359995557
CRF finished one iteration of maximizer, i=0
Evaluator iteration=157 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9415351907799038
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6577.271463202447
getValue() (loglikelihood, optimizable by label likelihood) =-4925.067094295722
getValue() (loglikelihood, optimizable by label likelihood) =-4919.672973934196
getValue() (loglikelihood, optimizable by label likelihood) =-4916.697289739583
CRF finished one iteration of maximizer, i=0
Evaluator iteration=158 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9401924583193465
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6164.189706722037
getValue() (loglikelihood, optimizable by label likelihood) =-4923.150884349831
getValue() (loglikelihood, optimizable by label likelihood) =-4915.47705042774
getValue() (loglikelihood, optimizable by label likelihood) =-4913.242948881175
CRF finished one iteration of maximizer, i=0
Evaluator iteration=159 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411155868859796
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6570.409612817573
getValue() (loglikelihood, optimizable by label likelihood) =-4917.7766768570655
getValue() (loglikelihood, optimizable by label likelihood) =-4912.352792668127
getValue() (loglikelihood, optimizable by label likelihood) =-4909.399302031201
CRF finished one iteration of maximizer, i=0
Evaluator iteration=160 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9402204319122748
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6155.833386262673
getValue() (loglikelihood, optimizable by label likelihood) =-4915.87049859495
getValue() (loglikelihood, optimizable by label likelihood) =-4908.194430320221
getValue() (loglikelihood, optimizable by label likelihood) =-4905.96489319809
CRF finished one iteration of maximizer, i=0
Evaluator iteration=161 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411155868859796
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6563.793953374618
getValue() (loglikelihood, optimizable by label likelihood) =-4910.532311476696
getValue() (loglikelihood, optimizable by label likelihood) =-4905.077892470543
getValue() (loglikelihood, optimizable by label likelihood) =-4902.146486628746
CRF finished one iteration of maximizer, i=0
Evaluator iteration=162 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9402204319122748
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6147.432996546287
getValue() (loglikelihood, optimizable by label likelihood) =-4908.633961079169
getValue() (loglikelihood, optimizable by label likelihood) =-4900.956649163221
getValue() (loglikelihood, optimizable by label likelihood) =-4898.731576619407
CRF finished one iteration of maximizer, i=0
Evaluator iteration=163 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411155868859796
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6557.4114637147795
getValue() (loglikelihood, optimizable by label likelihood) =-4903.333321275838
getValue() (loglikelihood, optimizable by label likelihood) =-4897.847659992346
getValue() (loglikelihood, optimizable by label likelihood) =-4894.93821642659
CRF finished one iteration of maximizer, i=0
Evaluator iteration=164 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9405001678415575
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6138.993522255751
getValue() (loglikelihood, optimizable by label likelihood) =-4901.440705310825
getValue() (loglikelihood, optimizable by label likelihood) =-4893.763087061394
getValue() (loglikelihood, optimizable by label likelihood) =-4891.542386324185
CRF finished one iteration of maximizer, i=0
Evaluator iteration=165 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411155868859796
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6551.249766723224
getValue() (loglikelihood, optimizable by label likelihood) =-4896.17903593811
getValue() (loglikelihood, optimizable by label likelihood) =-4890.66148523419
getValue() (loglikelihood, optimizable by label likelihood) =-4887.773868774198
CRF finished one iteration of maximizer, i=0
Evaluator iteration=166 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9405001678415575
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6130.519666032845
getValue() (loglikelihood, optimizable by label likelihood) =-4894.290166534618
getValue() (loglikelihood, optimizable by label likelihood) =-4886.613128428171
getValue() (loglikelihood, optimizable by label likelihood) =-4884.396713244054
CRF finished one iteration of maximizer, i=0
Evaluator iteration=167 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411155868859796
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6545.29709634483
getValue() (loglikelihood, optimizable by label likelihood) =-4889.068791833492
getValue() (loglikelihood, optimizable by label likelihood) =-4883.518761803835
getValue() (loglikelihood, optimizable by label likelihood) =-4880.652825686401
CRF finished one iteration of maximizer, i=0
Evaluator iteration=168 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9405001678415575
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6122.015863474115
getValue() (loglikelihood, optimizable by label likelihood) =-4887.18178209151
getValue() (loglikelihood, optimizable by label likelihood) =-4879.506162210852
getValue() (loglikelihood, optimizable by label likelihood) =-4877.293952331804
CRF finished one iteration of maximizer, i=0
Evaluator iteration=169 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411435604789079
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6539.542266514147
getValue() (loglikelihood, optimizable by label likelihood) =-4882.001932167534
getValue() (loglikelihood, optimizable by label likelihood) =-4876.418887194594
getValue() (loglikelihood, optimizable by label likelihood) =-4873.574474073966
CRF finished one iteration of maximizer, i=0
Evaluator iteration=170 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9405001678415575
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6113.486297336858
getValue() (loglikelihood, optimizable by label likelihood) =-4880.114991788075
getValue() (loglikelihood, optimizable by label likelihood) =-4872.4415821332195
getValue() (loglikelihood, optimizable by label likelihood) =-4870.233502843906
CRF finished one iteration of maximizer, i=0
Evaluator iteration=171 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411435604789079
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6533.974641914173
getValue() (loglikelihood, optimizable by label likelihood) =-4874.97780714842
getValue() (loglikelihood, optimizable by label likelihood) =-4869.361263076816
getValue() (loglikelihood, optimizable by label likelihood) =-4866.5382059873145
CRF finished one iteration of maximizer, i=0
Evaluator iteration=172 cost=NA (not Optimizable.ByValue)
Training accuracy=0.940444220655701
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6104.934910831023
getValue() (loglikelihood, optimizable by label likelihood) =-4873.089238267115
getValue() (loglikelihood, optimizable by label likelihood) =-4865.41878694887
getValue() (loglikelihood, optimizable by label likelihood) =-4863.214768630353
CRF finished one iteration of maximizer, i=0
Evaluator iteration=173 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411435604789079
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6528.5841103516095
getValue() (loglikelihood, optimizable by label likelihood) =-4867.995774164314
getValue() (loglikelihood, optimizable by label likelihood) =-4862.345295595876
getValue() (loglikelihood, optimizable by label likelihood) =-4859.543418866496
CRF finished one iteration of maximizer, i=0
Evaluator iteration=174 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9404721942486293
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6096.365420272919
getValue() (loglikelihood, optimizable by label likelihood) =-4866.103967375957
getValue() (loglikelihood, optimizable by label likelihood) =-4858.437180698697
getValue() (loglikelihood, optimizable by label likelihood) =-4856.237158425842
CRF finished one iteration of maximizer, i=0
Evaluator iteration=175 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411995076647645
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6523.361056586365
getValue() (loglikelihood, optimizable by label likelihood) =-4861.055197965549
getValue() (loglikelihood, optimizable by label likelihood) =-4855.370395671003
getValue() (loglikelihood, optimizable by label likelihood) =-4852.589515792668
CRF finished one iteration of maximizer, i=0
Evaluator iteration=176 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9404721942486293
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6087.781326935174
getValue() (loglikelihood, optimizable by label likelihood) =-4859.158628526777
getValue() (loglikelihood, optimizable by label likelihood) =-4851.49617296827
getValue() (loglikelihood, optimizable by label likelihood) =-4849.300086137931
CRF finished one iteration of maximizer, i=0
Evaluator iteration=177 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411995076647645
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6518.296337725513
getValue() (loglikelihood, optimizable by label likelihood) =-4854.155450847672
getValue() (loglikelihood, optimizable by label likelihood) =-4848.435979290303
getValue() (loglikelihood, optimizable by label likelihood) =-4845.675905736414
CRF finished one iteration of maximizer, i=0
Evaluator iteration=178 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9405281414344858
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6079.185928274406
getValue() (loglikelihood, optimizable by label likelihood) =-4852.252675045955
getValue() (loglikelihood, optimizable by label likelihood) =-4844.595179140273
getValue() (loglikelihood, optimizable by label likelihood) =-4842.402971128122
CRF finished one iteration of maximizer, i=0
Evaluator iteration=179 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9412834284435493
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6513.381259827989
getValue() (loglikelihood, optimizable by label likelihood) =-4847.295912830427
getValue() (loglikelihood, optimizable by label likelihood) =-4841.541467798213
getValue() (loglikelihood, optimizable by label likelihood) =-4838.8020037994165
CRF finished one iteration of maximizer, i=0
Evaluator iteration=180 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9407239565849838
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6070.582328544471
getValue() (loglikelihood, optimizable by label likelihood) =-4845.385564509848
getValue() (loglikelihood, optimizable by label likelihood) =-4837.733620639359
getValue() (loglikelihood, optimizable by label likelihood) =-4835.545238482786
CRF finished one iteration of maximizer, i=0
Evaluator iteration=181 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9412834284435493
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6508.60755584102
getValue() (loglikelihood, optimizable by label likelihood) =-4840.4759718302885
getValue() (loglikelihood, optimizable by label likelihood) =-4834.686288172364
getValue() (loglikelihood, optimizable by label likelihood) =-4831.967231446553
CRF finished one iteration of maximizer, i=0
Evaluator iteration=182 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406680093991272
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6061.973448802068
getValue() (loglikelihood, optimizable by label likelihood) =-4838.556759064251
getValue() (loglikelihood, optimizable by label likelihood) =-4830.910925166181
getValue() (loglikelihood, optimizable by label likelihood) =-4828.726319271596
CRF finished one iteration of maximizer, i=0
Evaluator iteration=183 cost=NA (not Optimizable.ByValue)
Training accuracy=0.941451270001119
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6503.967364629233
getValue() (loglikelihood, optimizable by label likelihood) =-4833.695023823567
getValue() (loglikelihood, optimizable by label likelihood) =-4827.86987328733
getValue() (loglikelihood, optimizable by label likelihood) =-4825.171016726227
CRF finished one iteration of maximizer, i=0
Evaluator iteration=184 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406680093991272
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6053.362036417689
getValue() (loglikelihood, optimizable by label likelihood) =-4831.765725726667
getValue() (loglikelihood, optimizable by label likelihood) =-4824.126526918919
getValue() (loglikelihood, optimizable by label likelihood) =-4821.9456507913565
CRF finished one iteration of maximizer, i=0
Evaluator iteration=185 cost=NA (not Optimizable.ByValue)
Training accuracy=0.941451270001119
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6499.453211148748
getValue() (loglikelihood, optimizable by label likelihood) =-4826.9524729984605
getValue() (loglikelihood, optimizable by label likelihood) =-4821.091662163542
getValue() (loglikelihood, optimizable by label likelihood) =-4818.412794477137
CRF finished one iteration of maximizer, i=0
Evaluator iteration=186 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9406680093991272
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6044.75067405614
getValue() (loglikelihood, optimizable by label likelihood) =-4825.011936669555
getValue() (loglikelihood, optimizable by label likelihood) =-4817.379866800467
getValue() (loglikelihood, optimizable by label likelihood) =-4815.202676793946
CRF finished one iteration of maximizer, i=0
Evaluator iteration=187 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9415911379657603
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6495.057987576894
getValue() (loglikelihood, optimizable by label likelihood) =-4820.247731894117
getValue() (loglikelihood, optimizable by label likelihood) =-4814.351100199836
getValue() (loglikelihood, optimizable by label likelihood) =-4811.692006520154
CRF finished one iteration of maximizer, i=0
Evaluator iteration=188 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9405840886203424
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6036.14178816463
getValue() (loglikelihood, optimizable by label likelihood) =-4818.2948694838815
getValue() (loglikelihood, optimizable by label likelihood) =-4810.67039261038
getValue() (loglikelihood, optimizable by label likelihood) =-4808.49684769733
CRF finished one iteration of maximizer, i=0
Evaluator iteration=189 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9416191115586886
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6490.774935583003
getValue() (loglikelihood, optimizable by label likelihood) =-4813.58022152689
getValue() (loglikelihood, optimizable by label likelihood) =-4807.647639388751
getValue() (loglikelihood, optimizable by label likelihood) =-4805.008101834603
CRF finished one iteration of maximizer, i=0
Evaluator iteration=190 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408078773637686
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6027.537657004425
getValue() (loglikelihood, optimizable by label likelihood) =-4811.614007422321
getValue() (loglikelihood, optimizable by label likelihood) =-4803.997559220416
getValue() (loglikelihood, optimizable by label likelihood) =-4801.827620778952
CRF finished one iteration of maximizer, i=0
Evaluator iteration=191 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9416191115586886
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6486.597629298805
getValue() (loglikelihood, optimizable by label likelihood) =-4806.949371500828
getValue() (loglikelihood, optimizable by label likelihood) =-4800.980738513903
getValue() (loglikelihood, optimizable by label likelihood) =-4798.360536717817
CRF finished one iteration of maximizer, i=0
Evaluator iteration=192 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408078773637686
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6018.940418381939
getValue() (loglikelihood, optimizable by label likelihood) =-4804.968839623414
getValue() (loglikelihood, optimizable by label likelihood) =-4797.36082873357
getValue() (loglikelihood, optimizable by label likelihood) =-4795.194460351126
CRF finished one iteration of maximizer, i=0
Evaluator iteration=193 cost=NA (not Optimizable.ByValue)
Training accuracy=0.941563164372832
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6482.519959184042
getValue() (loglikelihood, optimizable by label likelihood) =-4800.354620103519
getValue() (loglikelihood, optimizable by label likelihood) =-4794.349863329082
getValue() (loglikelihood, optimizable by label likelihood) =-4791.748774928379
CRF finished one iteration of maximizer, i=0
Evaluator iteration=194 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9408917981425534
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6010.352076800672
getValue() (loglikelihood, optimizable by label likelihood) =-4798.358861313791
getValue() (loglikelihood, optimizable by label likelihood) =-4790.7596706261265
getValue() (loglikelihood, optimizable by label likelihood) =-4788.596837918238
CRF finished one iteration of maximizer, i=0
Evaluator iteration=195 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9412834284435493
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6478.536116920358
getValue() (loglikelihood, optimizable by label likelihood) =-4793.795414387973
getValue() (loglikelihood, optimizable by label likelihood) =-4787.7544867188735
getValue() (loglikelihood, optimizable by label likelihood) =-4785.172287812431
CRF finished one iteration of maximizer, i=0
Evaluator iteration=196 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9410876132930514
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6001.774510361311
getValue() (loglikelihood, optimizable by label likelihood) =-4791.783573991423
getValue() (loglikelihood, optimizable by label likelihood) =-4784.193561872854
getValue() (loglikelihood, optimizable by label likelihood) =-4782.034232316134
CRF finished one iteration of maximizer, i=0
Evaluator iteration=197 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9412834284435493
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6474.640580769189
getValue() (loglikelihood, optimizable by label likelihood) =-4787.271210237556
getValue() (loglikelihood, optimizable by label likelihood) =-4781.194088841299
getValue() (loglikelihood, optimizable by label likelihood) =-4778.630554413262
CRF finished one iteration of maximizer, i=0
Evaluator iteration=198 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411435604789079
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5993.2094773165845
getValue() (loglikelihood, optimizable by label likelihood) =-4785.242485589231
getValue() (loglikelihood, optimizable by label likelihood) =-4777.661987055346
getValue() (loglikelihood, optimizable by label likelihood) =-4775.506129833418
CRF finished one iteration of maximizer, i=0
Evaluator iteration=199 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413673492223341
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6470.828101896406
getValue() (loglikelihood, optimizable by label likelihood) =-4780.781472417522
getValue() (loglikelihood, optimizable by label likelihood) =-4774.668157252063
getValue() (loglikelihood, optimizable by label likelihood) =-4772.1230615646455
CRF finished one iteration of maximizer, i=0
Evaluator iteration=200 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411435604789079
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5984.658622205554
getValue() (loglikelihood, optimizable by label likelihood) =-4778.735110618934
getValue() (loglikelihood, optimizable by label likelihood) =-4771.164438454088
getValue() (loglikelihood, optimizable by label likelihood) =-4769.0120243156525
CRF finished one iteration of maximizer, i=0
Evaluator iteration=201 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413673492223341
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6467.093691251608
getValue() (loglikelihood, optimizable by label likelihood) =-4774.325674610942
getValue() (loglikelihood, optimizable by label likelihood) =-4768.17618701154
getValue() (loglikelihood, optimizable by label likelihood) =-4765.649303968039
CRF finished one iteration of maximizer, i=0
Evaluator iteration=202 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9411435604789079
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5976.123481772979
getValue() (loglikelihood, optimizable by label likelihood) =-4772.2609702970585
getValue() (loglikelihood, optimizable by label likelihood) =-4764.700416124375
getValue() (loglikelihood, optimizable by label likelihood) =-4762.551417252496
CRF finished one iteration of maximizer, i=0
Evaluator iteration=203 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414232964081907
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6463.432607151939
getValue() (loglikelihood, optimizable by label likelihood) =-4767.903299440824
getValue() (loglikelihood, optimizable by label likelihood) =-4761.717680774561
getValue() (loglikelihood, optimizable by label likelihood) =-4759.208784254285
CRF finished one iteration of maximizer, i=0
Evaluator iteration=204 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413114020364776
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5967.605490558824
getValue() (loglikelihood, optimizable by label likelihood) =-4765.819592653053
getValue() (loglikelihood, optimizable by label likelihood) =-4758.269427956922
getValue() (loglikelihood, optimizable by label likelihood) =-4756.123817848638
CRF finished one iteration of maximizer, i=0
Evaluator iteration=205 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413393756294058
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6459.840343479162
getValue() (loglikelihood, optimizable by label likelihood) =-4761.51383847853
getValue() (loglikelihood, optimizable by label likelihood) =-4755.292148863776
getValue() (loglikelihood, optimizable by label likelihood) =-4752.801013030563
CRF finished one iteration of maximizer, i=0
Evaluator iteration=206 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413114020364776
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5959.105986111891
getValue() (loglikelihood, optimizable by label likelihood) =-4759.410512619268
getValue() (loglikelihood, optimizable by label likelihood) =-4751.870989723511
getValue() (loglikelihood, optimizable by label likelihood) =-4749.728743079151
CRF finished one iteration of maximizer, i=0
Evaluator iteration=207 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413393756294058
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6456.312618550004
getValue() (loglikelihood, optimizable by label likelihood) =-4755.156792239575
getValue() (loglikelihood, optimizable by label likelihood) =-4748.899109327296
getValue() (loglikelihood, optimizable by label likelihood) =-4746.425508912813
CRF finished one iteration of maximizer, i=0
Evaluator iteration=208 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413114020364776
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5950.626214116232
getValue() (loglikelihood, optimizable by label likelihood) =-4753.03327210643
getValue() (loglikelihood, optimizable by label likelihood) =-4745.504625108581
getValue() (loglikelihood, optimizable by label likelihood) =-4743.365717729905
CRF finished one iteration of maximizer, i=0
Evaluator iteration=209 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414792435940472
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6452.845364340993
getValue() (loglikelihood, optimizable by label likelihood) =-4748.831670165752
getValue() (loglikelihood, optimizable by label likelihood) =-4742.538087981241
getValue() (loglikelihood, optimizable by label likelihood) =-4740.081798544604
CRF finished one iteration of maximizer, i=0
Evaluator iteration=210 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413114020364776
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5942.167333189697
getValue() (loglikelihood, optimizable by label likelihood) =-4746.687420062892
getValue() (loglikelihood, optimizable by label likelihood) =-4739.169865727186
getValue() (loglikelihood, optimizable by label likelihood) =-4737.034274423826
CRF finished one iteration of maximizer, i=0
Evaluator iteration=211 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414792435940472
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6449.434716400335
getValue() (loglikelihood, optimizable by label likelihood) =-4742.53799059659
getValue() (loglikelihood, optimizable by label likelihood) =-4736.208618438065
getValue() (loglikelihood, optimizable by label likelihood) =-4733.769416603239
CRF finished one iteration of maximizer, i=0
Evaluator iteration=212 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413673492223341
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5933.730419381847
getValue() (loglikelihood, optimizable by label likelihood) =-4740.372512518827
getValue() (loglikelihood, optimizable by label likelihood) =-4732.866251130374
getValue() (loglikelihood, optimizable by label likelihood) =-4730.73395363388
CRF finished one iteration of maximizer, i=0
Evaluator iteration=213 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414792435940472
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6446.077004189448
getValue() (loglikelihood, optimizable by label likelihood) =-4736.2752807290835
getValue() (loglikelihood, optimizable by label likelihood) =-4729.910242121443
getValue() (loglikelihood, optimizable by label likelihood) =-4727.487905793618
CRF finished one iteration of maximizer, i=0
Evaluator iteration=214 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413673492223341
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5925.316470481573
getValue() (loglikelihood, optimizable by label likelihood) =-4734.0881126166305
getValue() (loglikelihood, optimizable by label likelihood) =-4726.593328798299
getValue() (loglikelihood, optimizable by label likelihood) =-4724.464303683311
CRF finished one iteration of maximizer, i=0
Evaluator iteration=215 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414792435940472
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6442.768742065596
getValue() (loglikelihood, optimizable by label likelihood) =-4730.04307656813
getValue() (loglikelihood, optimizable by label likelihood) =-4723.642508268229
getValue() (loglikelihood, optimizable by label likelihood) =-4721.236816830561
CRF finished one iteration of maximizer, i=0
Evaluator iteration=216 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413673492223341
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5916.926410236793
getValue() (loglikelihood, optimizable by label likelihood) =-4727.8337906302195
getValue() (loglikelihood, optimizable by label likelihood) =-4720.350654122454
getValue() (loglikelihood, optimizable by label likelihood) =-4718.224880734333
CRF finished one iteration of maximizer, i=0
Evaluator iteration=217 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414792435940472
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6439.506620378561
getValue() (loglikelihood, optimizable by label likelihood) =-4723.8409228655655
getValue() (loglikelihood, optimizable by label likelihood) =-4717.404973918932
getValue() (loglikelihood, optimizable by label likelihood) =-4715.015708410828
CRF finished one iteration of maximizer, i=0
Evaluator iteration=218 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413673492223341
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5908.56109213057
getValue() (loglikelihood, optimizable by label likelihood) =-4721.60912396932
getValue() (loglikelihood, optimizable by label likelihood) =-4714.13779037703
getValue() (loglikelihood, optimizable by label likelihood) =-4712.015248765604
CRF finished one iteration of maximizer, i=0
Evaluator iteration=219 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414792435940472
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6436.287497397306
getValue() (loglikelihood, optimizable by label likelihood) =-4717.668373052213
getValue() (loglikelihood, optimizable by label likelihood) =-4711.197203896727
getValue() (loglikelihood, optimizable by label likelihood) =-4708.824147174797
CRF finished one iteration of maximizer, i=0
Evaluator iteration=220 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9413673492223341
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5900.221303198565
getValue() (loglikelihood, optimizable by label likelihood) =-4715.413697175243
getValue() (loglikelihood, optimizable by label likelihood) =-4707.954308680708
getValue() (loglikelihood, optimizable by label likelihood) =-4705.834979539627
CRF finished one iteration of maximizer, i=0
Evaluator iteration=221 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414792435940472
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6433.108391262496
getValue() (loglikelihood, optimizable by label likelihood) =-4711.5249891599115
getValue() (loglikelihood, optimizable by label likelihood) =-4705.018770776394
getValue() (loglikelihood, optimizable by label likelihood) =-4702.661707659281
CRF finished one iteration of maximizer, i=0
Evaluator iteration=222 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414232964081907
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5891.907767518243
getValue() (loglikelihood, optimizable by label likelihood) =-4709.247101904576
getValue() (loglikelihood, optimizable by label likelihood) =-4701.799787949491
getValue() (loglikelihood, optimizable by label likelihood) =-4699.683652560633
CRF finished one iteration of maximizer, i=0
Evaluator iteration=223 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9414792435940472
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6429.966472712297
getValue() (loglikelihood, optimizable by label likelihood) =-4705.410341738104
getValue() (loglikelihood, optimizable by label likelihood) =-4698.869254843587
getValue() (loglikelihood, optimizable by label likelihood) =-4696.527972241744
CRF finished one iteration of maximizer, i=0
Evaluator iteration=224 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9415072171869755
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5883.621149568065
getValue() (loglikelihood, optimizable by label likelihood) =-4703.10893690368
getValue() (loglikelihood, optimizable by label likelihood) =-4695.6738148410095
getValue() (loglikelihood, optimizable by label likelihood) =-4693.560855023802
CRF finished one iteration of maximizer, i=0
Evaluator iteration=225 cost=NA (not Optimizable.ByValue)
Training accuracy=0.941563164372832
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6426.859057767677
getValue() (loglikelihood, optimizable by label likelihood) =-4699.324009761143
getValue() (loglikelihood, optimizable by label likelihood) =-4692.748244045455
getValue() (loglikelihood, optimizable by label likelihood) =-4690.422531076653
CRF finished one iteration of maximizer, i=0
Evaluator iteration=226 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9415072171869755
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5875.362057486802
getValue() (loglikelihood, optimizable by label likelihood) =-4696.998807974925
getValue() (loglikelihood, optimizable by label likelihood) =-4689.575983691325
getValue() (loglikelihood, optimizable by label likelihood) =-4687.466181756393
CRF finished one iteration of maximizer, i=0
Evaluator iteration=227 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9415072171869755
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6423.783601023499
getValue() (loglikelihood, optimizable by label likelihood) =-4693.265580531206
getValue() (loglikelihood, optimizable by label likelihood) =-4686.655333933027
getValue() (loglikelihood, optimizable by label likelihood) =-4684.34498202494
CRF finished one iteration of maximizer, i=0
Evaluator iteration=228 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9415911379657603
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5867.131046039248
getValue() (loglikelihood, optimizable by label likelihood) =-4690.9163279334325
getValue() (loglikelihood, optimizable by label likelihood) =-4683.505896444788
getValue() (loglikelihood, optimizable by label likelihood) =-4681.399235151684
CRF finished one iteration of maximizer, i=0
Evaluator iteration=229 cost=NA (not Optimizable.ByValue)
Training accuracy=0.941563164372832
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6420.737689259073
getValue() (loglikelihood, optimizable by label likelihood) =-4687.234649575181
getValue() (loglikelihood, optimizable by label likelihood) =-4680.5901275963715
getValue() (loglikelihood, optimizable by label likelihood) =-4678.294930576818
CRF finished one iteration of maximizer, i=0
Evaluator iteration=230 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9415911379657603
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5858.92861954753
getValue() (loglikelihood, optimizable by label likelihood) =-4684.861116557389
getValue() (loglikelihood, optimizable by label likelihood) =-4677.4631625774655
getValue() (loglikelihood, optimizable by label likelihood) =-4675.3596250961455
CRF finished one iteration of maximizer, i=0
Evaluator iteration=231 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9416191115586886
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6417.719035264443
getValue() (loglikelihood, optimizable by label likelihood) =-4681.2308205364125
getValue() (loglikelihood, optimizable by label likelihood) =-4674.552235592897
getValue() (loglikelihood, optimizable by label likelihood) =-4672.271989768844
CRF finished one iteration of maximizer, i=0
Evaluator iteration=232 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9415911379657603
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5850.7552346264365
getValue() (loglikelihood, optimizable by label likelihood) =-4678.8328005310705
getValue() (loglikelihood, optimizable by label likelihood) =-4671.447399014946
getValue() (loglikelihood, optimizable by label likelihood) =-4669.346968890738
CRF finished one iteration of maximizer, i=0
Evaluator iteration=233 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9416750587445452
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6414.725472003838
getValue() (loglikelihood, optimizable by label likelihood) =-4675.253705062093
getValue() (loglikelihood, optimizable by label likelihood) =-4668.541275869774
getValue() (loglikelihood, optimizable by label likelihood) =-4666.275780095693
CRF finished one iteration of maximizer, i=0
Evaluator iteration=234 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9416470851516169
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5842.611302820873
getValue() (loglikelihood, optimizable by label likelihood) =-4672.8310133820705
getValue() (loglikelihood, optimizable by label likelihood) =-4665.458230045033
getValue() (loglikelihood, optimizable by label likelihood) =-4663.360891166724
CRF finished one iteration of maximizer, i=0
Evaluator iteration=235 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9416191115586886
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6411.754947033246
getValue() (loglikelihood, optimizable by label likelihood) =-4669.302922686673
getValue() (loglikelihood, optimizable by label likelihood) =-4662.556873680796
getValue() (loglikelihood, optimizable by label likelihood) =-4660.305929417296
CRF finished one iteration of maximizer, i=0
Evaluator iteration=236 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9416470851516169
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5834.497193087892
getValue() (loglikelihood, optimizable by label likelihood) =-4666.855395412539
getValue() (loglikelihood, optimizable by label likelihood) =-4659.49528722576
getValue() (loglikelihood, optimizable by label likelihood) =-4657.401023796657
CRF finished one iteration of maximizer, i=0
Evaluator iteration=237 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9417310059304017
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6408.805517220057
getValue() (loglikelihood, optimizable by label likelihood) =-4663.378100712273
getValue() (loglikelihood, optimizable by label likelihood) =-4656.598661498307
getValue() (loglikelihood, optimizable by label likelihood) =-4654.362072861792
CRF finished one iteration of maximizer, i=0
Evaluator iteration=238 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9416470851516169
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5826.413234170435
getValue() (loglikelihood, optimizable by label likelihood) =-4660.905593625741
getValue() (loglikelihood, optimizable by label likelihood) =-4653.558209289504
getValue() (loglikelihood, optimizable by label likelihood) =-4651.467005801155
CRF finished one iteration of maximizer, i=0
Evaluator iteration=239 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9417310059304017
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6405.875343694801
getValue() (loglikelihood, optimizable by label likelihood) =-4657.47887408606
getValue() (loglikelihood, optimizable by label likelihood) =-4650.666278920984
getValue() (loglikelihood, optimizable by label likelihood) =-4648.443852724856
CRF finished one iteration of maximizer, i=0
Evaluator iteration=240 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94175897952333
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5818.359716804855
getValue() (loglikelihood, optimizable by label likelihood) =-4654.981261647391
getValue() (loglikelihood, optimizable by label likelihood) =-4647.646642043348
getValue() (loglikelihood, optimizable by label likelihood) =-4645.558483251814
CRF finished one iteration of maximizer, i=0
Evaluator iteration=241 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9417869531162583
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6402.962687045346
getValue() (loglikelihood, optimizable by label likelihood) =-4651.604885275126
getValue() (loglikelihood, optimizable by label likelihood) =-4644.759372577583
getValue() (loglikelihood, optimizable by label likelihood) =-4642.550918365778
CRF finished one iteration of maximizer, i=0
Evaluator iteration=242 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9418429003021148
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5810.3368959205545
getValue() (loglikelihood, optimizable by label likelihood) =-4649.082059644288
getValue() (loglikelihood, optimizable by label likelihood) =-4641.760238266559
getValue() (loglikelihood, optimizable by label likelihood) =-4639.675109170861
CRF finished one iteration of maximizer, i=0
Evaluator iteration=243 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9418429003021148
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6400.065902746312
getValue() (loglikelihood, optimizable by label likelihood) =-4645.755784139772
getValue() (loglikelihood, optimizable by label likelihood) =-4638.877596027491
getValue() (loglikelihood, optimizable by label likelihood) =-4636.682926100972
CRF finished one iteration of maximizer, i=0
Evaluator iteration=244 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9420387154526128
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5802.344992622287
getValue() (loglikelihood, optimizable by label likelihood) =-4643.207654238075
getValue() (loglikelihood, optimizable by label likelihood) =-4635.898657605265
getValue() (loglikelihood, optimizable by label likelihood) =-4633.816543428006
CRF finished one iteration of maximizer, i=0
Evaluator iteration=245 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9418988474879714
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6397.183436737148
getValue() (loglikelihood, optimizable by label likelihood) =-4639.931227804501
getValue() (loglikelihood, optimizable by label likelihood) =-4633.020609658377
getValue() (loglikelihood, optimizable by label likelihood) =-4630.8395390949545
CRF finished one iteration of maximizer, i=0
Evaluator iteration=246 cost=NA (not Optimizable.ByValue)
Training accuracy=0.942262504196039
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5794.384196172292
getValue() (loglikelihood, optimizable by label likelihood) =-4637.357718417193
getValue() (loglikelihood, optimizable by label likelihood) =-4630.061566464988
getValue() (loglikelihood, optimizable by label likelihood) =-4627.982452634842
CRF finished one iteration of maximizer, i=0
Evaluator iteration=247 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9418988474879714
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6394.313821261108
getValue() (loglikelihood, optimizable by label likelihood) =-4634.130880528424
getValue() (loglikelihood, optimizable by label likelihood) =-4627.188080581372
getValue() (loglikelihood, optimizable by label likelihood) =-4625.020427249592
CRF finished one iteration of maximizer, i=0
Evaluator iteration=248 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9422904777889672
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5786.45466580921
getValue() (loglikelihood, optimizable by label likelihood) =-4631.531931445372
getValue() (loglikelihood, optimizable by label likelihood) =-4624.248637901312
getValue() (loglikelihood, optimizable by label likelihood) =-4622.172510037239
CRF finished one iteration of maximizer, i=0
Evaluator iteration=249 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9419547946738279
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6391.455670917136
getValue() (loglikelihood, optimizable by label likelihood) =-4628.354413574831
getValue() (loglikelihood, optimizable by label likelihood) =-4621.379682524228
getValue() (loglikelihood, optimizable by label likelihood) =-4619.225267091754
CRF finished one iteration of maximizer, i=0
Evaluator iteration=250 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9424023721606803
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5778.556532468781
getValue() (loglikelihood, optimizable by label likelihood) =-4625.729978767693
getValue() (loglikelihood, optimizable by label likelihood) =-4618.459551508896
getValue() (loglikelihood, optimizable by label likelihood) =-4616.386395406089
CRF finished one iteration of maximizer, i=0
Evaluator iteration=251 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9419268210808996
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6388.607678831025
getValue() (loglikelihood, optimizable by label likelihood) =-4622.601505079811
getValue() (loglikelihood, optimizable by label likelihood) =-4615.595095722721
getValue() (loglikelihood, optimizable by label likelihood) =-4613.453741659612
CRF finished one iteration of maximizer, i=0
Evaluator iteration=252 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9424023721606803
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5770.689900503014
getValue() (loglikelihood, optimizable by label likelihood) =-4619.951551915946
getValue() (loglikelihood, optimizable by label likelihood) =-4612.693993309635
getValue() (loglikelihood, optimizable by label likelihood) =-4610.62379492674
CRF finished one iteration of maximizer, i=0
Evaluator iteration=253 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9420107418596845
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6385.768613029039
getValue() (loglikelihood, optimizable by label likelihood) =-4616.87183992094
getValue() (loglikelihood, optimizable by label likelihood) =-4609.834006810829
getValue() (loglikelihood, optimizable by label likelihood) =-4607.705540388279
CRF finished one iteration of maximizer, i=0
Evaluator iteration=254 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9424303457536086
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5762.85484918365
getValue() (loglikelihood, optimizable by label likelihood) =-4614.19634841067
getValue() (loglikelihood, optimizable by label likelihood) =-4606.951655639557
getValue() (loglikelihood, optimizable by label likelihood) =-4604.884401087422
CRF finished one iteration of maximizer, i=0
Evaluator iteration=255 cost=NA (not Optimizable.ByValue)
Training accuracy=0.942066689045541
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6382.937313020213
getValue() (loglikelihood, optimizable by label likelihood) =-4611.1651095861
getValue() (loglikelihood, optimizable by label likelihood) =-4604.096108709755
getValue() (loglikelihood, optimizable by label likelihood) =-4601.98035899452
CRF finished one iteration of maximizer, i=0
Evaluator iteration=256 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9423464249748238
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5755.05143428704
getValue() (loglikelihood, optimizable by label likelihood) =-4608.464071663848
getValue() (loglikelihood, optimizable by label likelihood) =-4601.232237035459
getValue() (loglikelihood, optimizable by label likelihood) =-4599.167912567026
CRF finished one iteration of maximizer, i=0
Evaluator iteration=257 cost=NA (not Optimizable.ByValue)
Training accuracy=0.942066689045541
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6380.112686368502
getValue() (loglikelihood, optimizable by label likelihood) =-4605.481012041833
getValue() (loglikelihood, optimizable by label likelihood) =-4598.3811005163425
getValue() (loglikelihood, optimizable by label likelihood) =-4596.277899361435
CRF finished one iteration of maximizer, i=0
Evaluator iteration=258 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9424583193465369
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5747.279689440758
getValue() (loglikelihood, optimizable by label likelihood) =-4602.754430878882
getValue() (loglikelihood, optimizable by label likelihood) =-4595.535442121069
getValue() (loglikelihood, optimizable by label likelihood) =-4593.474034122342
CRF finished one iteration of maximizer, i=0
Evaluator iteration=259 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9420946626384693
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6377.293705680582
getValue() (loglikelihood, optimizable by label likelihood) =-4599.819251603491
getValue() (loglikelihood, optimizable by label likelihood) =-4592.688687390927
getValue() (loglikelihood, optimizable by label likelihood) =-4590.597869422772
CRF finished one iteration of maximizer, i=0
Evaluator iteration=260 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9425142665323935
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5739.5396275012845
getValue() (loglikelihood, optimizable by label likelihood) =-4597.067140950898
getValue() (loglikelihood, optimizable by label likelihood) =-4589.860981493095
getValue() (loglikelihood, optimizable by label likelihood) =-4587.802476475224
CRF finished one iteration of maximizer, i=0
Evaluator iteration=261 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9421506098243259
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6374.479405506037
getValue() (loglikelihood, optimizable by label likelihood) =-4594.179538804942
getValue() (loglikelihood, optimizable by label likelihood) =-4587.018580445034
getValue() (loglikelihood, optimizable by label likelihood) =-4584.93998304745
CRF finished one iteration of maximizer, i=0
Evaluator iteration=262 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9425422401253217
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5731.8312418922615
getValue() (loglikelihood, optimizable by label likelihood) =-4591.401922366867
getValue() (loglikelihood, optimizable by label likelihood) =-4584.208571607518
getValue() (loglikelihood, optimizable by label likelihood) =-4582.152956199718
CRF finished one iteration of maximizer, i=0
Evaluator iteration=263 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9421785834172541
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6371.668879408309
getValue() (loglikelihood, optimizable by label likelihood) =-4588.561590269458
getValue() (loglikelihood, optimizable by label likelihood) =-4581.370496629072
getValue() (loglikelihood, optimizable by label likelihood) =-4579.303959924513
CRF finished one iteration of maximizer, i=0
Evaluator iteration=264 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9425981873111783
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5724.154507718636
getValue() (loglikelihood, optimizable by label likelihood) =-4585.758501103993
getValue() (loglikelihood, optimizable by label likelihood) =-4578.577934666129
getValue() (loglikelihood, optimizable by label likelihood) =-4576.525195609496
CRF finished one iteration of maximizer, i=0
Evaluator iteration=265 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9422345306031107
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6368.861277276976
getValue() (loglikelihood, optimizable by label likelihood) =-4582.9651285820455
getValue() (loglikelihood, optimizable by label likelihood) =-4575.7441586202785
getValue() (loglikelihood, optimizable by label likelihood) =-4573.68952544833
CRF finished one iteration of maximizer, i=0
Evaluator iteration=266 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9426541344970348
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5716.509383064239
getValue() (loglikelihood, optimizable by label likelihood) =-4580.136608530313
getValue() (loglikelihood, optimizable by label likelihood) =-4572.968798503594
getValue() (loglikelihood, optimizable by label likelihood) =-4570.918922645648
CRF finished one iteration of maximizer, i=0
Evaluator iteration=267 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9422904777889672
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6366.055802630746
getValue() (loglikelihood, optimizable by label likelihood) =-4577.389882162643
getValue() (loglikelihood, optimizable by label likelihood) =-4570.139294711034
getValue() (loglikelihood, optimizable by label likelihood) =-4568.096410604766
CRF finished one iteration of maximizer, i=0
Evaluator iteration=268 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428499496475328
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5708.895809935673
getValue() (loglikelihood, optimizable by label likelihood) =-4574.535981302646
getValue() (loglikelihood, optimizable by label likelihood) =-4567.380896475164
getValue() (loglikelihood, optimizable by label likelihood) =-4565.333870765124
CRF finished one iteration of maximizer, i=0
Evaluator iteration=269 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9423464249748238
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6363.251710126264
getValue() (loglikelihood, optimizable by label likelihood) =-4571.83558514071
getValue() (loglikelihood, optimizable by label likelihood) =-4564.5556386977405
getValue() (loglikelihood, optimizable by label likelihood) =-4562.524351857916
CRF finished one iteration of maximizer, i=0
Evaluator iteration=270 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9428499496475328
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5701.313715439891
getValue() (loglikelihood, optimizable by label likelihood) =-4568.95636126781
getValue() (loglikelihood, optimizable by label likelihood) =-4561.813967345324
getValue() (loglikelihood, optimizable by label likelihood) =-4559.769778829935
CRF finished one iteration of maximizer, i=0
Evaluator iteration=271 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9424862929394652
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6360.448303128667
getValue() (loglikelihood, optimizable by label likelihood) =-4566.301977231481
getValue() (loglikelihood, optimizable by label likelihood) =-4558.992929770516
getValue() (loglikelihood, optimizable by label likelihood) =-4556.973091038009
CRF finished one iteration of maximizer, i=0
Evaluator iteration=272 cost=NA (not Optimizable.ByValue)
Training accuracy=0.942877923240461
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5693.763012658506
getValue() (loglikelihood, optimizable by label likelihood) =-4563.397495361601
getValue() (loglikelihood, optimizable by label likelihood) =-4556.2677551772
getValue() (loglikelihood, optimizable by label likelihood) =-4554.22639099721
CRF finished one iteration of maximizer, i=0
Evaluator iteration=273 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9426821080899631
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6357.644931430341
getValue() (loglikelihood, optimizable by label likelihood) =-4560.788803613655
getValue() (loglikelihood, optimizable by label likelihood) =-4553.450912403653
getValue() (loglikelihood, optimizable by label likelihood) =-4551.442375230206
CRF finished one iteration of maximizer, i=0
Evaluator iteration=274 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9429898176121742
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5686.243601685997
getValue() (loglikelihood, optimizable by label likelihood) =-4557.859135510685
getValue() (loglikelihood, optimizable by label likelihood) =-4550.7420092232005
getValue() (loglikelihood, optimizable by label likelihood) =-4548.703456610322
CRF finished one iteration of maximizer, i=0
Evaluator iteration=275 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9427380552758197
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6354.840988929272
getValue() (loglikelihood, optimizable by label likelihood) =-4555.295814808199
getValue() (loglikelihood, optimizable by label likelihood) =-4547.929336247193
getValue() (loglikelihood, optimizable by label likelihood) =-4545.931956664723
CRF finished one iteration of maximizer, i=0
Evaluator iteration=276 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9429898176121742
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5678.755370460693
getValue() (loglikelihood, optimizable by label likelihood) =-4552.341038533607
getValue() (loglikelihood, optimizable by label likelihood) =-4545.236483816777
getValue() (loglikelihood, optimizable by label likelihood) =-4543.200730091024
CRF finished one iteration of maximizer, i=0
Evaluator iteration=277 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9429338704263176
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6352.035911666255
getValue() (loglikelihood, optimizable by label likelihood) =-4549.822766560327
getValue() (loglikelihood, optimizable by label likelihood) =-4542.42795601946
getValue() (loglikelihood, optimizable by label likelihood) =-4540.441592608199
CRF finished one iteration of maximizer, i=0
Evaluator iteration=278 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9430457647980307
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5671.298195646323
getValue() (loglikelihood, optimizable by label likelihood) =-4546.842966043655
getValue() (loglikelihood, optimizable by label likelihood) =-4539.750938265532
getValue() (loglikelihood, optimizable by label likelihood) =-4537.717970833061
CRF finished one iteration of maximizer, i=0
Evaluator iteration=279 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9429338704263176
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6349.229175629027
getValue() (loglikelihood, optimizable by label likelihood) =-4544.369419721417
getValue() (loglikelihood, optimizable by label likelihood) =-4536.946531401063
getValue() (loglikelihood, optimizable by label likelihood) =-4534.971045256474
CRF finished one iteration of maximizer, i=0
Evaluator iteration=280 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9432695535414569
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5663.8719433654605
getValue() (loglikelihood, optimizable by label likelihood) =-4541.364684351299
getValue() (loglikelihood, optimizable by label likelihood) =-4534.285136745391
getValue() (loglikelihood, optimizable by label likelihood) =-4532.254943096715
CRF finished one iteration of maximizer, i=0
Evaluator iteration=281 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9432136063556004
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6346.4202949686305
getValue() (loglikelihood, optimizable by label likelihood) =-4538.935540134511
getValue() (loglikelihood, optimizable by label likelihood) =-4531.484826929762
getValue() (loglikelihood, optimizable by label likelihood) =-4529.520081628617
CRF finished one iteration of maximizer, i=0
Evaluator iteration=282 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9433534743202417
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5656.476470077818
getValue() (loglikelihood, optimizable by label likelihood) =-4535.905964370128
getValue() (loglikelihood, optimizable by label likelihood) =-4528.838848196701
getValue() (loglikelihood, optimizable by label likelihood) =-4526.811415905094
CRF finished one iteration of maximizer, i=0
Evaluator iteration=283 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9432136063556004
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6343.608819964795
getValue() (loglikelihood, optimizable by label likelihood) =-4533.520898520246
getValue() (loglikelihood, optimizable by label likelihood) =-4526.042611897198
getValue() (loglikelihood, optimizable by label likelihood) =-4524.088473462763
CRF finished one iteration of maximizer, i=0
Evaluator iteration=284 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9434094215060982
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5649.111623172256
getValue() (loglikelihood, optimizable by label likelihood) =-4530.466581520758
getValue() (loglikelihood, optimizable by label likelihood) =-4523.411846221235
getValue() (loglikelihood, optimizable by label likelihood) =-4521.387162941606
CRF finished one iteration of maximizer, i=0
Evaluator iteration=285 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9432136063556004
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6340.794335421164
getValue() (loglikelihood, optimizable by label likelihood) =-4528.125270366244
getValue() (loglikelihood, optimizable by label likelihood) =-4520.619660246635
getValue() (loglikelihood, optimizable by label likelihood) =-4518.6759971133015
CRF finished one iteration of maximizer, i=0
Evaluator iteration=286 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9434094215060982
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5641.777241695126
getValue() (loglikelihood, optimizable by label likelihood) =-4525.046315638193
getValue() (loglikelihood, optimizable by label likelihood) =-4518.003908981216
getValue() (loglikelihood, optimizable by label likelihood) =-4515.981962449114
CRF finished one iteration of maximizer, i=0
Evaluator iteration=287 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9432695535414569
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6337.976458916436
getValue() (loglikelihood, optimizable by label likelihood) =-4522.748435817541
getValue() (loglikelihood, optimizable by label likelihood) =-4515.2157504724555
getValue() (loglikelihood, optimizable by label likelihood) =-4513.28243344976
CRF finished one iteration of maximizer, i=0
Evaluator iteration=288 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9433814479131699
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5634.473156998743
getValue() (loglikelihood, optimizable by label likelihood) =-4519.644950879596
getValue() (loglikelihood, optimizable by label likelihood) =-4512.614819099599
getValue() (loglikelihood, optimizable by label likelihood) =-4510.595597130533
CRF finished one iteration of maximizer, i=0
Evaluator iteration=289 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9433255007273135
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6335.154839088682
getValue() (loglikelihood, optimizable by label likelihood) =-4517.390179568674
getValue() (loglikelihood, optimizable by label likelihood) =-4509.830665521069
getValue() (loglikelihood, optimizable by label likelihood) =-4507.9075677572055
CRF finished one iteration of maximizer, i=0
Evaluator iteration=290 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9434373950990265
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5627.199193392827
getValue() (loglikelihood, optimizable by label likelihood) =-4514.262275633986
getValue() (loglikelihood, optimizable by label likelihood) =-4507.244363562224
getValue() (loglikelihood, optimizable by label likelihood) =-4505.227854051071
CRF finished one iteration of maximizer, i=0
Evaluator iteration=291 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9433534743202417
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6332.329154088917
getValue() (loglikelihood, optimizable by label likelihood) =-4512.050290758449
getValue() (loglikelihood, optimizable by label likelihood) =-4504.4641926934755
getValue() (loglikelihood, optimizable by label likelihood) =-4502.5511896384505
CRF finished one iteration of maximizer, i=0
Evaluator iteration=292 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9434373950990265
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5619.955168658665
getValue() (loglikelihood, optimizable by label likelihood) =-4508.898082431964
getValue() (loglikelihood, optimizable by label likelihood) =-4501.892333621321
getValue() (loglikelihood, optimizable by label likelihood) =-4499.878524542001
CRF finished one iteration of maximizer, i=0
Evaluator iteration=293 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9433534743202417
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6329.499110201692
getValue() (loglikelihood, optimizable by label likelihood) =-4506.728562867281
getValue() (loglikelihood, optimizable by label likelihood) =-4499.116123549331
getValue() (loglikelihood, optimizable by label likelihood) =-4497.21309291806
CRF finished one iteration of maximizer, i=0
Evaluator iteration=294 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9435492894707396
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5612.740894557118
getValue() (loglikelihood, optimizable by label likelihood) =-4503.55216785728
getValue() (loglikelihood, optimizable by label likelihood) =-4496.558524700928
getValue() (loglikelihood, optimizable by label likelihood) =-4494.547404106239
CRF finished one iteration of maximizer, i=0
Evaluator iteration=295 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9434094215060982
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6326.664440335283
getValue() (loglikelihood, optimizable by label likelihood) =-4501.424793615257
getValue() (loglikelihood, optimizable by label likelihood) =-4493.7862538127
getValue() (loglikelihood, optimizable by label likelihood) =-4491.893075547659
CRF finished one iteration of maximizer, i=0
Evaluator iteration=296 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9435772630636678
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5605.556177500462
getValue() (loglikelihood, optimizable by label likelihood) =-4498.224332461559
getValue() (loglikelihood, optimizable by label likelihood) =-4491.242736303941
getValue() (loglikelihood, optimizable by label likelihood) =-4489.234292325413
CRF finished one iteration of maximizer, i=0
Evaluator iteration=297 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9434094215060982
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6323.82490261343
getValue() (loglikelihood, optimizable by label likelihood) =-4496.138784862955
getValue() (loglikelihood, optimizable by label likelihood) =-4488.474383279533
getValue() (loglikelihood, optimizable by label likelihood) =-4486.590939513501
CRF finished one iteration of maximizer, i=0
Evaluator iteration=298 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9436611838424527
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5598.400818865627
getValue() (loglikelihood, optimizable by label likelihood) =-4492.91438067728
getValue() (loglikelihood, optimizable by label likelihood) =-4485.944771920767
getValue() (loglikelihood, optimizable by label likelihood) =-4483.938992768777
CRF finished one iteration of maximizer, i=0
Evaluator iteration=299 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9434094215060982
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6320.980279137683
getValue() (loglikelihood, optimizable by label likelihood) =-4490.870342514403
getValue() (loglikelihood, optimizable by label likelihood) =-4483.180315726711
getValue() (loglikelihood, optimizable by label likelihood) =-4481.306490745371
CRF finished one iteration of maximizer, i=0
Evaluator iteration=300 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9437730782141658
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5591.274615573468
getValue() (loglikelihood, optimizable by label likelihood) =-4487.622120734862
getValue() (loglikelihood, optimizable by label likelihood) =-4480.664438939775
getValue() (loglikelihood, optimizable by label likelihood) =-4478.661312903615
CRF finished one iteration of maximizer, i=0
Evaluator iteration=301 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9434373950990265
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6318.13037464837
getValue() (loglikelihood, optimizable by label likelihood) =-4485.619276421457
getValue() (loglikelihood, optimizable by label likelihood) =-4477.903858822785
getValue() (loglikelihood, optimizable by label likelihood) =-4476.039539027317
CRF finished one iteration of maximizer, i=0
Evaluator iteration=302 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9438569989929506
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5584.17736050525
getValue() (loglikelihood, optimizable by label likelihood) =-4482.347364580151
getValue() (loglikelihood, optimizable by label likelihood) =-4475.401548559385
getValue() (loglikelihood, optimizable by label likelihood) =-4473.40106400751
CRF finished one iteration of maximizer, i=0
Evaluator iteration=303 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9434373950990265
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6315.275015382495
getValue() (loglikelihood, optimizable by label likelihood) =-4480.385400291054
getValue() (loglikelihood, optimizable by label likelihood) =-4472.644824040402
getValue() (loglikelihood, optimizable by label likelihood) =-4470.789897910357
CRF finished one iteration of maximizer, i=0
Evaluator iteration=304 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9439129461788072
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5577.108842845796
getValue() (loglikelihood, optimizable by label likelihood) =-4477.089927792607
getValue() (loglikelihood, optimizable by label likelihood) =-4470.155915701937
getValue() (loglikelihood, optimizable by label likelihood) =-4468.158061082233
CRF finished one iteration of maximizer, i=0
Evaluator iteration=305 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9436052366565961
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6312.414047987992
getValue() (loglikelihood, optimizable by label likelihood) =-4475.168531594231
getValue() (loglikelihood, optimizable by label likelihood) =-4467.4030265704805
getValue() (loglikelihood, optimizable by label likelihood) =-4465.557384626623
CRF finished one iteration of maximizer, i=0
Evaluator iteration=306 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9439129461788072
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5570.0688485257015
getValue() (loglikelihood, optimizable by label likelihood) =-4471.84962950635
getValue() (loglikelihood, optimizable by label likelihood) =-4464.927358929217
getValue() (loglikelihood, optimizable by label likelihood) =-4462.9321227693345
CRF finished one iteration of maximizer, i=0
Evaluator iteration=307 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9436052366565961
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6309.547338296995
getValue() (loglikelihood, optimizable by label likelihood) =-4469.968491476176
getValue() (loglikelihood, optimizable by label likelihood) =-4462.178285237918
getValue() (loglikelihood, optimizable by label likelihood) =-4460.341820005222
CRF finished one iteration of maximizer, i=0
Evaluator iteration=308 cost=NA (not Optimizable.ByValue)
Training accuracy=0.943996866957592
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5563.057160618012
getValue() (loglikelihood, optimizable by label likelihood) =-4466.62629233223
getValue() (loglikelihood, optimizable by label likelihood) =-4459.715700359608
getValue() (loglikelihood, optimizable by label likelihood) =-4457.723071267319
CRF finished one iteration of maximizer, i=0
Evaluator iteration=309 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9437451046212375
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6306.674770325698
getValue() (loglikelihood, optimizable by label likelihood) =-4464.785104669409
getValue() (loglikelihood, optimizable by label likelihood) =-4456.970422419114
getValue() (loglikelihood, optimizable by label likelihood) =-4455.143028390137
CRF finished one iteration of maximizer, i=0
Evaluator iteration=310 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9440807877363768
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5556.073559609615
getValue() (loglikelihood, optimizable by label likelihood) =-4461.419742280526
getValue() (loglikelihood, optimizable by label likelihood) =-4454.520765587064
getValue() (loglikelihood, optimizable by label likelihood) =-4452.530732250674
CRF finished one iteration of maximizer, i=0
Evaluator iteration=311 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9437730782141658
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6303.79624529693
getValue() (loglikelihood, optimizable by label likelihood) =-4459.6181994083845
getValue() (loglikelihood, optimizable by label likelihood) =-4451.77926396104
getValue() (loglikelihood, optimizable by label likelihood) =-4449.960837559396
CRF finished one iteration of maximizer, i=0
Evaluator iteration=312 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9441926821080899
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5549.117823820096
getValue() (loglikelihood, optimizable by label likelihood) =-4456.229808686716
getValue() (loglikelihood, optimizable by label likelihood) =-4449.342383601674
getValue() (loglikelihood, optimizable by label likelihood) =-4447.3549347904145
CRF finished one iteration of maximizer, i=0
Evaluator iteration=313 cost=NA (not Optimizable.ByValue)
Training accuracy=0.943996866957592
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6300.91168060693
getValue() (loglikelihood, optimizable by label likelihood) =-4454.467607345909
getValue() (loglikelihood, optimizable by label likelihood) =-4446.604639102109
getValue() (loglikelihood, optimizable by label likelihood) =-4444.7950786463625
CRF finished one iteration of maximizer, i=0
Evaluator iteration=314 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9442486292939465
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5542.189729584693
getValue() (loglikelihood, optimizable by label likelihood) =-4451.056324136352
getValue() (loglikelihood, optimizable by label likelihood) =-4444.1803867118
getValue() (loglikelihood, optimizable by label likelihood) =-4442.195511276294
CRF finished one iteration of maximizer, i=0
Evaluator iteration=315 cost=NA (not Optimizable.ByValue)
Training accuracy=0.943996866957592
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6298.0210090459905
getValue() (loglikelihood, optimizable by label likelihood) =-4449.33316347211
getValue() (loglikelihood, optimizable by label likelihood) =-4441.446380394446
getValue() (loglikelihood, optimizable by label likelihood) =-4439.645586062267
CRF finished one iteration of maximizer, i=0
Evaluator iteration=316 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9442486292939465
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5535.289051695776
getValue() (loglikelihood, optimizable by label likelihood) =-4445.899124394511
getValue() (loglikelihood, optimizable by label likelihood) =-4439.034610468061
getValue() (loglikelihood, optimizable by label likelihood) =-4437.052297340744
CRF finished one iteration of maximizer, i=0
Evaluator iteration=317 cost=NA (not Optimizable.ByValue)
Training accuracy=0.943996866957592
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6295.124177701319
getValue() (loglikelihood, optimizable by label likelihood) =-4444.2147060337575
getValue() (loglikelihood, optimizable by label likelihood) =-4436.304323628103
getValue() (loglikelihood, optimizable by label likelihood) =-4434.512197420746
CRF finished one iteration of maximizer, i=0
Evaluator iteration=318 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9442486292939465
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5528.415563533023
getValue() (loglikelihood, optimizable by label likelihood) =-4440.758048333242
getValue() (loglikelihood, optimizable by label likelihood) =-4433.904893588684
getValue() (loglikelihood, optimizable by label likelihood) =-4431.925131784219
CRF finished one iteration of maximizer, i=0
Evaluator iteration=319 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9438290254000223
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6292.221147355535
getValue() (loglikelihood, optimizable by label likelihood) =-4439.112076457501
getValue() (loglikelihood, optimizable by label likelihood) =-4431.178307756487
getValue() (loglikelihood, optimizable by label likelihood) =-4429.394753463721
CRF finished one iteration of maximizer, i=0
Evaluator iteration=320 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9443884972585879
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5521.569037399731
getValue() (loglikelihood, optimizable by label likelihood) =-4435.632937863041
getValue() (loglikelihood, optimizable by label likelihood) =-4428.791077886535
getValue() (loglikelihood, optimizable by label likelihood) =-4426.813856502284
CRF finished one iteration of maximizer, i=0
Evaluator iteration=321 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9441367349222334
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6289.311891537351
getValue() (loglikelihood, optimizable by label likelihood) =-4434.025119273055
getValue() (loglikelihood, optimizable by label likelihood) =-4426.068174823671
getValue() (loglikelihood, optimizable by label likelihood) =-4424.293097989067
CRF finished one iteration of maximizer, i=0
Evaluator iteration=322 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9444444444444444
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5514.749244753528
getValue() (loglikelihood, optimizable by label likelihood) =-4430.523637864802
getValue() (loglikelihood, optimizable by label likelihood) =-4423.69300819791
getValue() (loglikelihood, optimizable by label likelihood) =-4421.718316414328
CRF finished one iteration of maximizer, i=0
Evaluator iteration=323 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9441367349222334
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6286.396395768499
getValue() (loglikelihood, optimizable by label likelihood) =-4428.953682038904
getValue() (loglikelihood, optimizable by label likelihood) =-4420.973769893198
getValue() (loglikelihood, optimizable by label likelihood) =-4419.207077779749
CRF finished one iteration of maximizer, i=0
Evaluator iteration=324 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9444164708515161
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5507.955956451219
getValue() (loglikelihood, optimizable by label likelihood) =-4425.429996123144
getValue() (loglikelihood, optimizable by label likelihood) =-4418.610532312567
getValue() (loglikelihood, optimizable by label likelihood) =-4416.638359393578
CRF finished one iteration of maximizer, i=0
Evaluator iteration=325 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9441367349222334
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6283.474656852473
getValue() (loglikelihood, optimizable by label likelihood) =-4423.897615269874
getValue() (loglikelihood, optimizable by label likelihood) =-4415.8949409783145
getValue() (loglikelihood, optimizable by label likelihood) =-4414.13654253465
CRF finished one iteration of maximizer, i=0
Evaluator iteration=326 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9444724180373727
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5501.188942888939
getValue() (loglikelihood, optimizable by label likelihood) =-4420.351863260557
getValue() (loglikelihood, optimizable by label likelihood) =-4413.543500905484
getValue() (loglikelihood, optimizable by label likelihood) =-4411.5738361989115
CRF finished one iteration of maximizer, i=0
Evaluator iteration=327 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9444724180373727
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6280.5466822235385
getValue() (loglikelihood, optimizable by label likelihood) =-4418.856772366329
getValue() (loglikelihood, optimizable by label likelihood) =-4410.831538973828
getValue() (loglikelihood, optimizable by label likelihood) =-4409.081344800756
CRF finished one iteration of maximizer, i=0
Evaluator iteration=328 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9444724180373727
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5494.447974290089
getValue() (loglikelihood, optimizable by label likelihood) =-4415.289092674271
getValue() (loglikelihood, optimizable by label likelihood) =-4408.491767470073
getValue() (loglikelihood, optimizable by label likelihood) =-4406.524600407954
CRF finished one iteration of maximizer, i=0
Evaluator iteration=329 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9446682331878706
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6277.612489173116
getValue() (loglikelihood, optimizable by label likelihood) =-4413.831009544423
getValue() (loglikelihood, optimizable by label likelihood) =-4405.783417589445
getValue() (loglikelihood, optimizable by label likelihood) =-4404.041339906894
CRF finished one iteration of maximizer, i=0
Evaluator iteration=330 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9445843124090858
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5487.732820839315
getValue() (loglikelihood, optimizable by label likelihood) =-4410.241540473078
getValue() (loglikelihood, optimizable by label likelihood) =-4403.455188252767
getValue() (loglikelihood, optimizable by label likelihood) =-4401.490508351695
CRF finished one iteration of maximizer, i=0
Evaluator iteration=331 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9447801275595837
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6274.672104331013
getValue() (loglikelihood, optimizable by label likelihood) =-4408.820185769085
getValue() (loglikelihood, optimizable by label likelihood) =-4400.750433284433
getValue() (loglikelihood, optimizable by label likelihood) =-4399.016385899067
CRF finished one iteration of maximizer, i=0
Evaluator iteration=332 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9445843124090858
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5481.043252871398
getValue() (loglikelihood, optimizable by label likelihood) =-4405.209065416384
getValue() (loglikelihood, optimizable by label likelihood) =-4398.433622189292
getValue() (loglikelihood, optimizable by label likelihood) =-4396.47141905074
CRF finished one iteration of maximizer, i=0
Evaluator iteration=333 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9448640483383686
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6271.725562937438
getValue() (loglikelihood, optimizable by label likelihood) =-4403.824162687249
getValue() (loglikelihood, optimizable by label likelihood) =-4395.732445204027
getValue() (loglikelihood, optimizable by label likelihood) =-4394.006343477045
CRF finished one iteration of maximizer, i=0
Evaluator iteration=334 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9445843124090858
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5474.379041076489
getValue() (loglikelihood, optimizable by label likelihood) =-4400.191528854342
getValue() (loglikelihood, optimizable by label likelihood) =-4393.4269308421
getValue() (loglikelihood, optimizable by label likelihood) =-4391.467194152628
CRF finished one iteration of maximizer, i=0
Evaluator iteration=335 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9448920219312968
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6268.7729083305685
getValue() (loglikelihood, optimizable by label likelihood) =-4398.842804563803
getValue() (loglikelihood, optimizable by label likelihood) =-4390.729315116888
getValue() (loglikelihood, optimizable by label likelihood) =-4389.011075932557
CRF finished one iteration of maximizer, i=0
Evaluator iteration=336 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9446402595949424
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5467.739956579397
getValue() (loglikelihood, optimizable by label likelihood) =-4395.188794668666
getValue() (loglikelihood, optimizable by label likelihood) =-4388.434978339369
getValue() (loglikelihood, optimizable by label likelihood) =-4386.477697870897
CRF finished one iteration of maximizer, i=0
Evaluator iteration=337 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9449199955242251
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6265.814191446565
getValue() (loglikelihood, optimizable by label likelihood) =-4393.8759782189045
getValue() (loglikelihood, optimizable by label likelihood) =-4385.74090735423
getValue() (loglikelihood, optimizable by label likelihood) =-4384.030449088811
CRF finished one iteration of maximizer, i=0
Evaluator iteration=338 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9446962067807989
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5461.125771116701
getValue() (loglikelihood, optimizable by label likelihood) =-4390.20072921531
getValue() (loglikelihood, optimizable by label likelihood) =-4383.457631315241
getValue() (loglikelihood, optimizable by label likelihood) =-4381.502796925265
CRF finished one iteration of maximizer, i=0
Evaluator iteration=339 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9449759427100817
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6262.849470206109
getValue() (loglikelihood, optimizable by label likelihood) =-4388.923552965951
getValue() (loglikelihood, optimizable by label likelihood) =-4380.7670887501645
getValue() (loglikelihood, optimizable by label likelihood) =-4379.064331241247
CRF finished one iteration of maximizer, i=0
Evaluator iteration=340 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9447241803737272
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5454.536257237149
getValue() (loglikelihood, optimizable by label likelihood) =-4385.227201269084
getValue() (loglikelihood, optimizable by label likelihood) =-4378.494758851658
getValue() (loglikelihood, optimizable by label likelihood) =-4376.542360483352
CRF finished one iteration of maximizer, i=0
Evaluator iteration=341 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9451437842676513
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6259.878808976551
getValue() (loglikelihood, optimizable by label likelihood) =-4383.985400551461
getValue() (loglikelihood, optimizable by label likelihood) =-4375.807728583494
getValue() (loglikelihood, optimizable by label likelihood) =-4374.112593099879
CRF finished one iteration of maximizer, i=0
Evaluator iteration=342 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9448360747454403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5447.971188326354
getValue() (loglikelihood, optimizable by label likelihood) =-4380.268081967409
getValue() (loglikelihood, optimizable by label likelihood) =-4373.546232421093
getValue() (loglikelihood, optimizable by label likelihood) =-4371.596260103498
CRF finished one iteration of maximizer, i=0
Evaluator iteration=343 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9451997314535079
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6256.902278233574
getValue() (loglikelihood, optimizable by label likelihood) =-4379.061395097255
getValue() (loglikelihood, optimizable by label likelihood) =-4370.862698520646
getValue() (loglikelihood, optimizable by label likelihood) =-4369.175107732838
CRF finished one iteration of maximizer, i=0
Evaluator iteration=344 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9448360747454403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5441.430338758965
getValue() (loglikelihood, optimizable by label likelihood) =-4375.323244757077
getValue() (loglikelihood, optimizable by label likelihood) =-4368.611925831007
getValue() (loglikelihood, optimizable by label likelihood) =-4366.664369679097
CRF finished one iteration of maximizer, i=0
Evaluator iteration=345 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9452277050464362
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6253.919954020694
getValue() (loglikelihood, optimizable by label likelihood) =-4374.151413042657
getValue() (loglikelihood, optimizable by label likelihood) =-4365.93187256007
getValue() (loglikelihood, optimizable by label likelihood) =-4364.251750511037
CRF finished one iteration of maximizer, i=0
Evaluator iteration=346 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9448360747454403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5434.913484045769
getValue() (loglikelihood, optimizable by label likelihood) =-4370.39256534184
getValue() (loglikelihood, optimizable by label likelihood) =-4363.691715169252
getValue() (loglikelihood, optimizable by label likelihood) =-4361.746565383981
CRF finished one iteration of maximizer, i=0
Evaluator iteration=347 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9452277050464362
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6250.93191748337
getValue() (loglikelihood, optimizable by label likelihood) =-4369.2553330886585
getValue() (loglikelihood, optimizable by label likelihood) =-4361.0151269777925
getValue() (loglikelihood, optimizable by label likelihood) =-4359.342399054421
CRF finished one iteration of maximizer, i=0
Evaluator iteration=348 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9448360747454403
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5428.420400884858
getValue() (loglikelihood, optimizable by label likelihood) =-4365.475921630467
getValue() (loglikelihood, optimizable by label likelihood) =-4358.785478750949
getValue() (loglikelihood, optimizable by label likelihood) =-4356.842725619252
CRF finished one iteration of maximizer, i=0
Evaluator iteration=349 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9453675730110775
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6247.938254571469
getValue() (loglikelihood, optimizable by label likelihood) =-4364.37303614398
getValue() (loglikelihood, optimizable by label likelihood) =-4356.112340274265
getValue() (loglikelihood, optimizable by label likelihood) =-4354.4469331792025
CRF finished one iteration of maximizer, i=0
Evaluator iteration=350 cost=NA (not Optimizable.ByValue)
Training accuracy=0.944808101152512
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5421.9508673011605
getValue() (loglikelihood, optimizable by label likelihood) =-4360.573193686853
getValue() (loglikelihood, optimizable by label likelihood) =-4353.893097066418
getValue() (loglikelihood, optimizable by label likelihood) =-4351.952730961211
CRF finished one iteration of maximizer, i=0
Evaluator iteration=351 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9454235201969341
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6244.939055492377
getValue() (loglikelihood, optimizable by label likelihood) =-4359.504405271058
getValue() (loglikelihood, optimizable by label likelihood) =-4351.223393122395
getValue() (loglikelihood, optimizable by label likelihood) =-4349.565234846354
CRF finished one iteration of maximizer, i=0
Evaluator iteration=352 cost=NA (not Optimizable.ByValue)
Training accuracy=0.944808101152512
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5415.504662687826
getValue() (loglikelihood, optimizable by label likelihood) =-4355.684263680077
getValue() (loglikelihood, optimizable by label likelihood) =-4349.014452730249
getValue() (loglikelihood, optimizable by label likelihood) =-4347.07646411037
CRF finished one iteration of maximizer, i=0
Evaluator iteration=353 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9454514937898624
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6241.934414464483
getValue() (loglikelihood, optimizable by label likelihood) =-4354.64932563473
getValue() (loglikelihood, optimizable by label likelihood) =-4346.348168316647
getValue() (loglikelihood, optimizable by label likelihood) =-4344.697188111331
CRF finished one iteration of maximizer, i=0
Evaluator iteration=354 cost=NA (not Optimizable.ByValue)
Training accuracy=0.944808101152512
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5409.0815679598145
getValue() (loglikelihood, optimizable by label likelihood) =-4350.809015837316
getValue() (loglikelihood, optimizable by label likelihood) =-4344.14943043186
getValue() (loglikelihood, optimizable by label likelihood) =-4342.213809841917
CRF finished one iteration of maximizer, i=0
Evaluator iteration=355 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9454514937898624
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6238.924429256351
getValue() (loglikelihood, optimizable by label likelihood) =-4349.807684451161
getValue() (loglikelihood, optimizable by label likelihood) =-4341.48655072363
getValue() (loglikelihood, optimizable by label likelihood) =-4339.842679075011
CRF finished one iteration of maximizer, i=0
Evaluator iteration=356 cost=NA (not Optimizable.ByValue)
Training accuracy=0.944808101152512
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5402.681365534927
getValue() (loglikelihood, optimizable by label likelihood) =-4345.947336395462
getValue() (loglikelihood, optimizable by label likelihood) =-4339.297916886748
getValue() (loglikelihood, optimizable by label likelihood) =-4337.364654957029
CRF finished one iteration of maximizer, i=0
Evaluator iteration=357 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9455633881615755
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6235.90920098853
getValue() (loglikelihood, optimizable by label likelihood) =-4344.979370939003
getValue() (loglikelihood, optimizable by label likelihood) =-4336.638427233409
getValue() (loglikelihood, optimizable by label likelihood) =-4335.00159583559
CRF finished one iteration of maximizer, i=0
Evaluator iteration=358 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9448640483383686
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5396.303839471593
getValue() (loglikelihood, optimizable by label likelihood) =-4341.099113555873
getValue() (loglikelihood, optimizable by label likelihood) =-4334.459800789181
getValue() (loglikelihood, optimizable by label likelihood) =-4332.528888235454
CRF finished one iteration of maximizer, i=0
Evaluator iteration=359 cost=NA (not Optimizable.ByValue)
Training accuracy=0.945619335347432
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6232.888833700118
getValue() (loglikelihood, optimizable by label likelihood) =-4340.164276270589
getValue() (loglikelihood, optimizable by label likelihood) =-4331.803686712226
getValue() (loglikelihood, optimizable by label likelihood) =-4330.173828441722
CRF finished one iteration of maximizer, i=0
Evaluator iteration=360 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9449479691171534
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5389.948775505365
getValue() (loglikelihood, optimizable by label likelihood) =-4336.264237439063
getValue() (loglikelihood, optimizable by label likelihood) =-4329.634972765851
getValue() (loglikelihood, optimizable by label likelihood) =-4327.70640038916
CRF finished one iteration of maximizer, i=0
Evaluator iteration=361 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9456473089403603
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6229.863434053499
getValue() (loglikelihood, optimizable by label likelihood) =-4335.362293524746
getValue() (loglikelihood, optimizable by label likelihood) =-4326.982219956186
getValue() (loglikelihood, optimizable by label likelihood) =-4325.359268846674
CRF finished one iteration of maximizer, i=0
Evaluator iteration=362 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9449759427100817
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5383.615961114245
getValue() (loglikelihood, optimizable by label likelihood) =-4331.44260004056
getValue() (loglikelihood, optimizable by label likelihood) =-4324.823325330556
getValue() (loglikelihood, optimizable by label likelihood) =-4322.897084016987
CRF finished one iteration of maximizer, i=0
Evaluator iteration=363 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9456473089403603
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6226.833111134043
getValue() (loglikelihood, optimizable by label likelihood) =-4330.573317641441
getValue() (loglikelihood, optimizable by label likelihood) =-4322.173919645967
getValue() (loglikelihood, optimizable by label likelihood) =-4320.557810863605
CRF finished one iteration of maximizer, i=0
Evaluator iteration=364 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9450878370817948
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5377.305185582599
getValue() (loglikelihood, optimizable by label likelihood) =-4326.634095188159
getValue() (loglikelihood, optimizable by label likelihood) =-4320.024752840076
getValue() (loglikelihood, optimizable by label likelihood) =-4318.100833560454
CRF finished one iteration of maximizer, i=0
Evaluator iteration=365 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9456473089403603
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6223.797976018762
getValue() (loglikelihood, optimizable by label likelihood) =-4325.797245375952
getValue() (loglikelihood, optimizable by label likelihood) =-4317.378680302746
getValue() (loglikelihood, optimizable by label likelihood) =-4315.769350121811
CRF finished one iteration of maximizer, i=0
Evaluator iteration=366 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9450878370817948
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5371.016240057723
getValue() (loglikelihood, optimizable by label likelihood) =-4321.838618499701
getValue() (loglikelihood, optimizable by label likelihood) =-4315.23915145091
getValue() (loglikelihood, optimizable by label likelihood) =-4313.31754526046
CRF finished one iteration of maximizer, i=0
Evaluator iteration=367 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9457032561262169
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6220.758141672395
getValue() (loglikelihood, optimizable by label likelihood) =-4321.033975256018
getValue() (loglikelihood, optimizable by label likelihood) =-4312.596398244934
getValue() (loglikelihood, optimizable by label likelihood) =-4310.993784024077
CRF finished one iteration of maximizer, i=0
Evaluator iteration=368 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9452556786393644
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5364.74891753029
getValue() (loglikelihood, optimizable by label likelihood) =-4317.056067341395
getValue() (loglikelihood, optimizable by label likelihood) =-4310.46641907708
getValue() (loglikelihood, optimizable by label likelihood) =-4308.547117115128
CRF finished one iteration of maximizer, i=0
Evaluator iteration=369 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9457592033120734
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6217.713722650165
getValue() (loglikelihood, optimizable by label likelihood) =-4316.28340753867
getValue() (loglikelihood, optimizable by label likelihood) =-4307.8269715460265
getValue() (loglikelihood, optimizable by label likelihood) =-4306.231011704865
CRF finished one iteration of maximizer, i=0
Evaluator iteration=370 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9454514937898624
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5358.503012994509
getValue() (loglikelihood, optimizable by label likelihood) =-4312.286340788642
getValue() (loglikelihood, optimizable by label likelihood) =-4305.706455348946
getValue() (loglikelihood, optimizable by label likelihood) =-4303.7894488384645
CRF finished one iteration of maximizer, i=0
Evaluator iteration=371 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9457592033120734
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6214.66483478097
getValue() (loglikelihood, optimizable by label likelihood) =-4311.54544416829
getValue() (loglikelihood, optimizable by label likelihood) =-4303.070299993469
getValue() (loglikelihood, optimizable by label likelihood) =-4301.480933989723
CRF finished one iteration of maximizer, i=0
Evaluator iteration=372 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9455633881615755
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5352.278323328687
getValue() (loglikelihood, optimizable by label likelihood) =-4307.529339585266
getValue() (loglikelihood, optimizable by label likelihood) =-4300.959161572852
getValue() (loglikelihood, optimizable by label likelihood) =-4299.0444418201405
CRF finished one iteration of maximizer, i=0
Evaluator iteration=373 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9457592033120734
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6211.611595107672
getValue() (loglikelihood, optimizable by label likelihood) =-4306.819988736487
getValue() (loglikelihood, optimizable by label likelihood) =-4298.3262850482915
getValue() (loglikelihood, optimizable by label likelihood) =-4296.743453355288
CRF finished one iteration of maximizer, i=0
Evaluator iteration=374 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9457312297191451
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5346.074647498388
getValue() (loglikelihood, optimizable by label likelihood) =-4302.784966106607
getValue() (loglikelihood, optimizable by label likelihood) =-4296.224440691868
getValue() (loglikelihood, optimizable by label likelihood) =-4294.311999085996
CRF finished one iteration of maximizer, i=0
Evaluator iteration=375 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9457592033120734
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6208.554121521159
getValue() (loglikelihood, optimizable by label likelihood) =-4302.106946441847
getValue() (loglikelihood, optimizable by label likelihood) =-4293.594829805903
getValue() (loglikelihood, optimizable by label likelihood) =-4292.018473890606
CRF finished one iteration of maximizer, i=0
Evaluator iteration=376 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9457312297191451
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5339.891786440528
getValue() (loglikelihood, optimizable by label likelihood) =-4298.053124320644
getValue() (loglikelihood, optimizable by label likelihood) =-4291.5021972473605
getValue() (loglikelihood, optimizable by label likelihood) =-4289.592025259778
CRF finished one iteration of maximizer, i=0
Evaluator iteration=377 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9457592033120734
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6205.492532700791
getValue() (loglikelihood, optimizable by label likelihood) =-4297.406224051645
getValue() (loglikelihood, optimizable by label likelihood) =-4288.875838957634
getValue() (loglikelihood, optimizable by label likelihood) =-4287.30590125906
CRF finished one iteration of maximizer, i=0
Evaluator iteration=378 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9457312297191451
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5333.729543192745
getValue() (loglikelihood, optimizable by label likelihood) =-4293.333719752195
getValue() (loglikelihood, optimizable by label likelihood) =-4286.792337341441
getValue() (loglikelihood, optimizable by label likelihood) =-4284.8844265254265
CRF finished one iteration of maximizer, i=0
Evaluator iteration=379 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94581515049793
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6202.426947776123
getValue() (loglikelihood, optimizable by label likelihood) =-4292.717729863388
getValue() (loglikelihood, optimizable by label likelihood) =-4284.169218753292
getValue() (loglikelihood, optimizable by label likelihood) =-4282.605642661331
CRF finished one iteration of maximizer, i=0
Evaluator iteration=380 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9458990712767148
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5327.587722849824
getValue() (loglikelihood, optimizable by label likelihood) =-4288.626659446326
getValue() (loglikelihood, optimizable by label likelihood) =-4282.0947686002655
getValue() (loglikelihood, optimizable by label likelihood) =-4280.189110590422
CRF finished one iteration of maximizer, i=0
Evaluator iteration=381 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94581515049793
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6199.357486283221
getValue() (loglikelihood, optimizable by label likelihood) =-4288.041373668496
getValue() (loglikelihood, optimizable by label likelihood) =-4279.474876964453
getValue() (loglikelihood, optimizable by label likelihood) =-4277.917606799217
CRF finished one iteration of maximizer, i=0
Evaluator iteration=382 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9460109656484279
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5321.466132623723
getValue() (loglikelihood, optimizable by label likelihood) =-4283.9318519338485
getValue() (loglikelihood, optimizable by label likelihood) =-4277.409400138424
getValue() (loglikelihood, optimizable by label likelihood) =-4275.505986650076
CRF finished one iteration of maximizer, i=0
Evaluator iteration=383 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94581515049793
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6196.284267988656
getValue() (loglikelihood, optimizable by label likelihood) =-4283.377066716426
getValue() (loglikelihood, optimizable by label likelihood) =-4274.792722848793
getValue() (loglikelihood, optimizable by label likelihood) =-4273.241703840279
CRF finished one iteration of maximizer, i=0
Evaluator iteration=384 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9460109656484279
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5315.364581806873
getValue() (loglikelihood, optimizable by label likelihood) =-4279.249207196137
getValue() (loglikelihood, optimizable by label likelihood) =-4272.736142523703
getValue() (loglikelihood, optimizable by label likelihood) =-4270.834965352357
CRF finished one iteration of maximizer, i=0
Evaluator iteration=385 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9458990712767148
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6193.207412669363
getValue() (loglikelihood, optimizable by label likelihood) =-4278.724721678904
getValue() (loglikelihood, optimizable by label likelihood) =-4270.122667114978
getValue() (loglikelihood, optimizable by label likelihood) =-4268.577845383227
CRF finished one iteration of maximizer, i=0
Evaluator iteration=386 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9460109656484279
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5309.2828819032375
getValue() (loglikelihood, optimizable by label likelihood) =-4274.578636633199
getValue() (loglikelihood, optimizable by label likelihood) =-4268.074907743206
getValue() (loglikelihood, optimizable by label likelihood) =-4266.175958763937
CRF finished one iteration of maximizer, i=0
Evaluator iteration=387 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9459829920554996
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6190.12703992539
getValue() (loglikelihood, optimizable by label likelihood) =-4274.084252615754
getValue() (loglikelihood, optimizable by label likelihood) =-4265.464621888807
getValue() (loglikelihood, optimizable by label likelihood) =-4263.925944424377
CRF finished one iteration of maximizer, i=0
Evaluator iteration=388 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9460109656484279
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5303.22084648126
getValue() (loglikelihood, optimizable by label likelihood) =-4269.920053029051
getValue() (loglikelihood, optimizable by label likelihood) =-4263.425609169861
getValue() (loglikelihood, optimizable by label likelihood) =-4261.528880336646
CRF finished one iteration of maximizer, i=0
Evaluator iteration=389 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9460109656484279
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6187.043269224729
getValue() (loglikelihood, optimizable by label likelihood) =-4269.455574942168
getValue() (loglikelihood, optimizable by label likelihood) =-4260.818500679625
getValue() (loglikelihood, optimizable by label likelihood) =-4259.285915324536
CRF finished one iteration of maximizer, i=0
Evaluator iteration=390 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9460948864272127
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5297.178291352209
getValue() (loglikelihood, optimizable by label likelihood) =-4265.273370521534
getValue() (loglikelihood, optimizable by label likelihood) =-4258.788161529929
getValue() (loglikelihood, optimizable by label likelihood) =-4256.893644875003
CRF finished one iteration of maximizer, i=0
Evaluator iteration=391 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9460109656484279
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6183.956219533945
getValue() (loglikelihood, optimizable by label likelihood) =-4264.838605395051
getValue() (loglikelihood, optimizable by label likelihood) =-4256.18421834799
getValue() (loglikelihood, optimizable by label likelihood) =-4254.657673777102
CRF finished one iteration of maximizer, i=0
Evaluator iteration=392 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9460948864272127
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5291.155034400408
getValue() (loglikelihood, optimizable by label likelihood) =-4260.638504569346
getValue() (loglikelihood, optimizable by label likelihood) =-4254.162480871213
getValue() (loglikelihood, optimizable by label likelihood) =-4252.270168504427
CRF finished one iteration of maximizer, i=0
Evaluator iteration=393 cost=NA (not Optimizable.ByValue)
Training accuracy=0.946122860020141
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6180.86600946892
getValue() (loglikelihood, optimizable by label likelihood) =-4260.233262002428
getValue() (loglikelihood, optimizable by label likelihood) =-4251.561691073792
getValue() (loglikelihood, optimizable by label likelihood) =-4250.041136776522
CRF finished one iteration of maximizer, i=0
Evaluator iteration=394 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9462067807989258
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5285.150895721019
getValue() (loglikelihood, optimizable by label likelihood) =-4256.015371922729
getValue() (loglikelihood, optimizable by label likelihood) =-4249.548484531988
getValue() (loglikelihood, optimizable by label likelihood) =-4247.6583686401045
CRF finished one iteration of maximizer, i=0
Evaluator iteration=395 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9462347543918541
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6177.772756930678
getValue() (loglikelihood, optimizable by label likelihood) =-4255.639464051153
getValue() (loglikelihood, optimizable by label likelihood) =-4246.950836325317
getValue() (loglikelihood, optimizable by label likelihood) =-4245.436222587638
CRF finished one iteration of maximizer, i=0
Evaluator iteration=396 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9462067807989258
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5279.165697628427
getValue() (loglikelihood, optimizable by label likelihood) =-4251.403890593736
getValue() (loglikelihood, optimizable by label likelihood) =-4244.946091110805
getValue() (loglikelihood, optimizable by label likelihood) =-4243.058163956715
CRF finished one iteration of maximizer, i=0
Evaluator iteration=397 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9463466487635672
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6174.676579096105
getValue() (loglikelihood, optimizable by label likelihood) =-4251.057132057283
getValue() (loglikelihood, optimizable by label likelihood) =-4242.351572828937
getValue() (loglikelihood, optimizable by label likelihood) =-4240.842850715975
CRF finished one iteration of maximizer, i=0
Evaluator iteration=398 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9462067807989258
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5273.1992645283435
getValue() (loglikelihood, optimizable by label likelihood) =-4246.803979825852
getValue() (loglikelihood, optimizable by label likelihood) =-4240.355220436768
getValue() (loglikelihood, optimizable by label likelihood) =-4238.469474358861
CRF finished one iteration of maximizer, i=0
Evaluator iteration=399 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9464025959494238
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6171.57759240393
getValue() (loglikelihood, optimizable by label likelihood) =-4246.486187736766
getValue() (loglikelihood, optimizable by label likelihood) =-4237.763820539542
getValue() (loglikelihood, optimizable by label likelihood) =-4236.260941878414
CRF finished one iteration of maximizer, i=0
Evaluator iteration=400 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9466543582857783
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5267.251423054804
getValue() (loglikelihood, optimizable by label likelihood) =-4242.215560066909
getValue() (loglikelihood, optimizable by label likelihood) =-4235.775793540816
getValue() (loglikelihood, optimizable by label likelihood) =-4233.89222095216
CRF finished one iteration of maximizer, i=0
Evaluator iteration=401 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9464585431352803
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6168.475912322423
getValue() (loglikelihood, optimizable by label likelihood) =-4241.926553976088
getValue() (loglikelihood, optimizable by label likelihood) =-4233.187500611722
getValue() (loglikelihood, optimizable by label likelihood) =-4231.690417974742
CRF finished one iteration of maximizer, i=0
Evaluator iteration=402 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9466823318787065
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5261.322001979104
getValue() (loglikelihood, optimizable by label likelihood) =-4237.638552940352
getValue() (loglikelihood, optimizable by label likelihood) =-4231.207732627416
getValue() (loglikelihood, optimizable by label likelihood) =-4229.326326015008
CRF finished one iteration of maximizer, i=0
Evaluator iteration=403 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9464585431352803
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6165.371653367754
getValue() (loglikelihood, optimizable by label likelihood) =-4237.37815480461
getValue() (loglikelihood, optimizable by label likelihood) =-4228.622535371565
getValue() (loglikelihood, optimizable by label likelihood) =-4227.131202059779
CRF finished one iteration of maximizer, i=0
Evaluator iteration=404 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9467662526574914
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5255.410832316096
getValue() (loglikelihood, optimizable by label likelihood) =-4233.072881219279
getValue() (loglikelihood, optimizable by label likelihood) =-4226.650961047142
getValue() (loglikelihood, optimizable by label likelihood) =-4224.7717129711555
CRF finished one iteration of maximizer, i=0
Evaluator iteration=405 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94662638469285
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6162.264928847177
getValue() (loglikelihood, optimizable by label likelihood) =-4232.840915366379
getValue() (loglikelihood, optimizable by label likelihood) =-4224.0688482892565
getValue() (loglikelihood, optimizable by label likelihood) =-4222.583218316449
CRF finished one iteration of maximizer, i=0
Evaluator iteration=406 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9467662526574914
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5249.517747164588
getValue() (loglikelihood, optimizable by label likelihood) =-4228.518468798415
getValue() (loglikelihood, optimizable by label likelihood) =-4222.105403269834
getValue() (loglikelihood, optimizable by label likelihood) =-4220.228306362776
CRF finished one iteration of maximizer, i=0
Evaluator iteration=407 cost=NA (not Optimizable.ByValue)
Training accuracy=0.94662638469285
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6159.155851098935
getValue() (loglikelihood, optimizable by label likelihood) =-4228.314761895019
getValue() (loglikelihood, optimizable by label likelihood) =-4219.526363952166
getValue() (loglikelihood, optimizable by label likelihood) =-4218.046392029144
CRF finished one iteration of maximizer, i=0
Evaluator iteration=408 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9468221998433479
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5243.642581807172
getValue() (loglikelihood, optimizable by label likelihood) =-4223.975240669211
getValue() (loglikelihood, optimizable by label likelihood) =-4217.570984858323
getValue() (loglikelihood, optimizable by label likelihood) =-4215.696031824272
CRF finished one iteration of maximizer, i=0
Evaluator iteration=409 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9467382790645631
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6156.044531161975
getValue() (loglikelihood, optimizable by label likelihood) =-4223.7996216862875
getValue() (loglikelihood, optimizable by label likelihood) =-4214.995008038729
getValue() (loglikelihood, optimizable by label likelihood) =-4213.520649557944
CRF finished one iteration of maximizer, i=0
Evaluator iteration=410 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9468501734362762
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5237.785173688347
getValue() (loglikelihood, optimizable by label likelihood) =-4219.443122894567
getValue() (loglikelihood, optimizable by label likelihood) =-4213.047632442962
getValue() (loglikelihood, optimizable by label likelihood) =-4211.174816056737
CRF finished one iteration of maximizer, i=0
Evaluator iteration=411 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9467382790645631
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6152.931078753922
getValue() (loglikelihood, optimizable by label likelihood) =-4219.295423072916
getValue() (loglikelihood, optimizable by label likelihood) =-4210.474707292876
getValue() (loglikelihood, optimizable by label likelihood) =-4209.005918313371
CRF finished one iteration of maximizer, i=0
Evaluator iteration=412 cost=NA (not Optimizable.ByValue)
Training accuracy=0.946934094215061
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5231.945362381846
getValue() (loglikelihood, optimizable by label likelihood) =-4214.92204258384
getValue() (loglikelihood, optimizable by label likelihood) =-4208.535273696611
getValue() (loglikelihood, optimizable by label likelihood) =-4206.6645868029345
CRF finished one iteration of maximizer, i=0
Evaluator iteration=413 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9467662526574914
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6149.8156023103
getValue() (loglikelihood, optimizable by label likelihood) =-4214.802095400421
getValue() (loglikelihood, optimizable by label likelihood) =-4205.965389499111
getValue() (loglikelihood, optimizable by label likelihood) =-4204.502126731854
CRF finished one iteration of maximizer, i=0
Evaluator iteration=414 cost=NA (not Optimizable.ByValue)
Training accuracy=0.946934094215061
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5226.122989622249
getValue() (loglikelihood, optimizable by label likelihood) =-4210.4119278693115
getValue() (loglikelihood, optimizable by label likelihood) =-4204.0338373103905
getValue() (loglikelihood, optimizable by label likelihood) =-4202.165272823063
CRF finished one iteration of maximizer, i=0
Evaluator iteration=415 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9467662526574914
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6146.698208797979
getValue() (loglikelihood, optimizable by label likelihood) =-4210.319569002328
getValue() (loglikelihood, optimizable by label likelihood) =-4201.466983458281
getValue() (loglikelihood, optimizable by label likelihood) =-4200.009204251788
CRF finished one iteration of maximizer, i=0
Evaluator iteration=416 cost=NA (not Optimizable.ByValue)
Training accuracy=0.946934094215061
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5220.317899204361
getValue() (loglikelihood, optimizable by label likelihood) =-4205.912707881716
getValue() (loglikelihood, optimizable by label likelihood) =-4199.543252969854
getValue() (loglikelihood, optimizable by label likelihood) =-4197.676803870889
CRF finished one iteration of maximizer, i=0
Evaluator iteration=417 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9467662526574914
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6143.579003871369
getValue() (loglikelihood, optimizable by label likelihood) =-4205.847775177615
getValue() (loglikelihood, optimizable by label likelihood) =-4196.979418963725
getValue() (loglikelihood, optimizable by label likelihood) =-4195.527081290033
CRF finished one iteration of maximizer, i=0
Evaluator iteration=418 cost=NA (not Optimizable.ByValue)
Training accuracy=0.946934094215061
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5214.529937095598
getValue() (loglikelihood, optimizable by label likelihood) =-4201.424312728658
getValue() (loglikelihood, optimizable by label likelihood) =-4195.063451331929
getValue() (loglikelihood, optimizable by label likelihood) =-4193.199110670731
CRF finished one iteration of maximizer, i=0
Evaluator iteration=419 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9467942262504196
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6140.45809153546
getValue() (loglikelihood, optimizable by label likelihood) =-4201.386646166381
getValue() (loglikelihood, optimizable by label likelihood) =-4192.502626778295
getValue() (loglikelihood, optimizable by label likelihood) =-4191.055689219167
CRF finished one iteration of maximizer, i=0
Evaluator iteration=420 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9470180149938459
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5208.758951337059
getValue() (loglikelihood, optimizable by label likelihood) =-4196.9466734713205
getValue() (loglikelihood, optimizable by label likelihood) =-4190.594364002289
getValue() (loglikelihood, optimizable by label likelihood) =-4188.732124894753
CRF finished one iteration of maximizer, i=0
Evaluator iteration=421 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9468781470292045
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6137.335574346533
getValue() (loglikelihood, optimizable by label likelihood) =-4196.93611512875
getValue() (loglikelihood, optimizable by label likelihood) =-4188.036538611711
getValue() (loglikelihood, optimizable by label likelihood) =-4186.594960345296
CRF finished one iteration of maximizer, i=0
Evaluator iteration=422 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9470180149938459
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5203.00479203393
getValue() (loglikelihood, optimizable by label likelihood) =-4192.479722102725
getValue() (loglikelihood, optimizable by label likelihood) =-4186.135923513314
getValue() (loglikelihood, optimizable by label likelihood) =-4184.275779140995
CRF finished one iteration of maximizer, i=0
Evaluator iteration=423 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9469061206221328
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6134.211553308568
getValue() (loglikelihood, optimizable by label likelihood) =-4192.496116122798
getValue() (loglikelihood, optimizable by label likelihood) =-4183.581087098573
getValue() (loglikelihood, optimizable by label likelihood) =-4182.144827886234
CRF finished one iteration of maximizer, i=0
Evaluator iteration=424 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9471578829584872
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5197.267311375699
getValue() (loglikelihood, optimizable by label likelihood) =-4188.023391526794
getValue() (loglikelihood, optimizable by label likelihood) =-4181.688063302678
getValue() (loglikelihood, optimizable by label likelihood) =-4179.830006911921
CRF finished one iteration of maximizer, i=0
Evaluator iteration=425 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9470180149938459
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6131.086127764349
getValue() (loglikelihood, optimizable by label likelihood) =-4188.066584082871
getValue() (loglikelihood, optimizable by label likelihood) =-4179.136205776918
getValue() (loglikelihood, optimizable by label likelihood) =-4177.705225950412
CRF finished one iteration of maximizer, i=0
Evaluator iteration=426 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9471858565514155
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5191.54636361371
getValue() (loglikelihood, optimizable by label likelihood) =-4183.57761553756
getValue() (loglikelihood, optimizable by label likelihood) =-4177.250717692386
getValue() (loglikelihood, optimizable by label likelihood) =-4175.394742593389
CRF finished one iteration of maximizer, i=0
Evaluator iteration=427 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9470180149938459
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6127.959395482348
getValue() (loglikelihood, optimizable by label likelihood) =-4183.647454799744
getValue() (loglikelihood, optimizable by label likelihood) =-4174.7018290673395
getValue() (loglikelihood, optimizable by label likelihood) =-4173.276089516362
CRF finished one iteration of maximizer, i=0
Evaluator iteration=428 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9471858565514155
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5185.841804993033
getValue() (loglikelihood, optimizable by label likelihood) =-4179.142328798407
getValue() (loglikelihood, optimizable by label likelihood) =-4172.823821868368
getValue() (loglikelihood, optimizable by label likelihood) =-4170.969921434392
CRF finished one iteration of maximizer, i=0
Evaluator iteration=429 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9470739621797024
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6124.831452592553
getValue() (loglikelihood, optimizable by label likelihood) =-4179.238664900147
getValue() (loglikelihood, optimizable by label likelihood) =-4170.277892252583
getValue() (loglikelihood, optimizable by label likelihood) =-4168.8573544124665
CRF finished one iteration of maximizer, i=0
Evaluator iteration=430 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9471858565514155
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5180.153493803909
getValue() (loglikelihood, optimizable by label likelihood) =-4174.717466822878
getValue() (loglikelihood, optimizable by label likelihood) =-4168.40731186058
getValue() (loglikelihood, optimizable by label likelihood) =-4166.555479527004
CRF finished one iteration of maximizer, i=0
Evaluator iteration=431 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9470739621797024
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6121.702393513732
getValue() (loglikelihood, optimizable by label likelihood) =-4174.8401518269875
getValue() (loglikelihood, optimizable by label likelihood) =-4165.864331457651
getValue() (loglikelihood, optimizable by label likelihood) =-4164.448957297463
CRF finished one iteration of maximizer, i=0
Evaluator iteration=432 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9471858565514155
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5174.481290329055
getValue() (loglikelihood, optimizable by label likelihood) =-4170.302965955234
getValue() (loglikelihood, optimizable by label likelihood) =-4164.001124523607
getValue() (loglikelihood, optimizable by label likelihood) =-4162.1513537870815
CRF finished one iteration of maximizer, i=0
Evaluator iteration=433 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9470739621797024
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6118.572310951779
getValue() (loglikelihood, optimizable by label likelihood) =-4170.451853820333
getValue() (loglikelihood, optimizable by label likelihood) =-4161.461083630474
getValue() (loglikelihood, optimizable by label likelihood) =-4160.050835641292
CRF finished one iteration of maximizer, i=0
Evaluator iteration=434 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9471858565514155
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5168.825056888092
getValue() (loglikelihood, optimizable by label likelihood) =-4165.898763352368
getValue() (loglikelihood, optimizable by label likelihood) =-4159.605197517942
getValue() (loglikelihood, optimizable by label likelihood) =-4157.757481935432
CRF finished one iteration of maximizer, i=0
Evaluator iteration=435 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9471578829584872
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6115.441295887299
getValue() (loglikelihood, optimizable by label likelihood) =-4166.073709899088
getValue() (loglikelihood, optimizable by label likelihood) =-4157.06808652313
getValue() (loglikelihood, optimizable by label likelihood) =-4155.662927706712
CRF finished one iteration of maximizer, i=0
Evaluator iteration=436 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9471858565514155
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5163.184657652165
getValue() (loglikelihood, optimizable by label likelihood) =-4161.504796963552
getValue() (loglikelihood, optimizable by label likelihood) =-4155.219469291252
getValue() (loglikelihood, optimizable by label likelihood) =-4153.373802479283
CRF finished one iteration of maximizer, i=0
Evaluator iteration=437 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472418037372721
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6112.309437671114
getValue() (loglikelihood, optimizable by label likelihood) =-4161.705659843162
getValue() (loglikelihood, optimizable by label likelihood) =-4152.685278673258
getValue() (loglikelihood, optimizable by label likelihood) =-4151.285172530854
CRF finished one iteration of maximizer, i=0
Evaluator iteration=438 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9471858565514155
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5157.559958833409
getValue() (loglikelihood, optimizable by label likelihood) =-4157.12100551498
getValue() (loglikelihood, optimizable by label likelihood) =-4150.8438790607415
getValue() (loglikelihood, optimizable by label likelihood) =-4149.000254694403
CRF finished one iteration of maximizer, i=0
Evaluator iteration=439 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9474376188877699
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6109.176823795444
getValue() (loglikelihood, optimizable by label likelihood) =-4157.347644175014
getValue() (loglikelihood, optimizable by label likelihood) =-4148.312599386329
getValue() (loglikelihood, optimizable by label likelihood) =-4146.91750990787
CRF finished one iteration of maximizer, i=0
Evaluator iteration=440 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472138301443438
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5151.950828519257
getValue() (loglikelihood, optimizable by label likelihood) =-4152.747328490853
getValue() (loglikelihood, optimizable by label likelihood) =-4146.4783667955435
getValue() (loglikelihood, optimizable by label likelihood) =-4144.636778607653
CRF finished one iteration of maximizer, i=0
Evaluator iteration=441 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9474935660736264
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6106.043540122531
getValue() (loglikelihood, optimizable by label likelihood) =-4152.999604143734
getValue() (loglikelihood, optimizable by label likelihood) =-4143.949988718125
getValue() (loglikelihood, optimizable by label likelihood) =-4142.559880371627
CRF finished one iteration of maximizer, i=0
Evaluator iteration=442 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472418037372721
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5146.357136726023
getValue() (loglikelihood, optimizable by label likelihood) =-4148.383706117173
getValue() (loglikelihood, optimizable by label likelihood) =-4142.122873199831
getValue() (loglikelihood, optimizable by label likelihood) =-4140.283314980028
CRF finished one iteration of maximizer, i=0
Evaluator iteration=443 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9474935660736264
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6102.909670676772
getValue() (loglikelihood, optimizable by label likelihood) =-4148.66148170728
getValue() (loglikelihood, optimizable by label likelihood) =-4139.597387457867
getValue() (loglikelihood, optimizable by label likelihood) =-4138.21222517903
CRF finished one iteration of maximizer, i=0
Evaluator iteration=444 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472418037372721
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5140.778755285065
getValue() (loglikelihood, optimizable by label likelihood) =-4144.03007934422
getValue() (loglikelihood, optimizable by label likelihood) =-4137.777339696005
getValue() (loglikelihood, optimizable by label likelihood) =-4135.939805289943
CRF finished one iteration of maximizer, i=0
Evaluator iteration=445 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9474935660736264
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6099.775297842511
getValue() (loglikelihood, optimizable by label likelihood) =-4144.333219517287
getValue() (loglikelihood, optimizable by label likelihood) =-4135.254737111406
getValue() (loglikelihood, optimizable by label likelihood) =-4133.874486293573
CRF finished one iteration of maximizer, i=0
Evaluator iteration=446 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472418037372721
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5135.21555799107
getValue() (loglikelihood, optimizable by label likelihood) =-4139.6863898324
getValue() (loglikelihood, optimizable by label likelihood) =-4133.441708408905
getValue() (loglikelihood, optimizable by label likelihood) =-4131.606191717272
CRF finished one iteration of maximizer, i=0
Evaluator iteration=447 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9475774868524113
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6096.640502110476
getValue() (loglikelihood, optimizable by label likelihood) =-4140.0147609021615
getValue() (loglikelihood, optimizable by label likelihood) =-4130.921979885455
getValue() (loglikelihood, optimizable by label likelihood) =-4129.54660636974
CRF finished one iteration of maximizer, i=0
Evaluator iteration=448 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472977509231285
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5129.667420413266
getValue() (loglikelihood, optimizable by label likelihood) =-4135.352579934709
getValue() (loglikelihood, optimizable by label likelihood) =-4129.115922149847
getValue() (loglikelihood, optimizable by label likelihood) =-4127.282417127574
CRF finished one iteration of maximizer, i=0
Evaluator iteration=449 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9476893812241244
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6093.505362305932
getValue() (loglikelihood, optimizable by label likelihood) =-4135.706049852848
getValue() (loglikelihood, optimizable by label likelihood) =-4126.599058671722
getValue() (loglikelihood, optimizable by label likelihood) =-4125.228528737376
CRF finished one iteration of maximizer, i=0
Evaluator iteration=450 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472977509231285
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5124.134219938501
getValue() (loglikelihood, optimizable by label likelihood) =-4131.028592682268
getValue() (loglikelihood, optimizable by label likelihood) =-4124.799924401438
getValue() (loglikelihood, optimizable by label likelihood) =-4122.968425056816
CRF finished one iteration of maximizer, i=0
Evaluator iteration=451 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9477733020029092
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6090.369955503553
getValue() (loglikelihood, optimizable by label likelihood) =-4131.407031007446
getValue() (loglikelihood, optimizable by label likelihood) =-4122.28591703165
getValue() (loglikelihood, optimizable by label likelihood) =-4120.92019738673
CRF finished one iteration of maximizer, i=0
Evaluator iteration=452 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472977509231285
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5118.615835774165
getValue() (loglikelihood, optimizable by label likelihood) =-4126.714371769735
getValue() (loglikelihood, optimizable by label likelihood) =-4120.493659302758
getValue() (loglikelihood, optimizable by label likelihood) =-4118.664159696559
CRF finished one iteration of maximizer, i=0
Evaluator iteration=453 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9477733020029092
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6087.234357019617
getValue() (loglikelihood, optimizable by label likelihood) =-4127.1176496367625
getValue() (loglikelihood, optimizable by label likelihood) =-4117.982499181684
getValue() (loglikelihood, optimizable by label likelihood) =-4116.6215569538845
CRF finished one iteration of maximizer, i=0
Evaluator iteration=454 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472977509231285
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5113.112148875031
getValue() (loglikelihood, optimizable by label likelihood) =-4122.409861540233
getValue() (loglikelihood, optimizable by label likelihood) =-4116.197071634762
getValue() (loglikelihood, optimizable by label likelihood) =-4114.369565879435
CRF finished one iteration of maximizer, i=0
Evaluator iteration=455 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9478012755958375
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6084.098640430361
getValue() (loglikelihood, optimizable by label likelihood) =-4122.837851630178
getValue() (loglikelihood, optimizable by label likelihood) =-4113.688749978701
getValue() (loglikelihood, optimizable by label likelihood) =-4112.332552706441
CRF finished one iteration of maximizer, i=0
Evaluator iteration=456 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472977509231285
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5107.623041982841
getValue() (loglikelihood, optimizable by label likelihood) =-4118.1150069721
getValue() (loglikelihood, optimizable by label likelihood) =-4111.910106806389
getValue() (loglikelihood, optimizable by label likelihood) =-4110.084589065103
CRF finished one iteration of maximizer, i=0
Evaluator iteration=457 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9478292491887658
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6080.962877590043
getValue() (loglikelihood, optimizable by label likelihood) =-4118.56758348217
getValue() (loglikelihood, optimizable by label likelihood) =-4109.404614906094
getValue() (loglikelihood, optimizable by label likelihood) =-4108.053130529836
CRF finished one iteration of maximizer, i=0
Evaluator iteration=458 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472977509231285
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5102.148399517299
getValue() (loglikelihood, optimizable by label likelihood) =-4113.829753664247
getValue() (loglikelihood, optimizable by label likelihood) =-4107.632710840687
getValue() (loglikelihood, optimizable by label likelihood) =-4105.809175326632
CRF finished one iteration of maximizer, i=0
Evaluator iteration=459 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9479691171534071
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6077.827138627808
getValue() (loglikelihood, optimizable by label likelihood) =-4114.306792278762
getValue() (loglikelihood, optimizable by label likelihood) =-4105.130040060003
getValue() (loglikelihood, optimizable by label likelihood) =-4103.783236913734
CRF finished one iteration of maximizer, i=0
Evaluator iteration=460 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9472977509231285
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5096.688107682153
getValue() (loglikelihood, optimizable by label likelihood) =-4109.554047824138
getValue() (loglikelihood, optimizable by label likelihood) =-4103.364830361684
getValue() (loglikelihood, optimizable by label likelihood) =-4101.543271337105
CRF finished one iteration of maximizer, i=0
Evaluator iteration=461 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480250643392637
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6074.691491925543
getValue() (loglikelihood, optimizable by label likelihood) =-4110.055425684666
getValue() (loglikelihood, optimizable by label likelihood) =-4100.864972136111
getValue() (loglikelihood, optimizable by label likelihood) =-4099.522818939129
CRF finished one iteration of maximizer, i=0
Evaluator iteration=462 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9473257245160568
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5091.2420542707505
getValue() (loglikelihood, optimizable by label likelihood) =-4105.287836253111
getValue() (loglikelihood, optimizable by label likelihood) =-4099.106412581226
getValue() (loglikelihood, optimizable by label likelihood) =-4097.286824356692
CRF finished one iteration of maximizer, i=0
Evaluator iteration=463 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480250643392637
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6071.5560042531415
getValue() (loglikelihood, optimizable by label likelihood) =-4105.813431931166
getValue() (loglikelihood, optimizable by label likelihood) =-4096.609358416626
getValue() (loglikelihood, optimizable by label likelihood) =-4095.271824265487
CRF finished one iteration of maximizer, i=0
Evaluator iteration=464 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9473816717019133
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5085.810128782483
getValue() (loglikelihood, optimizable by label likelihood) =-4101.031066335284
getValue() (loglikelihood, optimizable by label likelihood) =-4094.8574052865993
getValue() (loglikelihood, optimizable by label likelihood) =-4093.039782220119
CRF finished one iteration of maximizer, i=0
Evaluator iteration=465 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480250643392637
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6068.420740691054
getValue() (loglikelihood, optimizable by label likelihood) =-4101.580759803626
getValue() (loglikelihood, optimizable by label likelihood) =-4092.363146757813
getValue() (loglikelihood, optimizable by label likelihood) =-4091.0302011184913
CRF finished one iteration of maximizer, i=0
Evaluator iteration=466 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9473816717019133
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5080.392222334263
getValue() (loglikelihood, optimizable by label likelihood) =-4096.783686024501
getValue() (loglikelihood, optimizable by label likelihood) =-4090.617756828157
getValue() (loglikelihood, optimizable by label likelihood) =-4088.802093324439
CRF finished one iteration of maximizer, i=0
Evaluator iteration=467 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480250643392637
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6065.2857646158545
getValue() (loglikelihood, optimizable by label likelihood) =-4097.357358629314
getValue() (loglikelihood, optimizable by label likelihood) =-4088.1262855777413
getValue() (loglikelihood, optimizable by label likelihood) =-4086.7978982779337
CRF finished one iteration of maximizer, i=0
Evaluator iteration=468 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9474935660736264
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5074.988227706277
getValue() (loglikelihood, optimizable by label likelihood) =-4092.5456438333636
getValue() (loglikelihood, optimizable by label likelihood) =-4086.3874161075883
getValue() (loglikelihood, optimizable by label likelihood) =-4084.573706617161
CRF finished one iteration of maximizer, i=0
Evaluator iteration=469 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480250643392637
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6062.1511377264715
getValue() (loglikelihood, optimizable by label likelihood) =-4093.143178266299
getValue() (loglikelihood, optimizable by label likelihood) =-4083.898723844502
getValue() (loglikelihood, optimizable by label likelihood) =-4082.574865066251
CRF finished one iteration of maximizer, i=0
Evaluator iteration=470 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9474935660736264
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5069.598039181856
getValue() (loglikelihood, optimizable by label likelihood) =-4088.316888819946
getValue() (loglikelihood, optimizable by label likelihood) =-4082.166332566166
getValue() (loglikelihood, optimizable by label likelihood) =-4080.35457158465
CRF finished one iteration of maximizer, i=0
Evaluator iteration=471 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480250643392637
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6059.016920204429
getValue() (loglikelihood, optimizable by label likelihood) =-4088.9381690926584
getValue() (loglikelihood, optimizable by label likelihood) =-4079.6804110645458
getValue() (loglikelihood, optimizable by label likelihood) =-4078.3610513369576
CRF finished one iteration of maximizer, i=0
Evaluator iteration=472 cost=NA (not Optimizable.ByValue)
Training accuracy=0.947549513259483
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5064.221552670437
getValue() (loglikelihood, optimizable by label likelihood) =-4084.0973705783535
getValue() (loglikelihood, optimizable by label likelihood) =-4077.954456173692
getValue() (loglikelihood, optimizable by label likelihood) =-4076.1446382410004
CRF finished one iteration of maximizer, i=0
Evaluator iteration=473 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480250643392637
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6055.883170506782
getValue() (loglikelihood, optimizable by label likelihood) =-4084.7422819947246
getValue() (loglikelihood, optimizable by label likelihood) =-4075.471297271622
getValue() (loglikelihood, optimizable by label likelihood) =-4074.156407463766
CRF finished one iteration of maximizer, i=0
Evaluator iteration=474 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9477173548170527
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5058.858665642638
getValue() (loglikelihood, optimizable by label likelihood) =-4079.8870392272
getValue() (loglikelihood, optimizable by label likelihood) =-4073.751737417606
getValue() (loglikelihood, optimizable by label likelihood) =-4071.9438571171327
CRF finished one iteration of maximizer, i=0
Evaluator iteration=475 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480250643392637
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6052.74994549889
getValue() (loglikelihood, optimizable by label likelihood) =-4080.555468357249
getValue() (loglikelihood, optimizable by label likelihood) =-4071.271333015919
getValue() (loglikelihood, optimizable by label likelihood) =-4069.960884330001
CRF finished one iteration of maximizer, i=0
Evaluator iteration=476 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9477173548170527
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5053.50927700696
getValue() (loglikelihood, optimizable by label likelihood) =-4075.68584539802
getValue() (loglikelihood, optimizable by label likelihood) =-4069.5581272922796
getValue() (loglikelihood, optimizable by label likelihood) =-4067.7521792501966
CRF finished one iteration of maximizer, i=0
Evaluator iteration=477 cost=NA (not Optimizable.ByValue)
Training accuracy=0.948053037932192
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6049.617300606785
getValue() (loglikelihood, optimizable by label likelihood) =-4076.3776800537153
getValue() (loglikelihood, optimizable by label likelihood) =-4067.0804693533473
getValue() (loglikelihood, optimizable by label likelihood) =-4065.77443331803
CRF finished one iteration of maximizer, i=0
Evaluator iteration=478 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9477173548170527
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5048.173287230571
getValue() (loglikelihood, optimizable by label likelihood) =-4071.493740226396
getValue() (loglikelihood, optimizable by label likelihood) =-4065.373577288858
getValue() (loglikelihood, optimizable by label likelihood) =-4063.5695561733282
CRF finished one iteration of maximizer, i=0
Evaluator iteration=479 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480810115251203
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6046.485289566055
getValue() (loglikelihood, optimizable by label likelihood) =-4072.208869435134
getValue() (loglikelihood, optimizable by label likelihood) =-4062.8986578355116
getValue() (loglikelihood, optimizable by label likelihood) =-4061.5970062993183
CRF finished one iteration of maximizer, i=0
Evaluator iteration=480 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9476614076311961
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5042.8505982190645
getValue() (loglikelihood, optimizable by label likelihood) =-4067.3106753409825
getValue() (loglikelihood, optimizable by label likelihood) =-4061.198039385221
getValue() (loglikelihood, optimizable by label likelihood) =-4059.395939905676
CRF finished one iteration of maximizer, i=0
Evaluator iteration=481 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480810115251203
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6043.35396469654
getValue() (loglikelihood, optimizable by label likelihood) =-4068.0489893218696
getValue() (loglikelihood, optimizable by label likelihood) =-4058.7258504995625
getValue() (loglikelihood, optimizable by label likelihood) =-4057.428555624617
CRF finished one iteration of maximizer, i=0
Evaluator iteration=482 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9476614076311961
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5037.54111332714
getValue() (loglikelihood, optimizable by label likelihood) =-4063.136602854099
getValue() (loglikelihood, optimizable by label likelihood) =-4057.0314660363356
getValue() (loglikelihood, optimizable by label likelihood) =-4055.231282942778
CRF finished one iteration of maximizer, i=0
Evaluator iteration=483 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480810115251203
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6040.2233767120515
getValue() (loglikelihood, optimizable by label likelihood) =-4063.897992993054
getValue() (loglikelihood, optimizable by label likelihood) =-4054.5619998587035
getValue() (loglikelihood, optimizable by label likelihood) =-4053.2690341144835
CRF finished one iteration of maximizer, i=0
Evaluator iteration=484 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9476614076311961
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5032.244737377328
getValue() (loglikelihood, optimizable by label likelihood) =-4058.9714753528106
getValue() (loglikelihood, optimizable by label likelihood) =-4052.8738101649496
getValue() (loglikelihood, optimizable by label likelihood) =-4051.0755382471443
CRF finished one iteration of maximizer, i=0
Evaluator iteration=485 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9480810115251203
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6037.093574899925
getValue() (loglikelihood, optimizable by label likelihood) =-4059.755834178703
getValue() (loglikelihood, optimizable by label likelihood) =-4050.4070588927775
getValue() (loglikelihood, optimizable by label likelihood) =-4049.1183950501463
CRF finished one iteration of maximizer, i=0
Evaluator iteration=486 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9477173548170527
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5026.961376539598
getValue() (loglikelihood, optimizable by label likelihood) =-4054.815245888598
getValue() (loglikelihood, optimizable by label likelihood) =-4048.7250251523224
getValue() (loglikelihood, optimizable by label likelihood) =-4046.928659239188
CRF finished one iteration of maximizer, i=0
Evaluator iteration=487 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9482488530826899
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6033.964607089299
getValue() (loglikelihood, optimizable by label likelihood) =-4055.6224670504953
getValue() (loglikelihood, optimizable by label likelihood) =-4046.2609810391687
getValue() (loglikelihood, optimizable by label likelihood) =-4044.9765921645376
CRF finished one iteration of maximizer, i=0
Evaluator iteration=488 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9477453284099809
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5021.690938392221
getValue() (loglikelihood, optimizable by label likelihood) =-4050.6678679695337
getValue() (loglikelihood, optimizable by label likelihood) =-4044.5850648295445
getValue() (loglikelihood, optimizable by label likelihood) =-4042.7905997884163
CRF finished one iteration of maximizer, i=0
Evaluator iteration=489 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9483887210473313
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6030.83651962714
getValue() (loglikelihood, optimizable by label likelihood) =-4051.497846213089
getValue() (loglikelihood, optimizable by label likelihood) =-4042.12372018403
getValue() (loglikelihood, optimizable by label likelihood) =-4040.8435796336053
CRF finished one iteration of maximizer, i=0
Evaluator iteration=490 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9477173548170527
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5016.433331852468
getValue() (loglikelihood, optimizable by label likelihood) =-4046.5292955509713
getValue() (loglikelihood, optimizable by label likelihood) =-4040.453883468868
getValue() (loglikelihood, optimizable by label likelihood) =-4038.661314204808
CRF finished one iteration of maximizer, i=0
Evaluator iteration=491 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9483887210473313
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6027.7093575378285
getValue() (loglikelihood, optimizable by label likelihood) =-4047.3819266967866
getValue() (loglikelihood, optimizable by label likelihood) =-4037.995230653677
getValue() (loglikelihood, optimizable by label likelihood) =-4036.7193120680254
CRF finished one iteration of maximizer, i=0
Evaluator iteration=492 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9476893812241244
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5011.188467175487
getValue() (loglikelihood, optimizable by label likelihood) =-4042.399483027591
getValue() (loglikelihood, optimizable by label likelihood) =-4036.3314357754703
getValue() (loglikelihood, optimizable by label likelihood) =-4034.5407572306294
CRF finished one iteration of maximizer, i=0
Evaluator iteration=493 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9483887210473313
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6024.583164401662
getValue() (loglikelihood, optimizable by label likelihood) =-4043.2746639486895
getValue() (loglikelihood, optimizable by label likelihood) =-4033.8754672063997
getValue() (loglikelihood, optimizable by label likelihood) =-4032.60374450497
CRF finished one iteration of maximizer, i=0
Evaluator iteration=494 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9476893812241244
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5005.956255924404
getValue() (loglikelihood, optimizable by label likelihood) =-4038.2783852250086
getValue() (loglikelihood, optimizable by label likelihood) =-4032.217676879345
getValue() (loglikelihood, optimizable by label likelihood) =-4030.428884032269
CRF finished one iteration of maximizer, i=0
Evaluator iteration=495 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9484166946402596
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6021.457982489773
getValue() (loglikelihood, optimizable by label likelihood) =-4039.176013825767
getValue() (loglikelihood, optimizable by label likelihood) =-4029.7643850243567
getValue() (loglikelihood, optimizable by label likelihood) =-4028.496832400354
CRF finished one iteration of maximizer, i=0
Evaluator iteration=496 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9477453284099809
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-5000.73661092198
getValue() (loglikelihood, optimizable by label likelihood) =-4034.1659573918078
getValue() (loglikelihood, optimizable by label likelihood) =-4028.112562327504
getValue() (loglikelihood, optimizable by label likelihood) =-4026.325650192574
CRF finished one iteration of maximizer, i=0
Evaluator iteration=497 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9484166946402596
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6018.333852703427
getValue() (loglikelihood, optimizable by label likelihood) =-4035.0859325867314
getValue() (loglikelihood, optimizable by label likelihood) =-4025.6619397058275
getValue() (loglikelihood, optimizable by label likelihood) =-4024.3985316210164
CRF finished one iteration of maximizer, i=0
Evaluator iteration=498 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9478012755958375
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-4995.529446290692
getValue() (loglikelihood, optimizable by label likelihood) =-4030.0621551924214
getValue() (loglikelihood, optimizable by label likelihood) =-4024.01604807646
getValue() (loglikelihood, optimizable by label likelihood) =-4022.2310117031757
CRF finished one iteration of maximizer, i=0
Evaluator iteration=499 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9484166946402596
Testing accuracy=NaN
CRF about to train with 1 iterations
getValue() (loglikelihood, optimizable by label likelihood) =-6015.210814645985
getValue() (loglikelihood, optimizable by label likelihood) =-4031.0043768853307
getValue() (loglikelihood, optimizable by label likelihood) =-4021.568087257674
getValue() (loglikelihood, optimizable by label likelihood) =-4020.3087984374824
CRF finished one iteration of maximizer, i=0
Evaluator iteration=500 cost=NA (not Optimizable.ByValue)
Training accuracy=0.9478292491887658
Testing accuracy=NaN
Model option...ner.model.feature
