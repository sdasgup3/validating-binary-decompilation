void leaf() {
  __asm__("pextq %rdx, %rcx, %rbx");
  }

void main() {
  leaf();
}