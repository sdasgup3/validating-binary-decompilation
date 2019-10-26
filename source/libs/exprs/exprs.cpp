#include "exprs.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include <regex>

using namespace cpputil;

/************** SymLocValue ******************/
string SymLocValue::read_spec(string &str) {

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

  return str;
}

ostream &SymLocValue::write_spec(ostream &os) const {
  if (numBytes == 1) {
    os << "z3.Extract(" << 0 << ", " << 0 << ", " << expr << ")";
  } else {
    os << "z3.Extract(" << byteIndex * 8 + 7 << ", " << byteIndex * 8 << ", "
       << expr << ")";
  }
  return os;
}

/************** SymLoc ******************/
string SymLoc::read_spec(string &str) {

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
  return str;
}

ostream &SymLoc::write_spec(ostream &os) const {
  os << "<SymLoc>" << endl;
  os << "\tlocId: " << locId << endl;
  os << "\tOffset: " << offset << endl;
  return os;
}

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

  } else if (regex_search(str, m, regex("^#token"))) {
    *ptr = new SummaryExprToken();
    return (*ptr)->read_spec(str);

  } else if (regex_search(str, m, regex("^`#if_#then_#else_#fi_K-EQUAL`"))) {
    *ptr = new SummaryExprIfThenElse();
    return (*ptr)->read_spec(str);

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

  } else if (regex_search(str, m, regex("^V_"))) {
    *ptr = new SummaryExprVar();
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

void SummaryExprBinop::type_check() {
  if (a_->width_ != 0 && b_->width_ != 0) {
    if (a_->width_ != b_->width_) {
      Console::error(1) << "Width mismatch: " << type_ << "\n";
      exit(1);
    }
  } else if (a_->width_ != 0) {
    b_->width_ = a_->width_;
  } else if (b_->width_ != 0) {
    a_->width_ = a_->width_;
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

  type_check();

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

void SummaryExprUnop::type_check() {
  if (a_->width_ == 0) {
    Console::error(1) << "Zero Width Binop: " << type_ << "\n";
    exit(1);
  }
}

string SummaryExprUnop::read_spec(string &str) {
  str = dispatchSummaryExpr(str, &a_);

  type_check();
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

void SummaryExprTernop::type_check() {
  if (b_->width_ != 0 && c_->width_ != 0) {
    if (b_->width_ != c_->width_) {
      Console::error(1) << "Width mismatch: " << type_ << "\n";
      exit(1);
    }
  } else if (b_->width_ != 0) {
    c_->width_ = b_->width_;
  } else if (c_->width_ != 0) {
    b_->width_ = c_->width_;
  } else {
    // b_ == nullptr and c_ == nullptr
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

  type_check();

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

/************** SummaryExprEq ******************/
string SummaryExprEq::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
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

/************** SummaryExprAnd ******************/
string SummaryExprAnd::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
  type_ = type();
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
  width_ = a_->width_;
  return str.substr(result.second + 1);
}

ostream &SummaryExprSignRightShift::write_spec(ostream &os) const {
  os << "SignRightShift(";
  SummaryExprBinop::write_spec(os);
  os << ")";
  return os;
}

/************** SummaryExprLT ******************/
string SummaryExprLT::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
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

/************** SummaryExprIfThenElse ******************/
string SummaryExprIfThenElse::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprTernop::read_spec(result.first);
  type_ = type();
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

/************** SummaryExprVar ******************/
void SummaryExprVar::deriveWidth() {
  assert(varName != "" && "VarName empty!!");

  if (varName == "V_RAX" || varName == "V_RBX" || varName == "V_RCX" ||
      varName == "V_RDX" || varName == "V_RSI" || varName == "V_RDI" ||
      varName == "V_RSP" || varName == "V_RBP") {
    width_ = 64;
  } else if (varName == "V_CF" || varName == "V_PF" || varName == "V_ZF" ||
             varName == "V_SF" || varName == "V_OF" || varName == "V_AF" ||
             varName == "V_DF") {
    width_ = 8;
  } else if (varName.find("YMM") != string::npos) {
    width_ = 256;
  } else {
    Console::error(1) << "Unknown var: " << varName;
  }
}

string SummaryExprVar::read_spec(string &str) {
  size_t pos = str.find(',');

  if (pos == string::npos) {
    varName = str;
    deriveWidth();
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
  value_ = trim(trim(tokens[0], '"'), ' ');
  type_to_ignore = trim(trim(tokens[1], '"'), ' ');

  if (type_to_ignore == "Bool") {
    width_ = 1;
  } else if (type_to_ignore == "Int") {
    // to be inferred
    width_ = 0;
  } else {
    Console::error(1) << "Unknown Type of Token!";
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

/************** SummaryExprAndBool ******************/
string SummaryExprAndBool::read_spec(string &str) {
  auto result = extractNearestBracedExp(0, str);
  SummaryExprBinop::read_spec(result.first);
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
  SummaryExprBinop::read_spec(result.first);
  type_ = type();
  width_ = 1;
  return str.substr(result.second + 1);
}

ostream &SummaryExprNotBool::write_spec(ostream &os) const {
  os << "z3.Not(";
  a_->write_spec(os);
  os << ", ";
  b_->write_spec(os);
  os << ")";
  return os;
}
