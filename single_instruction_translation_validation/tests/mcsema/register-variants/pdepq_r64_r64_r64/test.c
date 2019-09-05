void leaf() {
  __asm__("pdepq %rdx, %rcx, %rbx");
  }

void main() {
  leaf();
}