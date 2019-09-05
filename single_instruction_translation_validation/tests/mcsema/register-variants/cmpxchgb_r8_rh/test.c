void leaf() {
  __asm__("cmpxchgb %bh, %cl");
  }

void main() {
  leaf();
}