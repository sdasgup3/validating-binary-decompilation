void leaf() {
  __asm__("xchgb %bh, %ah");
  }

void main() {
  leaf();
}