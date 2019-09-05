void leaf() {
  __asm__("adcq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}