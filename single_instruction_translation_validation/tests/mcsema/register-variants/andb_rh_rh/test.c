void leaf() {
  __asm__("andb %bh, %ah");
  }

void main() {
  leaf();
}