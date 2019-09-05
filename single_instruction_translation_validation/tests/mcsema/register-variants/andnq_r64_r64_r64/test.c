void leaf() {
  __asm__("andnq %rdx, %rcx, %rbx");
  }

void main() {
  leaf();
}