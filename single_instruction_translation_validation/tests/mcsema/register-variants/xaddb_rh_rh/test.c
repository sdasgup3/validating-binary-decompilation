void leaf() {
  __asm__("xaddb %bh, %ah");
  }

void main() {
  leaf();
}