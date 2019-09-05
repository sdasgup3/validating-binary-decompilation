void leaf() {
  __asm__("adcl %ecx, -4(%rbp)");
  }

void main() {
  leaf();
}