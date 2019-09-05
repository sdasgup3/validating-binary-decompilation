void leaf() {
  __asm__("sbbb %bh, %ah");
  }

void main() {
  leaf();
}