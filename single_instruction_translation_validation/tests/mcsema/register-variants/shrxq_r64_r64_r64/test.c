void leaf() {
  __asm__("shrxq %rdx, %rcx, %rbx");
  }

void main() {
  leaf();
}