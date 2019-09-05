void leaf() {
  __asm__("adcq %rcx, %rbx");
  }

void main() {
  leaf();
}