void leaf() {
  __asm__("bextrq %rdx, %rcx, %rbx");
  }

void main() {
  leaf();
}