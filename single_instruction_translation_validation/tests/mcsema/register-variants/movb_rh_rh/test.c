void leaf() {
  __asm__("movb %bh, %ah");
  }

void main() {
  leaf();
}