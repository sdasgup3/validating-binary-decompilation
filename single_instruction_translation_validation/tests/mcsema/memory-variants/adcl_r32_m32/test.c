void leaf() {
  __asm__("adcl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}