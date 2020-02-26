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
class SummaryExprXorBool;
class SummaryExprNotBool;
class SummaryExprEq;
class SummaryExprOr;
class SummaryExprPlus;
class SummaryExprMul;
class SummaryExprMinus;
class SummaryExprSignedDiv;
class SummaryExprUnSignedDiv;
class SummaryExprSignExtend;
class SummaryExprSignMod;
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
class SummaryExprXorMInt;
class SummaryExprExtractMInt;
class SummaryExprMiMInt;
class SummaryExprConcatMInt;
class SummaryExprAddMInt;
class SummaryExprSubMInt;
class SummaryExprMulMInt;
class SummaryExprAndMInt;
class SummaryExprOrMInt;
class SummaryExprIfThenElseMInt;
class SummaryExprEqMInt;
class SummaryExprPtr;
class SummaryExprIntFromBytesAux;
class SummaryExprIntFromBytes;
class SummaryExprCommonMemSyntax;
class SummaryExprUndefMInt;
class SummaryExprUndefBool;
class SummaryExprBitwidthMInt;
class SummaryExprShiftRight;
class SummaryExprSignShiftRight;
class SummaryExprShiftLeft;
class SummaryExprLogicalRightShiftMInt;
class SummaryExprLeftShiftMInt;
class SummaryExprUValueMInt;
class SummaryExprSValueMInt;
class SummaryExprZeroExtend;
class SummaryExprSignExtend;

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
    MUL,
    MINUS,
    SHIFT_RIGHT,
    SHIFT_LEFT,
    SIGN_DIV,
    UNSIGN_DIV,
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
    XOR_BOOL,
    XOR_MINT,
    EXTRACT_MINT,
    MI_MINT,
    CONCAT_MINT,
    ADD_MINT,
    MUL_MINT,
    AND_MINT,
    SUB_MINT,
    OR_MINT,
    IF_THEN_ELSE_MINT,
    EQ_MINT,
    PTR,
    SYMLOC,
    BYTE,
    X86BYTE,
    TOKEN,
    INT_FROM_BYTES_AUX,
    INT_FROM_BYTES,
    COMMON_MEM_SYNTAX,
    UNDEF_MINT,
    BITWIDTH_MINT,
    LOGICAL_RIGHT_SHIFT_MINT,
    LEFT_SHIFT_MINT,
    UVALUE_MINT,
    SVALUE_MINT,
    SIGN_EXTEND,
    ZERO_EXTEND
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
  // uint16_t width_ = 0;
  // uint16_t promoted_from_width_ = uint16_t(-1);
  // bool is_promoted = false;
  // SummaryExpr::Type type_ = SummaryExpr::NONE;
  SummaryExprAbstract();
  uint16_t width_;

  uint16_t promoted_from_width_;
  bool is_promoted;

  uint16_t demoted_from_width_;
  bool is_demoted;

  SummaryExpr::Type type_;

  ostream &write_promoted_value_spec(ostream &os) const;

  virtual string read_spec(string &is);
  virtual ostream &write_spec(ostream &os) const;
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
  void deriveComponentWidths();
  virtual bool checkComponentWidths();
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
  void deriveComponentWidths();
  virtual bool checkComponentWidths();
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
  void deriveComponentWidths();
  virtual bool checkComponentWidths();
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprTernop &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprTernop &op) {
  return op.read_spec(os);
}

/********************************************************
********************  Misc Operators  *******************
*********************************************************/

/************** SummaryExprAnd ******************/
class SummaryExprAnd : public SummaryExprBinop {
  friend class SummaryExpr;

public:
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

/************** SummaryExprShiftLeft ******************/
class SummaryExprShiftLeft : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::SHIFT_LEFT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprShiftLeft &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprShiftLeft &op) {
  return op.read_spec(os);
}

/************** SummaryExprMul ******************/
class SummaryExprMul : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::MUL; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprMul &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprMul &op) {
  return op.read_spec(os);
}

/************** SummaryExprMinus ******************/
class SummaryExprMinus : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::MINUS; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprMinus &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprMinus &op) {
  return op.read_spec(os);
}

/************** SummaryExprSignedDiv ******************/
class SummaryExprSignedDiv : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::SIGN_DIV; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprSignedDiv &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprSignedDiv &op) {
  return op.read_spec(os);
}

/************** SummaryExprUnSignedDiv ******************/
class SummaryExprUnSignedDiv : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::UNSIGN_DIV; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprUnSignedDiv &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprUnSignedDiv &op) {
  return op.read_spec(os);
}

/************** SummaryExprLeftShift ******************/
class SummaryExprLeftShift : public SummaryExprBinop {
  friend class SummaryExpr;

public:
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

/************** SummaryExprIfThenElse ******************/
class SummaryExprIfThenElse : public SummaryExprTernop {
  friend class SummaryExpr;

public:
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

/************** SummaryExprZeroExtend ******************/
class SummaryExprZeroExtend : public SummaryExprTernop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::ZERO_EXTEND; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprZeroExtend &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprZeroExtend &op) {
  return op.read_spec(os);
}

/************** SummaryExprSignExtend ******************/
class SummaryExprSignExtend : public SummaryExprTernop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::SIGN_EXTEND; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprSignExtend &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprSignExtend &op) {
  return op.read_spec(os);
}

/********************************************************
********************  MInt Operators  *******************
*********************************************************/

/************** SummaryExprXorMInt ******************/
class SummaryExprXorMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::XOR_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprXorMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprXorMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprExtractMInt ******************/
class SummaryExprExtractMInt : public SummaryExprTernop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::EXTRACT_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprExtractMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprExtractMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprMiMInt ******************/
class SummaryExprMiMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::MI_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprMiMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprMiMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprConcatMInt ******************/
class SummaryExprConcatMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::CONCAT_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprConcatMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprConcatMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprAddMInt ******************/
class SummaryExprAddMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::ADD_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprAddMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprAddMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprLogicalRightShiftMInt ******************/
class SummaryExprLogicalRightShiftMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const {
    return SummaryExpr::Type::LOGICAL_RIGHT_SHIFT_MINT;
  }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os,
                           const SummaryExprLogicalRightShiftMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprLogicalRightShiftMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprLeftShiftMInt ******************/
class SummaryExprLeftShiftMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::LEFT_SHIFT_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprLeftShiftMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprLeftShiftMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprSubMInt ******************/
class SummaryExprSubMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::SUB_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprSubMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprSubMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprMulMInt ******************/
class SummaryExprMulMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::MUL_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprMulMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprMulMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprAndMInt ******************/
class SummaryExprAndMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::AND_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprAndMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprAndMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprOrMInt ******************/
class SummaryExprOrMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::OR_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprOrMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprOrMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprIfThenElseMInt ******************/
class SummaryExprIfThenElseMInt : public SummaryExprTernop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const {
    return SummaryExpr::Type::IF_THEN_ELSE_MINT;
  }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprIfThenElseMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprIfThenElseMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprEqMInt ******************/
class SummaryExprEqMInt : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::EQ_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprEqMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprEqMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprBitwidthMInt ******************/
class SummaryExprBitwidthMInt : public SummaryExprUnop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::BITWIDTH_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprBitwidthMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprBitwidthMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprUValueMInt ******************/
class SummaryExprUValueMInt : public SummaryExprUnop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::UVALUE_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprUValueMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprUValueMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprSValueMInt ******************/
class SummaryExprSValueMInt : public SummaryExprUnop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::SVALUE_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprSValueMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprSValueMInt &op) {
  return op.read_spec(os);
}

/********************************************************
********************  Misc Operators  *******************
*********************************************************/

/************** SummaryExprPtr ******************/
class SummaryExprPtr : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::PTR; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprPtr &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprPtr &op) {
  return op.read_spec(os);
}

/********************************************************
********************  Int Bool Operators  *******************
*********************************************************/

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
class SummaryExprNotBool : public SummaryExprUnop {
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

/************** SummaryExprXorBool ******************/
class SummaryExprXorBool : public SummaryExprBinop {
  friend class SummaryExpr;

public:
  SummaryExpr::Type type() const { return SummaryExpr::Type::XOR_BOOL; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprXorBool &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprXorBool &op) {
  return op.read_spec(os);
}

/********************************************************
********************  Leaf Operators  *******************
*********************************************************/

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
class SymLoc : public SummaryExprAbstract {
public:
  int locId;
  size_t offset;

  SymLoc() {}
  SummaryExpr::Type type() const { return SummaryExpr::Type::SYMLOC; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SymLoc &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SymLoc &op) { return op.read_spec(os); }

/************** ByteExpr ******************/
class ByteExpr : public SummaryExprAbstract {
public:
  int byteIndex;
  int numBytes;
  SummaryExpr expr;

  ByteExpr() {}
  SummaryExpr::Type type() const { return SummaryExpr::Type::BYTE; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const ByteExpr &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, ByteExpr &op) { return op.read_spec(os); }

/************** X86ByteExpr ******************/
class X86ByteExpr : public SummaryExprAbstract {
public:
  int byteIndex;
  SummaryExpr expr;

  X86ByteExpr() {}
  SummaryExpr::Type type() const { return SummaryExpr::Type::X86BYTE; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const X86ByteExpr &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, X86ByteExpr &op) {
  return op.read_spec(os);
}

/************** SummaryExprCommonMemSyntax ******************/
class SummaryExprCommonMemSyntax : public SummaryExprAbstract {
public:
  ByteExpr byteExpr;

  SummaryExprCommonMemSyntax() {}
  SummaryExpr::Type type() const {
    return SummaryExpr::Type::COMMON_MEM_SYNTAX;
  }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprCommonMemSyntax &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprCommonMemSyntax &op) {
  return op.read_spec(os);
}

/************** SummaryExprIntFromBytesAux ******************/
class SummaryExprIntFromBytesAux : public SummaryExprAbstract {
public:
  int byteCount;
  SummaryExprCommonMemSyntax memExpr;

  SummaryExprIntFromBytesAux() {}
  SummaryExpr::Type type() const {
    return SummaryExpr::Type::INT_FROM_BYTES_AUX;
  }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprIntFromBytesAux &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprIntFromBytesAux &op) {
  return op.read_spec(os);
}

/************** SummaryExprIntFromBytes ******************/
class SummaryExprIntFromBytes : public SummaryExprAbstract {
public:
  int byteCount;
  SummaryExprCommonMemSyntax memExpr;

  SummaryExprIntFromBytes() {}
  SummaryExpr::Type type() const { return SummaryExpr::Type::INT_FROM_BYTES; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprIntFromBytes &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprIntFromBytes &op) {
  return op.read_spec(os);
}

/************** SummaryExprUndefMInt ******************/
class SummaryExprUndefMInt : public SummaryExprAbstract {
public:
  SummaryExprUndefMInt() {}
  SummaryExpr::Type type() const { return SummaryExpr::Type::UNDEF_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprUndefMInt &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprUndefMInt &op) {
  return op.read_spec(os);
}

/************** SummaryExprUndefBool ******************/
class SummaryExprUndefBool : public SummaryExprAbstract {
public:
  SummaryExprUndefBool() {}
  SummaryExpr::Type type() const { return SummaryExpr::Type::UNDEF_MINT; }
  string read_spec(string &is);
  ostream &write_spec(ostream &os) const;
};

inline ostream &operator<<(ostream &os, const SummaryExprUndefBool &op) {
  return op.write_spec(os);
}

inline string operator>>(string &os, SummaryExprUndefBool &op) {
  return op.read_spec(os);
}

#endif
