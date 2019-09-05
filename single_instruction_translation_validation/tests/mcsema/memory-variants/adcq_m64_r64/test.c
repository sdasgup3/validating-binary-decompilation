void leaf() {
  __asm__("adcq %rcx, -4(%rbp)");
  }

void main() {
  leaf();
}