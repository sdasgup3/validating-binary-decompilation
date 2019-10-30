#include "exprs.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include <regex>

using namespace cpputil;

/************** Utils ******************/
stringLocPair extractNearestBracedExp(size_t pos, const string &str) {

  string retval = "";

  auto nearestBracePos = str.find('(', pos);

  if (nearestBracePos == string::npos) {
    Console::error(1) << "No nearest brace in " << str << "\n";
    exit(1);
  }

  int count = 1;
  auto i = nearestBracePos + 1;
  for (; i < str.size(); i++) {
    if (str[i] == ')') {
      count--;

      if (count == 0) {
        break;
      }
    }

    if (str[i] == '(') {
      count++;
    }

    retval += str[i];
  }

  return stringLocPair(retval, i);
}

string trim(const std::string &str, char delim) {
  std::string retval("");
  for (auto c : str) {
    if (c == delim)
      continue;
    retval += c;
  }
  return retval;
}

vector<string> split(const std::string &str, char delim) {
  std::vector<std::string> tokens;
  std::string token;
  std::stringstream tokenStream(str);
  while (std::getline(tokenStream, token, delim)) {
    tokens.push_back(trim(token));
  }
  return tokens;
}

/************** SummaryExpr ******************/
string SummaryExpr::read_spec(string &str) {
  dispatchSummaryExpr(str, &ptr);
  return str;
}

ostream &SummaryExpr::write_spec(ostream &os) const {
  ptr->write_spec(os);
  return os;
}

/************** SummaryExprAbstract ******************/
string dispatchSummaryExpr(string &str, SummaryExprAbstract **ptr) {

  assert(ptr != NULL && "null pointer in dispatchSummaryExpr!");

  smatch m;
  // Arithmetic Operators
  if (regex_search(str, m, regex("^`_&Int_`"))) {
    *ptr = new SummaryExprAnd();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_%Int_`"))) {
    *ptr = new SummaryExprMod();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_\\+Int_`"))) {
    *ptr = new SummaryExprPlus();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_>>Int_`"))) {
    *ptr = new SummaryExprRightShift();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_xorInt_`"))) {
    *ptr = new SummaryExprXor();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_\\|Int_`"))) {
    *ptr = new SummaryExprOr();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`#if_#then_#else_#fi_K-EQUAL`"))) {
    *ptr = new SummaryExprIfThenElse();
    return (*ptr)->read_spec(str);

    // Leafs
  } else if (regex_search(str, m, regex("^VL_|^VX"))) {
    *ptr = new SummaryExprVar();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^#token"))) {
    *ptr = new SummaryExprToken();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^symloc"))) {
    *ptr = new SymLoc();
    return (*ptr)->read_spec(str);

    // Int Bool Operators
  } else if (regex_search(str, m, regex("^`_<Int_`"))) {
    *ptr = new SummaryExprLT();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_<=Int_`"))) {
    *ptr = new SummaryExprLTE();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_>Int_`"))) {
    *ptr = new SummaryExprGT();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_>=Int_`"))) {
    *ptr = new SummaryExprGTE();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_==K_`"))) {
    *ptr = new SummaryExprEq();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^#And"))) {
    *ptr = new SummaryExprAndBool();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^#Or"))) {
    *ptr = new SummaryExprOrBool();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^#Not"))) {
    *ptr = new SummaryExprNotBool();
    return (*ptr)->read_spec(str);

    // MInt Operators
  } else if (regex_search(str, m, regex("^xorMInt"))) {
    *ptr = new SummaryExprXorMInt();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^extractMInt"))) {
    *ptr = new SummaryExprExtractMInt();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^mi"))) {
    *ptr = new SummaryExprMiMInt();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^concatenateMInt"))) {
    *ptr = new SummaryExprConcatMInt();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^addMInt"))) {
    *ptr = new SummaryExprAddMInt();
    return (*ptr)->read_spec(str);

  } else if (regex_search(
                 str, m,
                 regex("^`#ifMInt_#then_#else_#fi_MINT-WRAPPER-SYNTAX`"))) {
    *ptr = new SummaryExprIfThenElseMInt();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^eqMInt"))) {
    *ptr = new SummaryExprEqMInt();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_andBool_`"))) {
    *ptr = new SummaryExprAndBool();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_orBool_`"))) {
    *ptr = new SummaryExprOrBool();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_xorBool_`"))) {
    *ptr = new SummaryExprXorBool();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`notBool_`"))) {
    *ptr = new SummaryExprNotBool();
    return (*ptr)->read_spec(str);

    // Misc Operators
  } else if (regex_search(str, m, regex("^ptr"))) {
    *ptr = new SummaryExprPtr();
    return (*ptr)->read_spec(str);

  } else {
    Console::error(1) << "Unsupported Operator: " << str << endl;
    exit(1);
  }

  return str;
}

/************** SummaryExprBinop ******************/
SummaryExprBinop::SummaryExprBinop() {
  a_ = NULL;
  b_ = NULL;
}

bool SummaryExprBinop::checkComponentWidths() {
  return (a_->width_ == b_->width_) ? true : false;
}

void SummaryExprBinop::deriveComponentWidths() {
  if (a_->width_ != 0 && b_->width_ != 0) {
    return;
  } else if (a_->width_ != 0) {
    b_->width_ = a_->width_;
  } else if (b_->width_ != 0) {
    a_->width_ = b_->width_;
  } else {
    Console::error(1) << "Zero Width Binop: " << type_ << "\n";
    exit(1);
  }
}

string SummaryExprBinop::read_spec(string &str) {
  str = dispatchSummaryExpr(str, &a_);

  assert(str[0] == ',');
  str = str.substr(1);

  str = dispatchSummaryExpr(str, &b_);

  deriveComponentWidths();

  return str;
}

ostream &SummaryExprBinop::write_spec(ostream &os) const {
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  return os;
}

/************** SummaryExprUnop ******************/
SummaryExprUnop::SummaryExprUnop() { a_ = NULL; }

bool SummaryExprUnop::checkComponentWidths() { return true; }

void SummaryExprUnop::deriveComponentWidths() {
  if (a_->width_ == 0) {
    Console::error(1) << "Zero Width Binop: " << type_ << "\n";
    exit(1);
  }
}

string SummaryExprUnop::read_spec(string &str) {
  str = dispatchSummaryExpr(str, &a_);

  deriveComponentWidths();
  return str;
}

ostream &SummaryExprUnop::write_spec(ostream &os) const {
  a_->write_spec(os);
  return os;
}

/************** SummaryExprTernop ******************/
SummaryExprTernop::SummaryExprTernop() {
  a_ = NULL;
  b_ = NULL;
  c_ = NULL;
}

bool SummaryExprTernop::checkComponentWidths() {
  return (b_->width_ == c_->width_) ? true : false;
}

void SummaryExprTernop::deriveComponentWidths() {
  if (b_->width_ != 0 && c_->width_ != 0) {
    return;
  } else if (b_->width_ != 0) {
    c_->width_ = b_->width_;
  } else if (c_->width_ != 0) {
    b_->width_ = c_->width_;
  } else {
    // b_ c_ both have zero widths
    if (a_->width_ == 0) {
      Console::error(1) << "Zero Width Ternop: " << type_ << "\n";
      exit(1);
    } else {
      b_->width_ = a_->width_;
      c_->width_ = a_->width_;
    }
  }
}

string SummaryExprTernop::read_spec(string &str) {
  str = dispatchSummaryExpr(str, &a_);
  assert(str[0] == ',');
  str = str.substr(1);

  str = dispatchSummaryExpr(str, &b_);
  assert(str[0] == ',');
  str = str.substr(1);

  str = dispatchSummaryExpr(str, &c_);

  deriveComponentWidths();

  return str;
}

ostream &SummaryExprTernop::write_spec(ostream &os) const {
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ", ";
  c_->write_spec(os);
  return os;
}

/************** SummaryExprAnd ******************/
string SummaryExprAnd::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprAnd::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprAnd::write_spec(ostream &os) const {
  os << "(";
  a_->write_spec(os);
  os << " & ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprOr ******************/
string SummaryExprOr::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprOr::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprOr::write_spec(ostream &os) const {
  os << "(";
  a_->write_spec(os);
  os << " | ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprXor ******************/
string SummaryExprXor::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprXor::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprXor::write_spec(ostream &os) const {
  os << "(";
  a_->write_spec(os);
  os << " ^ ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprMod ******************/

string SummaryExprMod::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprMod::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprMod::write_spec(ostream &os) const {
  os << "(";
  a_->write_spec(os);
  os << " & ";

  if (b_->type_ == SummaryExpr::Type::TOKEN) {
    SummaryExprToken *T = static_cast<SummaryExprToken *>(b_);
    auto tokenValue = T->value_;
    auto tokenWidth = T->width_;

    if (tokenValue == "" || tokenWidth <= 0) {
      Console::error(1) << "Errror creating the constant token for Mod!"
                        << tokenValue << ", " << tokenWidth << endl;
      exit(1);
    }

    os << "z3.BitVecVal(" << tokenValue << " - 1, " << tokenWidth << ")";
  } else {
    b_->write_spec(os);
  }
  os << ")";
  return os;
}

/************** SummaryExprPlus ******************/
string SummaryExprPlus::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprPlus::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprPlus::write_spec(ostream &os) const {
  os << "(";
  a_->write_spec(os);
  os << " + ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprSignDiv ******************/
string SummaryExprSignDiv::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprSignDiv::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprSignDiv::write_spec(ostream &os) const {
  os << "Div(";
  SummaryExprBinop::write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprLeftShift ******************/
string SummaryExprLeftShift::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprLeftShift::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprLeftShift::write_spec(ostream &os) const {
  os << "LeftShift(";
  SummaryExprBinop::write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprRightShift ******************/
string SummaryExprRightShift::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprRightShift::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprRightShift::write_spec(ostream &os) const {
  os << "z3.LShR(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprSignRightShift ******************/
string SummaryExprSignRightShift::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprSignRightShift::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprSignRightShift::write_spec(ostream &os) const {
  os << "SignRightShift(";
  SummaryExprBinop::write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprIfThenElse ******************/
string SummaryExprIfThenElse::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprTernop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprIfThenElse::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = b_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprIfThenElse::write_spec(ostream &os) const {
  os << "z3.If(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ", ";
  c_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprEq ******************/
string SummaryExprEq::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprEq::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  type_ = type();
  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprEq::write_spec(ostream &os) const {
  os << "(";
  a_->write_spec(os);
  os << " == ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprLT ******************/
string SummaryExprLT::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprLT::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  type_ = type();
  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprLT::write_spec(ostream &os) const {
  os << "z3.ULT(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprLTE ******************/
string SummaryExprLTE::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprLTE::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  type_ = type();
  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprLTE::write_spec(ostream &os) const {
  os << "z3.ULE(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprGT ******************/
string SummaryExprGT::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprGT::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  type_ = type();
  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprGT::write_spec(ostream &os) const {
  os << "z3.UGT(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprGTE ******************/
string SummaryExprGTE::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprGTE::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  type_ = type();
  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprGTE::write_spec(ostream &os) const {
  os << "z3.UGE(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprAndBool ******************/
string SummaryExprAndBool::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprAndBool::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  type_ = type();
  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprAndBool::write_spec(ostream &os) const {
  os << "z3.And(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprOrBool ******************/
string SummaryExprOrBool::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprOrBool::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  type_ = type();
  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprOrBool::write_spec(ostream &os) const {
  os << "z3.Or(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprNotBool ******************/
string SummaryExprNotBool::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprUnop::read_spec(result.first);
  type_ = type();
  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprNotBool::write_spec(ostream &os) const {
  os << "z3.Not(";
  a_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprXorBool ******************/
string SummaryExprXorBool::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprXorBool::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprXorBool::write_spec(ostream &os) const {
  os << "z3.Xor(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprXorMInt ******************/
string SummaryExprXorMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprXorMInt::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprXorMInt::write_spec(ostream &os) const {
  os << "(";
  a_->write_spec(os);
  os << " ^ ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprExtractMInt ******************/
string SummaryExprExtractMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprTernop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprExtractMInt::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = stoi(((SummaryExprToken *)c_)->value_) -
           stoi(((SummaryExprToken *)b_)->value_);
  return str.substr(result.second + 1);
}

ostream &SummaryExprExtractMInt::write_spec(ostream &os) const {

  auto bw = a_->width_ - 1;

  os << "z3.Extract(";
  os << bw - stoi(((SummaryExprToken *)b_)->value_);
  os << ", ";
  os << bw - (stoi(((SummaryExprToken *)c_)->value_) - 1);
  os << ", ";
  a_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprMiMInt ******************/
string SummaryExprMiMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprMiMInt::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = stoi(((SummaryExprToken *)a_)->value_);
  return str.substr(result.second + 1);
}

ostream &SummaryExprMiMInt::write_spec(ostream &os) const {

  if (b_->type_ == SummaryExpr::Type::VAR) {
    b_->write_spec(os);
    return os;
  }

  Console::error(1) << "Unknow mi operand: Type: " << b_->type_ << endl;
  b_->write_spec(os);
  return os;
}

/************** SummaryExprConcatMInt ******************/
string SummaryExprConcatMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();
  width_ = a_->width_ + b_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprConcatMInt::write_spec(ostream &os) const {

  os << "z3.Concat(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprAddMInt ******************/
string SummaryExprAddMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprAddMInt::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprAddMInt::write_spec(ostream &os) const {

  os << "(";
  a_->write_spec(os);
  os << " + ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprIfThenElseMInt ******************/
string SummaryExprIfThenElseMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprTernop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprIfThenElseMInt::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = b_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprIfThenElseMInt::write_spec(ostream &os) const {
  os << "z3.If(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ", ";
  c_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprEqMInt ******************/
string SummaryExprEqMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprEqMInt::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprEqMInt::write_spec(ostream &os) const {
  os << "(";
  a_->write_spec(os);
  os << " == ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprPtr ******************/
string SummaryExprPtr::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();
  width_ = -1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprPtr::write_spec(ostream &os) const {
  os << "Ptr(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprVar ******************/
void SummaryExprVar::deriveWidth() {
  assert(varName != "" && "VarName empty!!");

  if ((varName.find("VL_R") != string::npos) ||
      (varName.find("VX_R") != string::npos)) {
    width_ = 64;
    return;
  }

  if (varName.find("VL_") != string::npos) {
    width_ = 8;
    return;
  }

  if (varName.find("VX_") != string::npos) {
    width_ = 1;
    return;
  }

  if (varName.find("YMM") != string::npos) {
    width_ = 256;
    return;
  }

  Console::error(1) << "Unknown var: " << varName;
  exit(1);
}

string SummaryExprVar::read_spec(string &str) {
  size_t pos = str.find(',');

  if (pos == string::npos) {
    varName = str;
    deriveWidth();
    type_ = type();
    return "";
  }

  varName = str.substr(0, pos);
  deriveWidth();
  type_ = type();
  return str.substr(pos, str.size() - pos);
}

ostream &SummaryExprVar::write_spec(ostream &os) const {
  assert(width_ != 0 && "Zero width in SummaryExprVar::write_spec");
  os << varName;
  return os;
}

/************** SummaryExprToken ******************/
SummaryExprToken::SummaryExprToken() {
  value_ = "";
  type_to_ignore = "UnDef";
}

string SummaryExprToken::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);

  auto tokens = split(result.first, ',');
  value_ = trim(trim(trim(tokens[0], '"'), ' '), '\\');
  type_to_ignore = trim(trim(tokens[1], '"'), ' ');

  if (type_to_ignore == "Bool") {
    width_ = 1;

  } else if (type_to_ignore == "Int") {
    // to be inferred
    width_ = 0;

  } else if (type_to_ignore == "MInt") {
    auto mint_tokens = split(value_, '\'');
    value_ = trim(trim(mint_tokens[1], '"'), ' ');
    width_ = stoi(trim(trim(mint_tokens[0], '"'), ' '));

  } else if (type_to_ignore == "String") {
    // to be ignored
    width_ = -1;

  } else {
    Console::error(1) << "Unknown Type of Token!:" << type_to_ignore << endl;
    exit(1);
  }

  type_ = type();
  return str.substr(result.second + 1);
}

ostream &SummaryExprToken::write_spec(ostream &os) const {
  assert(width_ != 0 && "Zero width in SummaryExprToken::write_spec");

  if (type_to_ignore == "Bool") {
    os << "z3.True";
  } else {
    os << "z3.BitVecVal(" << value_ << ", " << width_ << ")";
  }
  return os;
}

/************** ByteExpr ******************/
string ByteExpr::read_spec(string &ss) {
  auto result = extractNearestBracedExp(0, ss);
  auto str = result.first;

  SummaryExprToken tk1;
  SummaryExprToken tk2;

  str = tk1.read_spec(str);
  byteIndex = stoi(tk1.value_);

  // Ignoring ','
  str = str.substr(1);

  str = tk2.read_spec(str);
  numBytes = stoi(tk2.value_);

  // Ignoring ','
  str = str.substr(1);

  str = expr.read_spec(str);

  return ss.substr(result.second + 1);
}

ostream &ByteExpr::write_spec(ostream &os) const {
  if (numBytes == 1) {
    os << "z3.Extract(" << 0 << ", " << 0 << ", " << expr << ")";
  } else {
    os << "z3.Extract(" << byteIndex * 8 + 7 << ", " << byteIndex * 8 << ", "
       << expr << ")";
  }
  return os;
}

/************** SymLoc ******************/
string SymLoc::read_spec(string &ss) {
  auto result = extractNearestBracedExp(0, ss);
  auto str = result.first;

  for (int i = 0; i < 5; i++) {

    SummaryExprToken tk;
    str = tk.read_spec(str);

    if (i == 0) {
      locId = stoi(tk.value_);
    }

    if (i == 4) {
      offset = stoi(tk.value_);
      break;
    }

    // Ignoring ','
    str = str.substr(1);
  }

  return ss.substr(result.second + 1);
}

ostream &SymLoc::write_spec(ostream &os) const {
  os << "SymLoc(" << locId << ", " << offset << ")";
  return os;
}
