void leaf() {
  __asm__("cmpxchgb %ch, %bh");
  }

void main() {
  leaf();
}