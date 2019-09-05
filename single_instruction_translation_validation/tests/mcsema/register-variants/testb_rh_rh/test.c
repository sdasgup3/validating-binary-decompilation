void leaf() {
  __asm__("testb %bh, %ah");
  }

void main() {
  leaf();
}