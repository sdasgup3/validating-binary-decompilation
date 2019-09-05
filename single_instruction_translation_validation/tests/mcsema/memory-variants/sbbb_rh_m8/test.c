void leaf() {
  __asm__("sbbb -4(%rbp), %ah");
  }

void main() {
  leaf();
}