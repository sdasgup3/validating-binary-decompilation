void leaf() {
  __asm__("sbbb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}