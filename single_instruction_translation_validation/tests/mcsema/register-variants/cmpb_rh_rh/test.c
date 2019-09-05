void leaf() {
  __asm__("cmpb %bh, %ah");
  }

void main() {
  leaf();
}