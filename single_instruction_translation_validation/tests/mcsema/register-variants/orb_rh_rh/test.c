void leaf() {
  __asm__("orb %bh, %ah");
  }

void main() {
  leaf();
}