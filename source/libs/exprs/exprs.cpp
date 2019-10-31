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

  } else if (regex_search(str, m, regex("^`_\\-Int_`"))) {
    *ptr = new SummaryExprMinus();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`_/Int_`"))) {
    *ptr = new SummaryExprUnSignedDiv();
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

  } else if (regex_search(str, m, regex("^intFromBytesAux"))) {
    *ptr = new SummaryExprIntFromBytesAux();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^intFromBytes"))) {
    *ptr = new SummaryExprIntFromBytes();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`___COMMON-MEMORY-SYNTAX`"))) {
    *ptr = new SummaryExprCommonMemSyntax();
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

  } else if (regex_search(str, m, regex("^andMInt"))) {
    *ptr = new SummaryExprAndMInt();
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

  } else if (regex_search(str, m, regex("^bitwidthMInt"))) {
    *ptr = new SummaryExprBitwidthMInt();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`undefMInt_MINT-WRAPPER-SYNTAX`"))) {
    *ptr = new SummaryExprUndefMInt();
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

/************** SummaryExprAbstract ******************/
ostream &SummaryExprAbstract::write_promoted_value_spec(ostream &os) const {
  if (is_promoted) {
    assert(promoted_from_width_ != uint16_t(-1) &&
           "SummaryExprAbstract::write_promoted_value_spec::Poromoted Expr do "
           "not have the promoted_from_width_!");

    os << "z3.Concat(";
    os << "z3.BitVecVal( 0, " << width_ - promoted_from_width_ << "), ";
    write_spec(os);
    os << ")";

  } else {

    write_spec(os);
  }

  return os;
}

SummaryExprAbstract::SummaryExprAbstract() {
  width_ = 0;
  is_promoted = false;
  type_ = SummaryExpr::NONE;
  promoted_from_width_ = uint16_t(-1);
}

string SummaryExprAbstract::read_spec(string &str) {
  Console::error(1) << "SummaryExprAbstract::read_spec should not be called";
  return str;
}

ostream &SummaryExprAbstract::write_spec(ostream &os) const {
  Console::error(1) << "SummaryExprAbstract::read_spec should not be called";
  return os;
}

/************** SummaryExprBinop ******************/
SummaryExprBinop::SummaryExprBinop() {
  a_ = NULL;
  b_ = NULL;
}

// Not all binary operator should have the same width for its operands (e.g.
// Concat)
// Hence checkComponentWidths need to be called from the Parent operator (like
// And, Add),
// not from the SummaryExprBinop.

// Similarly width promotion is operator specific. E.g. the concatenate operands
// should
// never be width promoted
bool SummaryExprBinop::checkComponentWidths() {
  if (a_->width_ == 0 || b_->width_ == 0) {
    Console::error(1)
        << "SummaryExprBinop::checkComponentWidths: Zero Width found" << endl;
    exit(1);
  }

  if (a_->width_ != b_->width_) {
    if (a_->width_ > b_->width_) {
      Console::msg()
          << "SummaryExprBinop::checkComponentWidths::Promoting type: "
          << b_->type_ << " from : " << b_->width_ << " to " << a_->width_
          << " of " << a_->type_ << endl;

      b_->is_promoted = true;
      b_->promoted_from_width_ = b_->width_; // saving the old width
      b_->width_ = a_->width_;
    } else {
      Console::msg()
          << "SummaryExprBinop::checkComponentWidths::Promoting type: "
          << a_->type_ << " from : " << a_->width_ << " to " << b_->width_
          << " of " << b_->type_ << endl;

      a_->is_promoted = true;
      a_->promoted_from_width_ = a_->width_; // saving the old width
      a_->width_ = b_->width_;
    }
  }

  // return (a_->width_ == b_->width_) ? true : false;
  return true;
}

void SummaryExprBinop::deriveComponentWidths() {
  if (type_ == SummaryExpr::Type::PTR)
    return;

  if (a_->width_ != 0 && b_->width_ != 0) {
    return;
  } else if (a_->width_ != 0) {

    if (b_->type_ != SummaryExpr::Type::TOKEN) {
      Console::error(1) << "SummaryExprBinop::deriveComponentWidths::Promoting "
                           "non-token type: "
                        << b_->type_ << " from 0 to the type of " << a_->type_;
      exit(1);
    }
    b_->width_ = a_->width_;

  } else if (b_->width_ != 0) {

    if (a_->type_ != SummaryExpr::Type::TOKEN) {
      Console::error(1) << "SummaryExprBinop::deriveComponentWidths::Promoting "
                           "non-token type: "
                        << a_->type_ << " from 0 to the type of " << b_->type_;
      exit(1);
    }
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
    // Let them get promoted to 8 bits at the write spec routine.
    b_->width_ = 8;
    c_->width_ = 8;

    // if (a_->width_ == 0) {
    //   Console::error(1) << "Zero Width Ternop: " << type_ << "\n";
    //   exit(1);
    // } else {
    //   b_->width_ = a_->width_;
    //   c_->width_ = a_->width_;
    // }
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
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << " & ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprOr ******************/
string SummaryExprOr::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << " | ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprXor ******************/
string SummaryExprXor::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << " ^ ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprMod ******************/

string SummaryExprMod::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
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
    b_->write_promoted_value_spec(os);
  }
  os << ")";
  return os;
}

/************** SummaryExprPlus ******************/
string SummaryExprPlus::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << " + ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprMinus ******************/
string SummaryExprMinus::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprMinus::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprMinus::write_spec(ostream &os) const {
  os << "(";
  a_->write_promoted_value_spec(os);
  os << " - ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprSignedDiv ******************/
string SummaryExprSignedDiv::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprSignedDiv::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprSignedDiv::write_spec(ostream &os) const {
  os << "SIGN_DIV(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprUnSignedDiv ******************/
string SummaryExprUnSignedDiv::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprUnSignedDiv::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprUnSignedDiv::write_spec(ostream &os) const {
  os << "z3.UDiv(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprLeftShift ******************/
string SummaryExprLeftShift::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprRightShift ******************/
string SummaryExprRightShift::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprSignRightShift ******************/
string SummaryExprSignRightShift::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprSignRightShift::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprSignRightShift::write_spec(ostream &os) const {
  os << "SignLShR(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprIfThenElse ******************/
string SummaryExprIfThenElse::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprTernop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ", ";
  c_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprEq ******************/
string SummaryExprEq::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprEq::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprEq::write_spec(ostream &os) const {
  os << "(";
  a_->write_promoted_value_spec(os);
  os << " == ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprLT ******************/
string SummaryExprLT::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprLT::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprLT::write_spec(ostream &os) const {
  os << "z3.ULT(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprLTE ******************/
string SummaryExprLTE::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprLTE::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprLTE::write_spec(ostream &os) const {
  os << "z3.ULE(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprGT ******************/
string SummaryExprGT::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprGT::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprGT::write_spec(ostream &os) const {
  os << "z3.UGT(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprGTE ******************/
string SummaryExprGTE::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprGTE::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprGTE::write_spec(ostream &os) const {
  os << "z3.UGE(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprAndBool ******************/
string SummaryExprAndBool::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprAndBool::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprAndBool::write_spec(ostream &os) const {
  os << "z3.And(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprOrBool ******************/
string SummaryExprOrBool::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprOrBool::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprOrBool::write_spec(ostream &os) const {
  os << "z3.Or(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprNotBool ******************/
string SummaryExprNotBool::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprUnop::read_spec(result.first);
  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprNotBool::write_spec(ostream &os) const {
  os << "z3.Not(";
  a_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprBitwidthMInt ******************/
string SummaryExprBitwidthMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprUnop::read_spec(result.first);

  if (a_->width_ == 0) {
    Console::error(1) << "SummaryExprBitwidthMInt::read_spec: Zero width found!"
                      << endl;
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprBitwidthMInt::write_spec(ostream &os) const {
  assert(0 && "Should have been printed as part of SummaryExprMiMInt");
  return os;
}

/************** SummaryExprXorBool ******************/
string SummaryExprXorBool::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprXorMInt ******************/
string SummaryExprXorMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << " ^ ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprExtractMInt ******************/
string SummaryExprExtractMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprTernop::read_spec(result.first);

  // if (!checkComponentWidths()) {
  //   Console::error(1) << "SummaryExprExtractMInt::Component Width Mismatch: "
  //                     << b_->width_ << " Vs " << c_->width_ << endl;
  //   exit(1);
  // }

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
  a_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprMiMInt ******************/
string SummaryExprMiMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprMiMInt::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  // width_ = stoi(((SummaryExprToken *)a_)->value_);

  // Following versions of mi(..) can occur
  // 1. mi(#token(...), "V")
  // 2. mi(#token(...), #token(...))
  // 3. mi(bitwidthMInt(...), "V")
  // 4. mi(bitwidthMInt(...), #token(...))
  if (a_->type_ == SummaryExpr::Type::TOKEN) {
    width_ = stoi(((SummaryExprToken *)a_)->value_);
  } else {
    if (a_->width_ == 0) {
      Console::msg() << "SummaryExprMiMInt::read_spec:: Zero arg found as the "
                        "width of an mi!"
                     << endl;
    }
    width_ = a_->width_;
  }

  return str.substr(result.second + 1);
}

ostream &SummaryExprMiMInt::write_spec(ostream &os) const {

  if (b_->type_ == SummaryExpr::Type::TOKEN) {
    os << "z3.BitVecVal(" << ((SummaryExprToken *)b_)->value_ << ", " << width_
       << ")";
    return os;
  }

  if (b_->type_ == SummaryExpr::Type::VAR) {

    if (width_ == b_->width_) {
      b_->write_promoted_value_spec(os);
    } else if (width_ > b_->width_) {
      os << "z3.Concat(";
      os << "z3.BitVecVal(0, " << (width_ - b_->width_) << "), ";
      b_->write_promoted_value_spec(os);
      os << ")";
    } else {
      Console::error(1)
          << "SummaryExprMiMInt::write_spec:: Found an  mi(W,V) s.t W ("
          << width_ << " < V.width (" << b_->width_ << ")" << endl;
    }

    return os;
  }

  Console::error(1) << "Unknow V for an mi(W, V): where V: " << b_->type_
                    << endl;
  b_->write_promoted_value_spec(os);
  return os;
}

/************** SummaryExprConcatMInt ******************/
string SummaryExprConcatMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);
  width_ = a_->width_ + b_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprConcatMInt::write_spec(ostream &os) const {

  os << "z3.Concat(";
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprAddMInt ******************/
string SummaryExprAddMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << " + ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprAndMInt ******************/
string SummaryExprAndMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

  if (!checkComponentWidths()) {
    Console::error(1) << "SummaryExprAndMInt::Component Width Mismatch: "
                      << a_->width_ << " Vs " << b_->width_ << endl;
    exit(1);
  }

  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprAndMInt::write_spec(ostream &os) const {

  os << "(";
  a_->write_promoted_value_spec(os);
  os << " & ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprIfThenElseMInt ******************/
string SummaryExprIfThenElseMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprTernop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << ", ";
  b_->write_promoted_value_spec(os);
  os << ", ";
  c_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprEqMInt ******************/
string SummaryExprEqMInt::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);

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
  a_->write_promoted_value_spec(os);
  os << " == ";
  b_->write_promoted_value_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprPtr ******************/
string SummaryExprPtr::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  type_ = type();
  SummaryExprBinop::read_spec(result.first);
  width_ = -1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprPtr::write_spec(ostream &os) const {
  os << "PtrVal";
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
  auto w = width_;
  if (w == 0) {
    assert(type_to_ignore == "Int" && "Zero width for a non int value");
    Console::msg()
        << "SummaryExprToken::write_spec:Zero width found for value: " << value_
        << ": Promoting to 8 bits" << endl;
    w = 8;
  }

  if (type_to_ignore == "Bool") {
    os << "z3.True";
  } else {
    os << "z3.BitVecVal(" << value_ << ", " << w << ")";
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
  // if (numBytes == 1) {
  //  os << "z3.Extract(" << 0 << ", " << 0 << ", " << expr << ")";
  //} else {
  os << "z3.Extract(" << byteIndex * 8 + 7 << ", " << byteIndex * 8 << ", "
     << expr << ")";
  //}
  return os;
}

/************** SummaryExprIntFromBytesAux ******************/
string SummaryExprIntFromBytesAux::read_spec(string &ss) {
  auto result = extractNearestBracedExp(0, ss);
  auto str = result.first;

  SummaryExprToken tk1;
  str = tk1.read_spec(str);
  byteCount = stoi(tk1.value_);

  assert(byteCount > 0 &&
         "SummaryExprIntFromBytesAux::read_spec:: Zero ByteCount");

  // Ignoring ','
  str = str.substr(1);

  SummaryExprVar var1;
  str = var1.read_spec(str);

  // Ignoring ','
  str = str.substr(1);

  SummaryExprToken tk2;
  str = tk2.read_spec(str);

  // Ignoring ','
  str = str.substr(1);

  str = memExpr.read_spec(str);

  width_ = byteCount * 8;

  return ss.substr(result.second + 1);
}

ostream &SummaryExprIntFromBytesAux::write_spec(ostream &os) const {
  auto startIndex = memExpr.byteExpr.byteIndex;

  if (byteCount == 1) {
    os << "z3.Extract(" << startIndex * 8 + 7 << ", " << startIndex * 8 << ", "
       << memExpr.byteExpr.expr << ")";
    return os;
  }

  os << "z3.Concat(";
  for (int i = 0; i < byteCount; i++, startIndex++) {
    os << "z3.Extract(" << startIndex * 8 + 7 << ", " << startIndex * 8 << ", "
       << memExpr.byteExpr.expr << "),";
  }
  os << ")";

  return os;
}

/************** SummaryExprIntFromBytes ******************/
string SummaryExprIntFromBytes::read_spec(string &ss) {
  auto result = extractNearestBracedExp(0, ss);
  auto str = result.first;

  SummaryExprToken tk1;
  str = tk1.read_spec(str);
  byteCount = stoi(tk1.value_);

  assert(byteCount > 0 &&
         "SummaryExprIntFromBytes::read_spec:: Zero ByteCount");

  // Ignoring ','
  str = str.substr(1);

  str = memExpr.read_spec(str);

  width_ = byteCount * 8;

  return ss.substr(result.second + 1);
}

ostream &SummaryExprIntFromBytes::write_spec(ostream &os) const {
  auto startIndex = memExpr.byteExpr.byteIndex;

  if (byteCount == 1) {
    os << "z3.Extract(" << startIndex * 8 + 7 << ", " << startIndex * 8 << ", "
       << memExpr.byteExpr.expr << ")";
    return os;
  }

  os << "z3.Concat(";
  for (int i = 0; i < byteCount; i++, startIndex++) {
    os << "z3.Extract(" << startIndex * 8 + 7 << ", " << startIndex * 8 << ", "
       << memExpr.byteExpr.expr << "),";
  }
  os << ")";

  return os;
}

/************** SummaryExprCommonMemSyntax ******************/
string SummaryExprCommonMemSyntax::read_spec(string &ss) {
  auto result = extractNearestBracedExp(0, ss);
  auto str = result.first;

  str = byteExpr.read_spec(str);

  return ss.substr(result.second + 1);
}

ostream &SummaryExprCommonMemSyntax::write_spec(ostream &os) const {
  assert(0 && "Should have been printed as part of SummaryExprIntFromBytesAux");
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

/************** SummaryExprUndefMInt ******************/
string SummaryExprUndefMInt::read_spec(string &ss) {
  auto result = extractNearestBracedExp(0, ss);
  width_ = 1;
  return ss.substr(result.second + 1);
}

ostream &SummaryExprUndefMInt::write_spec(ostream &os) const {
  os << "VX_UNDEF_1";
  return os;
}
