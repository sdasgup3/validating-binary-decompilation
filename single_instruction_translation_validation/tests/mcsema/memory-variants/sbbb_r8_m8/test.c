void leaf() {
  __asm__("sbbb -4(%rbp), %bl");
  }

void main() {
  leaf();
}