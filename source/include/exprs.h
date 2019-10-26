#ifndef __EXPRS_H__
#define __EXPRS_H__

#include <fstream>
#include <map>
#include <regex>
#include <set>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

// Forward declarations
class SummaryExprAbstract;
class SummaryExprAnd;
class SummaryExprAndBool;
class SummaryExprOrBool;
class SummaryExprNotBool;
class SummaryExprEq;
class SummaryExprOr;
class SummaryExprPlus;
class SummaryExprShiftRight;
class SummaryExprShiftLeft;
class SummaryExprSignDiv;
class SummaryExprSignExtend;
class SummaryExprSignMod;
class SummaryExprSignShiftRight;
class SummaryExprUMinus;
class SummaryExprVar;
class SummaryExprXor;
class SummaryExprMod;
class SummaryExprToken;
class SummaryExpr;
class SummaryExprLT;
class SummaryExprLTE;
class SummaryExprGT;
class SummaryExprGTE;

// Utility function declarations
typedef pair<string, size_t> stringLocPair;
stringLocPair extractNearestBracedExp(size_t pos, const string &str);
vector<std::string> split(const std::string &str, char delim);
string trim(const std::string &str, char delim = ' ');

/***********************************************************
********************* Summary Expressions ******************
***********************************************************/

/************** SummaryExpr ******************/
class SummaryExpr {

public:
  enum Type {
    NONE,
    AND,
    EQ,
    OR,
    PLUS,
    SHIFT_RIGHT,
    SHIFT_LEFT,
    SIGN_DIV,
    SIGN_MOD,
    SIGN_SHIFT_RIGHT,
    U_MINUS,
    VAR,
    XOR,
    IF_THEN_ELSE,
    MOD,
    LT,
    LTE,
    GT,
    GTE,
    AND_BOOL,
    OR_BOOL,
    NOT_BOOL,
    TOKEN
  };

  /** Get the type of this summary expression */
  Type type() const;

  /** The width of this expr (number of bits). */
  uint16_t width() const;

  /** Accesses the underlying object */
  SummaryExprAbstract *ptr;
  SummaryExpr() { ptr = nullptr; };
  SummaryExpr(const string &str);
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExpr &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExpr &op) {
  return op.read_spec(os);
}

/************** SummaryExprAbstract ******************/
class SummaryExprAbstract {
  friend class SummaryExpr;

public:
  // virtual SummaryExpr::Type type() const = 0;

  // virtual ~SummaryExprAbstract() = 0;

  uint16_t width_ = 0;
  SummaryExpr::Type type_ = SummaryExpr::NONE;

  virtual string read_spec(string &is) = 0;
  virtual ostream &write_spec(ostream &os) const = 0;
};

string dispatchSummaryExpr(string &is, SummaryExprAbstract **ptr);

/************** SummaryExprBinop ******************/
class SummaryExprBinop : public SummaryExprAbstract {
  friend class SummaryExpr;

public:
  SummaryExprBinop();
  SummaryExprAbstract *a_;
  SummaryExprAbstract *b_;

  string read_spec(string &is);
  void type_check();
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprBinop &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprBinop &op) {
  return op.read_spec(os);
}

/************** SummaryExprUnop ******************/
class SummaryExprUnop : public SummaryExprAbstract {
  friend class SummaryExpr;

public:
  SummaryExprUnop();
  SummaryExprAbstract *a_;

  string read_spec(string &is);
  void type_check();
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprUnop &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprUnop &op) {
  return op.read_spec(os);
}

/************** SummaryExprTernop ******************/
class SummaryExprTernop : public SummaryExprAbstract {
  friend class SummaryExpr;

public:
  SummaryExprTernop();
  SummaryExprAbstract *a_;
  SummaryExprAbstract *b_;
  SummaryExprAbstract *c_;

  string read_spec(string &is);
  void type_check();
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprTernop &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprTernop &op) {
  return op.read_spec(os);
}

/************** SummaryExprEq ******************/
class SummaryExprEq : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::EQ; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprEq &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprEq &op) {
  return op.read_spec(os);
}

/************** SummaryExprAnd ******************/
class SummaryExprAnd : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  // SummaryExprAnd(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::AND; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprAnd &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprAnd &op) {
  return op.read_spec(os);
}

/************** SummaryExprOr ******************/
class SummaryExprOr : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  // SummaryExprOr(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::OR; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprOr &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprOr &op) {
  return op.read_spec(os);
}

/************** SummaryExprXor ******************/
class SummaryExprXor : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  // SummaryExprXor(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::XOR; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprXor &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprXor &op) {
  return op.read_spec(os);
}

/************** SummaryExprMod ******************/
class SummaryExprMod : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  // SummaryExprMod(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::MOD; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprMod &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprMod &op) {
  return op.read_spec(os);
}

/************** SummaryExprPlus ******************/
class SummaryExprPlus : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  // SummaryExprPlus(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::PLUS; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprPlus &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprPlus &op) {
  return op.read_spec(os);
}

/************** SummaryExprSignDiv ******************/
class SummaryExprSignDiv : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  // SummaryExprSignDiv(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::SIGN_DIV; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprSignDiv &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprSignDiv &op) {
  return op.read_spec(os);
}

/************** SummaryExprLeftShift ******************/
class SummaryExprLeftShift : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  // SummaryExprLeftShift(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::SHIFT_LEFT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprLeftShift &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprLeftShift &op) {
  return op.read_spec(os);
}

/************** SummaryExprRightShift ******************/
class SummaryExprRightShift : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  // SummaryExprRightShift(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::SHIFT_RIGHT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprRightShift &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprRightShift &op) {
  return op.read_spec(os);
}

/************** SummaryExprSignRightShift ******************/
class SummaryExprSignRightShift : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  // SummaryExprSignRightShift(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::SIGN_SHIFT_RIGHT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprSignRightShift &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprSignRightShift &op) {
  return op.read_spec(os);
}

/************** SummaryExprLT ******************/
class SummaryExprLT : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::LT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprLT &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprLT &op) {
  return op.read_spec(os);
}

/************** SummaryExprGT ******************/
class SummaryExprGT : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::GT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprGT &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprGT &op) {
  return op.read_spec(os);
}

/************** SummaryExprLTE ******************/
class SummaryExprLTE : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::LTE; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprLTE &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprLTE &op) {
  return op.read_spec(os);
}

/************** SummaryExprGTE ******************/
class SummaryExprGTE : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::GTE; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprGTE &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprGTE &op) {
  return op.read_spec(os);
}

/************** SummaryExprIfThenElse ******************/
class SummaryExprIfThenElse : public SummaryExprTernop {
  friend class SummaryExpr;

public:
  // SummaryExprIfThenElse(const string &str);

  SummaryExpr::Type type() const { return SummaryExpr::Type::IF_THEN_ELSE; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprIfThenElse &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprIfThenElse &op) {
  return op.read_spec(os);
}

/************** SummaryExprVar ******************/
class SummaryExprVar : public SummaryExprAbstract {
  friend class SummaryExpr;

public:
  string varName;

  void deriveWidth();
  SummaryExpr::Type type() const { return SummaryExpr::Type::VAR; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprVar &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprVar &op) {
  return op.read_spec(os);
}

/************** SummaryExprToken ******************/
class SummaryExprToken : public SummaryExprAbstract {
public:
  string value_;
  string type_to_ignore;
  friend class SummaryExpr;

public:
  SummaryExprToken();
  SummaryExpr::Type type() const { return SummaryExpr::Type::TOKEN; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprToken &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprToken &op) {
  return op.read_spec(os);
}

/************** SymLoc ******************/
class SymLoc {
public:
  int locId;
  size_t offset;

  SymLoc() {}
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SymLoc &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SymLoc &op) { return op.read_spec(os); }

/************** SymLocValue ******************/
class SymLocValue {
public:
  int byteIndex;
  int numBytes;
  SummaryExpr expr;

  SymLocValue() {}
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SymLocValue &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SymLocValue &op) {
  return op.read_spec(os);
}

/************** SummaryExprAndBool ******************/
class SummaryExprAndBool : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::AND_BOOL; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprAndBool &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprAndBool &op) {
  return op.read_spec(os);
}

/************** SummaryExprOrBool ******************/
class SummaryExprOrBool : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::OR_BOOL; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprOrBool &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprOrBool &op) {
  return op.read_spec(os);
}

/************** SummaryExprNotBool ******************/
class SummaryExprNotBool : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::NOT_BOOL; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprNotBool &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprNotBool &op) {
  return op.read_spec(os);
}

#endif
