void leaf() {
  __asm__("btrq %rcx, %rbx");
  }

void main() {
  leaf();
}