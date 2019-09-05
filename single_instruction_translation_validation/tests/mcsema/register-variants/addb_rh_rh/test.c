void leaf() {
  __asm__("addb %bh, %ah");
  }

void main() {
  leaf();
}