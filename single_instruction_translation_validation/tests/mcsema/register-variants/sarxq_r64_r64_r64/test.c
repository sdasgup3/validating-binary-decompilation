void leaf() {
  __asm__("sarxq %rdx, %rcx, %rbx");
  }

void main() {
  leaf();
}