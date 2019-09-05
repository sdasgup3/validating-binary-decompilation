void leaf() {
  __asm__("sbbb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}