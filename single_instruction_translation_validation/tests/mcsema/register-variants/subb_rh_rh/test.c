void leaf() {
  __asm__("subb %bh, %ah");
  }

void main() {
  leaf();
}